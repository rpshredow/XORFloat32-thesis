///////////////////////////////////////
/// 640x480 version!
/// test VGA with hardware video input copy to VGA
// compile with
// gcc pio_test_2.c -o pio2 
///////////////////////////////////////
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/ipc.h> 
#include <sys/shm.h> 
#include <sys/mman.h>
#include <sys/time.h> 
#include <math.h> 
#include <time.h>

// main bus; PIO
#define FPGA_AXI_BASE 	0xC0000000
#define FPGA_AXI_SPAN   0x00001000
// main axi bus base
void *h2p_virtual_base;
volatile unsigned int * axi_pio_ptr = NULL ;
volatile unsigned int * axi_pio_read_ptr = NULL ;

// lw bus; PIO
#define FPGA_LW_BASE 	0xff200000
#define FPGA_LW_SPAN	0x00001000
// the light weight bus base
void *h2p_lw_virtual_base;
// HPS_to_FPGA FIFO status address = 0
volatile unsigned int * lw_pio_ptr = NULL ;
volatile unsigned int * lw_pio_read_ptr = NULL ;

// read offset is 0x10 for both busses
// remember that eaxh axi master bus needs unique address
#define FPGA_PIO_READ	0x10
#define FPGA_PIO_WRITE	0x00

// /dev/mem file id
int fd;	

typedef union { 
    float f; 
    struct
    { 
        // Order is important. 
        // Here the members of the union data structure use the same memory (32 bits). 
        // The ordering is taken from the LSB to the MSB. 
        unsigned int mantissa : 23; 
        unsigned int exponent : 8; 
        unsigned int sign : 1; 
  
    } raw; 
} myfloat; 

float sigmoid(float x) {
     float exp_value;
     float return_value;

     /*** Exponential calculation ***/
     exp_value = exp((float) -x);

     /*** Final sigmoid value ***/
     return_value = 1 / (1 + exp_value);

     return return_value;
}

unsigned int floatToInt(myfloat var) 
{ 
    return ((var.raw.sign << 31) | (var.raw.mantissa) | (var.raw.exponent << 23));
}

unsigned int bitExtracted(unsigned int number, int k, int p) 
{ 
    return (((1 << k) - 1) & (number >> (p - 1))); 
} 

float intToFloat(unsigned int num) {
    int s = 0;
    
    unsigned int temp = (num >> 31);
    
    if(temp == 1) {
        num = num - pow(2,31);
        s = 1;
    }
    
    unsigned int exponent = bitExtracted(num, 31, 24);
    unsigned int mantissa = bitExtracted(num, 23, 1);

    int e = exponent - 127;
    float m = (float) (mantissa / pow(2,23));
    
    return pow(-1, s) * pow(2,e) * (m+1);
}

void hpstofpga(int addr, int reg, int data) {
    *(lw_pio_ptr) = ((addr) | (reg << 20) | (1 << 30));
    *(axi_pio_ptr) = data;
}

int fpgatohps(int addr, int reg) {
    *(lw_pio_ptr) = (addr | (reg << 20));
    return *(axi_pio_read_ptr) ;
}
	
int main(void)
{

	// Declare volatile pointers to I/O registers (volatile 	
	// means that IO load and store instructions will be used 	
	// to access these pointer locations,  
  
	// === get FPGA addresses ==================
    // Open /dev/mem
	if( ( fd = open( "/dev/mem", ( O_RDWR | O_SYNC ) ) ) == -1 ) 	{
		printf( "ERROR: could not open \"/dev/mem\"...\n" );
		return( 1 );
	}
    
	//============================================
    // get virtual addr that maps to physical
	// for light weight AXI bus
	h2p_lw_virtual_base = mmap( NULL, FPGA_LW_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, FPGA_LW_BASE );	
	if( h2p_lw_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap1() failed...\n" );
		close( fd );
		return(1);
	}
	// Get the addresses that map to the two parallel ports on the light-weight bus
	lw_pio_ptr = (unsigned int *)(h2p_lw_virtual_base);
	lw_pio_read_ptr = (unsigned int *)(h2p_lw_virtual_base + FPGA_PIO_READ);
	
	//============================================
	
	// ===========================================
	// get virtual address for
	// AXI bus addr 
	h2p_virtual_base = mmap( NULL, FPGA_AXI_SPAN, ( PROT_READ | PROT_WRITE ), MAP_SHARED, fd, FPGA_AXI_BASE); 	
	if( h2p_virtual_base == MAP_FAILED ) {
		printf( "ERROR: mmap3() failed...\n" );
		close( fd );
		return(1);
	}
    // Get the addresses that map to the two parallel ports on the AXI bus
	axi_pio_ptr =(unsigned int *)(h2p_virtual_base);
	axi_pio_read_ptr =(unsigned int *)(h2p_virtual_base + FPGA_PIO_READ);
	//============================================
    
	myfloat in;
	unsigned int inputInt;

	while(1) {

		printf("Enter Number: ");
		scanf("%f", &in.f);
		inputInt = floatToInt(in);
		hpstofpga(0, 0, inputInt);

		printf("Enter Number: ");
		scanf("%f", &in.f);
		inputInt = floatToInt(in);
		hpstofpga(1, 0, inputInt);

		sleep(1);

		unsigned int dataOut = fpgatohps(0, 0);
		float output = intToFloat(dataOut);
		printf("Output: %d\n", dataOut);

		dataOut = fpgatohps(1, 0);
		printf("Count: %d\n", dataOut); 

	}

    return 0;
} // end main


/// /// ///////////////////////////////////// 
/// end /////////////////////////////////////
