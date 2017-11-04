
#include <xc.h>
#include "App.h"


uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );


void main( void )
{
	//  Instances  //
	
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
		
		// uint16  acc = 0;
		// acc += Voix_int_Step( & Vo_1 );
		// acc += Voix_int_Step( & Vo_2 );
		// CCPR1 = acc;
	}
}
