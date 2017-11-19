#include <xc.h>
#include "App.h"

uint32 Noise_Seed = 0x1;

uint8 Noise_Step( uint8 bits )
{
	while( -- bits )
	{
		Noise_Seed <<= 1;
		bool  a = ( Noise_Seed & 0x100000 ) > 0;
		bool  b = ( Noise_Seed & 0x400000 ) > 0;
		
		if(  ( !a && b ) || ( a && !b )  )	Noise_Seed |= 1;
	}
	
	return Noise_Seed;
}

//		Voix

#define	Voix_Freq( freq )	( ( freq ) * 65536 / 32000 )

struct
{
	unsigned  Run : 1;
} Vo;

uint16  Vo_DC = 0;

uint16	Vo_1_Freq = 0x500;
uint16	Vo_2_Freq = 0x180;

uint8 Vo_1_Amp = 0xFF;
uint8 Vo_2_Amp = 0xFF;

uint8 Vo_1_Width = 0;
uint8 Vo_2_Width = 0;

uint16 Vo_1_Phase = 0;
uint16 Vo_2_Phase = 0;

uint8	Vo_WT_1[ 8 ] ;

void Voix_Set_Speed( uint16 speed )
{
	Vo.Run = speed > 0;
	
	if( Vo.Run )
	{
		uint16 bias = 0x200;
		uint16 power = ( speed >> 4 ) + bias;
		
		if( power > 0x0FFF )  power = 0x0FFF; 
		
		//
		
		// Vo_DC = ( power >> 3 ) + ( power >> 4 );
		Vo_DC = ( power >> 3 );
		
		Vo_1_Width = ( power >> 4 );
		Vo_2_Width = ( power >> 4 );
		
		if( speed >= 0x0A00 )
		{
			Vo_1_Freq = ( speed >> 6 );
			Vo_2_Freq = ( speed >> 6 ) + ( speed >> 4 );
		}
		else
		{
			Vo_1_Freq = Voix_Freq( 200 );
			Vo_2_Freq = Voix_Freq( 400 );
		}
	}
	else
	{
		Vo_DC = 0x0060;
	}
}

uint16 Voix_int_Step( void )
{
	uint16 acc = Vo_DC;
	
	if( Vo.Run )
	{
		Vo_1_Phase += Vo_1_Freq;
		Vo_2_Phase += Vo_2_Freq;
		
		acc += ( ( ( Vo_1_Phase >> 8 ) < Vo_1_Width ) ? Vo_1_Amp : 0 );
		acc += ( ( ( Vo_2_Phase >> 8 ) < Vo_2_Width ) ? Vo_2_Amp : 0 );
	}
	
	return acc;
}

uint16 Voix_int_Step_( void )
{
	
	uint16 rt = 0;
	//Vo_1_Phase += 550;
	
	#asm
		
		clrf	(?_Voix_int_Step)
		clrf	(?_Voix_int_Step+1)
		
		movlb 0	; select bank0
		
		movf	(_Vo_1_Freq),w
		addwf	(_Vo_1_Phase),f
		movf	(_Vo_1_Freq+1),w
		addwfc	(_Vo_1_Phase+1),f
		
		movf	(_Vo_1_Phase+1),w
		addwf	(?_Voix_int_Step),f
		
		movf	(_Vo_2_Freq),w
		addwf	(_Vo_2_Phase),f
		movf	(_Vo_2_Freq+1),w
		addwfc	(_Vo_2_Phase+1),f
		
		movf	(_Vo_2_Phase+1),w
		addwf	(?_Voix_int_Step),f
		movlw	0
		addwfc	(?_Voix_int_Step+1),f
		
		return;
	#endasm
	
	return 0;
}

