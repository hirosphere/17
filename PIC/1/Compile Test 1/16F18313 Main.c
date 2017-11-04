//	Config 1

#pragma config  FEXTOSC = OFF
#pragma config  RSTOSC = HFINT32
#pragma config  CLKOUTEN = OFF
#pragma config  CSWEN = ON
#pragma config  FCMEN = OFF

//	Config 2

#pragma config  MCLRE = OFF
#pragma config  PWRTE =	ON
#pragma config  WDTE = OFF
#pragma config  LPBOREN = OFF
#pragma config  BOREN = ON
#pragma config  BORV = LOW
#pragma config  PPS1WAY = OFF
#pragma config  STVREN = ON
#pragma config  DEBUG = OFF

//	Config 3

#pragma config  WRT = OFF
#pragma config  LVP = OFF

//	Config 4

#pragma config  CP = OFF
#pragma config  CPD = OFF


//	

typedef	unsigned char	uint8;
typedef	unsigned short	uint16;
typedef	unsigned long	uint32;

typedef	unsigned char	bool;

#define	false	0
#define	true	1
#define	Off		0
#define	On		1

//	

#include <xc.h>

void wait_ms( uint16 time );


//	




typedef struct
{
	uint16		Phase, Freq;
} Osc;

Osc	Osc_1;

uint16 Osc_1_Phase;
uint16 Osc_1_Freq = 440;
uint8 Osc_1_Width = 128;
uint8 Osc_1_Amp = 128;

void Test_1( Osc * this )
{
	this->Phase += this->Freq;
}

uint16 acc = 0;
uint8 phase;

void Test_2( void )
{
	Osc_1_Phase += Osc_1_Freq;
	
	phase = Osc_1_Phase >> 8;
	
	//if( ( Osc_1_Phase >> 8 ) >= Osc_1_Width )
	
	// acc += Osc_1_Amp;
}


void main( void )
{
	OSCFRQbits.HFFRQ = 7;			//	32MHz
	
	//  Port  //
	
	ANSELA	= 0b000000;
	TRISA		= 0b000011;
	LATA		= 0b100000;
	
	Test_1( & Osc_1 );
	Test_2();
	
	while( true )
	{
		wait_ms( 1000 );
	}
	
}

//



void wait_ms( uint16 time )
{
	while( -- time )
	{
		uint8 c = 100;
		while( -- c ) ;
	}
}










