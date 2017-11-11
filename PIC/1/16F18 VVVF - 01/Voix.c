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

uint16	Vo_1_Freq = Voix_Freq( 99 );
uint16	Vo_2_Freq = Voix_Freq( 528 );

uint16 Vo_1_Phase = 0;
uint16 Vo_2_Phase = 0;

uint8	Vo_WT_1[ 8 ] ;

void Voix_Set_Speed( uint16 speed )
{
	Vo_1_Freq = speed >> 6;
	Vo_2_Freq = ( speed >> 6 ) + ( speed >> 4 );
}

uint16 Voix_int_Step( void )
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

