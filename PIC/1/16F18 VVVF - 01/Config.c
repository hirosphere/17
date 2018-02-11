
#include <xc.h>
#include "App.h"

#ifdef _16F18313

/*
	PIC16F18313		VVVF - 01
	
	Pin		Port	Type	Func
	
	1				Pow	VDD
	2		RA5	Out	Sound F
	3		RA4	Out	Sound R
	4		RA3	ICSP	VPP
	
	8				Pow	VSS
	7		RA0	ICSP	DAT
	6		RA1	ICSP	CLK
	5		RA2	I/O 	PiAN RX/TX
	
	
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

void Chip_Init( void )
{
	//  Chip  //
	
	OSCFRQbits.HFFRQ = 6;			//	32MHz
	
	//  Port  //
	
	ANSELA	= 0b000000;
	TRISA		= 0b000111;
	LATA		= 0b000000;
	
	RXPPS = PPS_in_RA2;
	RA5PPS = PPS_out_CCP1;
	
	//  ADC  //
	
	ADCON1 =
		6  <<		_ADCON1_ADCS_POSN		//	FOSC / 64
	;
	
	//  Timer, PWM  //
	
	PR2	= 250 - 1;			//  32kHz	= 8MHz / 250
	TMR2	= 0;
	T2CON =
		0	<< _T2CON_T2CKPS_POSN 	|
		0	<< _T2CON_T2OUTPS_POSN	|
		On 	<< _T2CON_TMR2ON_POSN
	;
	
	CCPR1 = 0x100;
	
	CCP1CON =
		On						<< _CCP1CON_CCP1EN_POSN		|
		CCP_mode_PWM		<< _CCP1CON_CCP1MODE_POSN
	;
	
	//  ESUART
	
	SP1BRGL = 4;		//  500kHz
	
	TX1STA =
		On  <<  _TX1STA_BRGH_POSITION
	;
	
	RC1STA =
		On  <<  _RC1STA_SPEN_POSITION  |
		On  <<  _RC1STA_CREN_POSITION
	;
	
	//	Interrupt
	
	PIE1 =
		On 	<< _PIE1_TMR2IE_POSN
	;
	INTCON =
		On		<< _INTCON_PEIE_POSN	|
		On		<< _INTCON_GIE_POSN
	;
}


extern uint8	MidTick_DivCtr = 1;
extern uint8	MidTick_Task = 0;

bool updown = false;

void interrupt ISR( void )
{
	if( TMR2IF )
	{
		TMR2IF = Off;
		
		if( -- MidTick_DivCtr == 0 )
		{
			MidTick_DivCtr = 32;
			MidTick_Task ++;
		}
		
		CCPR1= Voix_int_Step();
	}
	
	if( RCIF )
	{
		RCIF = Off;
		updown = ! updown;
		
		Train_Set_Acc( 0x30, updown );
	}
}

void ADC_Go()
{
	ADCON0 =
		On  <<  _ADCON0_ADON_POSN	|
		On  <<  _ADCON0_ADGO_POSN	|
		2  <<  _ADCON0_CHS_POSN				//	RA2
	;
}

uint8 ADC_Res( void )
{
	return  ADRESH;
}


#endif

