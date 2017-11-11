
#include <xc.h>
#include "App.h"

//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );

uint16	LED_Ctr = 0;

void main( void )
{
	App_Init();
	Chip_Init();
	
	
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
	
	App_Step();
}


void interrupt ISR( void )
{
	if( TMR2IF )
	{
		TMR2IF = Off;
		
		if( -- MidTick_DivCtr == 0 )
		{
			MidTick_DivCtr = 64;
			MidTick_Task ++;
		}
		
		CCPR1= Voix_int_Step();
	}
}

