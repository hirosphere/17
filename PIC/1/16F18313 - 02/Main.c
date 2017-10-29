/*
	PIC16F18313
	
	Pin		Type	Func
	
	1	Pow	VCC
	2	Out	Piyo LED 2
	3	Out	Piyo LED 1
	4	
	
	8	Pow	VSS
	7	ICSP	DAT
	6	ICSP	CLK
	5	Out	Sound
	
	
*/

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

#define	PPS_out_CCP1	0x0C
#define	CCP_mode_PWM		0x0F

//

typedef struct
{
	uint16		Freq;
	uint8		Width;
	uint8		Amp;
	
	uint16		Phase;
}
  Voix;

void Voix_Init( Voix * this );
uint8 Voix_int_Step( Voix * this );

//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );
uint16	LED_Ctr = 0;

void main( void )
{
	OSCFRQbits.HFFRQ = 7;			//	32MHz
	
	//  Port  //
	
	ANSELA	= 0b000000;
	TRISA		= 0b000011;
	LATA		= 0b100000;
	
	RA4PPS = PPS_out_CCP1;
	
	//  Timer, PWM  //
	
	PR2	= 250 - 1;			//  32kHz	= 8MHz / 250
	TMR2	= 0;
	T2CON =
		0	<< _T2CON_T2CKPS_POSITION 	|
		0	<< _T2CON_T2OUTPS_POSITION	|
		On 	<< _T2CON_TMR2ON_POSITION
	;
	
	CCPR1 = 0x080;
	
	CCP1CON =
		On						<< _CCP1CON_CCP1EN_POSITION		|
		CCP_mode_PWM		<< _CCP1CON_CCP1MODE_POSITION
	;
	
	//	Interrupt
	
	PIE1 =
		On 	<< _PIE1_TMR2IE_POSITION
	;
	INTCON =
		On		<< _INTCON_PEIE_POSITION	|
		On		<< _INTCON_GIE_POSITION
	;
	
	while( true )
	{
		if( MidTick_Task )
		{
			MidTick_Task --;
			MidTick_Step();
		}
	}
	
}

void MidTick_Step( void )
{
	LED_Ctr += 131;
	LATA = LED_Ctr >> 10;
}


void interrupt ISR( void )
{
	if( TMR2IF )
	{
		if( -- MidTick_DivCtr == 0 )
		{
			MidTick_DivCtr = 64;
			MidTick_Task ++;
			
			
		}
		TMR2IF = Off;
	}
}


//		Voix

#define	Voix_Freq( freq )	( ( freq ) * 65536 / 32000 )

void Voix_Init( Voix * this )
{
	this->Freq = Voix_Freq( 440 );
	this->Width = 100;
	this->Amp = 120;
	this->Phase = 0;
}

uint8 Voix_int_Step( Voix * this )
{
	uint8 out = ( this->Phase >> 8 ) < this->Width ?  0  :  this->Amp;
	this->Phase += this->Freq;
	return out;
}










