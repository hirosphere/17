
#include <xc.h>
#include "App.h"

#ifdef _16F18313

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
	TRISA		= 0b000011;
	LATA		= 0b110000;
	
	RA2PPS = PPS_out_CCP1;
	
	//  Timer, PWM  //
	
	PR2	= 250 - 1;			//  32kHz	= 8MHz / 250
	TMR2	= 0;
	T2CON =
		0	<< _T2CON_T2CKPS_POSITION 	|
		0	<< _T2CON_T2OUTPS_POSITION	|
		On 	<< _T2CON_TMR2ON_POSITION
	;
	
	CCPR1 = 0x00;
	
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
}


#endif

