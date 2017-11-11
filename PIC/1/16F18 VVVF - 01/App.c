#include <xc.h>
#include "App.h"


//		App

uint8	App_Tempo = 108;
uint16	App_Tempo_Phase = 0;
uint8	App_Noise = 0;

uint8	App_Output[ 2 ] ;

uint8  Vol_1 = 0;
const uint8  Vol_margin = 2;


void App_Init( void )
{
}

void App_Step( void )
{
	App_Tempo_Phase += App_Tempo;
	
	if( App_Tempo_Phase >= 2500 )
	{
		App_Tempo_Phase -= 2500;
	}
	
	uint8 vol = ADC_Res();
	if( vol > ( Vol_1 + Vol_margin ) )
	{
		Vol_1 = vol - Vol_margin;
	}
	if( vol < Vol_1 )
	{
		Vol_1 = vol;
	}
	
	//  Vo_1.Freq = ( ( uint16 ) Vol_1 & 0xF8 ) << 4;
	//  Vo_1.Width = Vol_1 & 0xFF;
	
	App_Noise = Noise_Step( 4 ) & 0xFF;
	
	ADC_Go();
}

