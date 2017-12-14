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


//#define  Muse_HappyEnd
//#define  Muse_BehindTheMask
//#define  Muse_TongPoo

#define  Muse_Gimn_SSSR


#include  ".\\Melody\\RS Happy.c"
#include  ".\\Melody\\Anthem.c"

//uint8 *  Seq_A_1 = Song_TongPoo_1;
//uint8 *  Seq_A_2 = Song_TongPoo_2;
//uint8  Seq_A_1[] = Song_HappyEnd_1;
//uint8  Seq_A_2[] = Song_HappyEnd_2;
uint8 *  Seq_A_1 = Song_Gimn_SSSR_1;
uint8 *  Seq_A_2 = Song_Gimn_SSSR_2;


//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );

uint16	LED_Ctr = 0;

void MidTick_Step( void )
{
	LED_Ctr += 32;
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


