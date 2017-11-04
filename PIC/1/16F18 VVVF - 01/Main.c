/*
	PIC16F18313		Melody	< Happy End >
	
	Pin		Type	Func
	
	1	Pow	VCC
	2	Out	Piyo LED 2
	3	Out	Piyo LED 1
	4	ICSP	VPP
	
	8	Pow	VSS
	7	ICSP	DAT
	6	ICSP	CLK
	5	Out	Sound
	
	
*/

//	

#include <xc.h>
#include "App.h"

//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );

uint16	LED_Ctr = 0;

void MidTick_Step( void )
{
	LED_Ctr += 131;
	LATA = LED_Ctr >> 10;
	
	Con_Step();
}


extern  Voix  Vo_1,  Vo_2;

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
		
		uint16  acc = 0;
		acc += Voix_int_Step( & Vo_1 );
		acc += Voix_int_Step( & Vo_2 );
		CCPR1 = acc;
	}
}


uint8	Seq_A_1[] =
{
	n_trans(  2,  5  ),
	
	n_(  6,  9  ),	n_(  6,  16  ),	n_(  6,  16  ),	n_(  6,  14  ),
	n_(  6,  14  ),	n_(  6,  16  ),	n_(  6,  12  ),	n_(  6,  11  ),
	n_(  5,  11  ),	n_(  5,  12  ),	n_(  6,  14  ),	n_(  6,  12  ),	n_(  6,  11  ),
	n_(  7,  9  ),	n_(  7,  9  ),
	
	n_(  6,  9  ),	n_(  6,  16  ),	n_(  6,  16  ),	n_(  6,  14  ),
	n_(  6,  14  ),	n_(  6,  16  ),	n_(  6,  12  ),	n_(  6,  11  ),
	n_(  5,  11  ),	n_(  5,  12  ),	n_(  6,  14  ),	n_(  6,  12  ),	n_(  6,  11  ),
	n_(  7,  9  ),	n_(  7,  9  ),
	
	n_(  6,  9  ),	n_(  6,  21  ),	n_(  6,  21  ),	n_(  6,  19  ),
	n_(  6,  19  ),	n_(  6,  21  ),	n_(  6,  17  ),	n_(  6,  16  ),
	n_(  5,  16  ),	n_(  5,  17  ),	n_(  6,  19  ),	n_(  6,  16  ),	n_(  6,  14  ),
	n_(  7,  14  ),	n_(  7,  13  ),
	
	n_(  6,  14  ),	n_(  6,  17  ),	n_(  5,  17  ),	n_(  5,  16  ),	n_(  6,  14  ),
	n_(  6,  12  ),	n_(  6,  16  ),	n_(  6,  16  ),	n_(  6,  12  ),
	n_(  5,  11  ),	n_(  5,  12  ),	n_(  6,  14  ),	n_(  6,  12  ),	n_(  6,  11  ),
	n_(  7,  9  ),	n_(  7,  9  ),
	
	n_end
};

uint8	Seq_A_2[] =
{
	n_trans(  0,  5  ),

	n_(  7,  21  ),	n_(  7,  17  ),
	n_(  7,  19  ),	n_(  7,  16  ),
	n_(  7,  17  ),	n_(  7,  14  ),
	n_(  6,  12  ),	n_(  6,  11  ),	n_(  6,  9  ),	n_(  6,  16  ),
	
	n_(  7,  21  ),	n_(  7,  17  ),
	n_(  7,  19  ),	n_(  7,  16  ),
	n_(  7,  17  ),	n_(  7,  14  ),
	n_(  6,  12  ),	n_(  6,  11  ),	n_(  6,  9  ),	n_(  6,  16  ),
	
	n_(  7,  26  ),	n_(  7,  23  ),
	n_(  7,  24  ),	n_(  7,  21  ),
	n_(  7,  22  ),	n_(  7,  19  ),
	n_(  6,  21  ),	n_(  6,  13  ),	n_(  6,  21  ),	n_(  6,  25  ),
	
	n_(  7,  26  ),	n_(  7,  20  ),
	n_(  7,  21  ),	n_(  7,  17  ),
	n_(  7,  14  ),	n_(  7,  16  ),
	n_(  7,  17  ),	n_(  6,  14  ),	n_(  6,  17  ),
	
	n_end
};


void main( void )
{
	Con_Init( Seq_A_1, Seq_A_2 );
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


