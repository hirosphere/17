
#include <xc.h>
#include "App.h"

//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 1000Hz
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
	LED_Ctr += 33;
	// LATA = LED_Ctr >> 10;
	
	App_Step();
}

