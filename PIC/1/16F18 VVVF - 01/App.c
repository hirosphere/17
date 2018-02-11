#include <xc.h>
#include "App.h"

void Train_Step( void );

void Vol_1_Change( void );

//		App

uint8	App_Tempo = 108;
uint16	App_Tempo_Phase = 0;
uint8	App_Noise = 0;

uint8	App_Output[ 2 ] ;

uint8  Vol_1 = 0;
uint8  Vol_1_s = 0;
const uint8  Vol_margin = 2;


void App_Init( void )
{
	Voix_Set_Speed( 100 * 256 );
	Train_Set_Acc( 0x0010, true );
}

void App_Step( void )
{
	static uint8 phase = 0;
	
	App_Noise = Noise_Step( 4 ) & 0xFF;
	App_Tempo_Phase += App_Tempo;
	
	if( App_Tempo_Phase >= 2500 )
	{
		App_Tempo_Phase -= 2500;
	}
	
	uint8 vol;
	switch( phase ++ )
	{
		case 0:
			ADC_Go();
			break;
		
		case 1:
			Train_Step();
			break;
		
		case 19:
			phase = 0;
			break;
	}
}

uint16 down_table[ 6 ] =
{
	600 * 256 / 500,
	100 * 256 / 500,
	50 * 256 / 500,
	30 * 256 / 500,
	10 * 256 / 500,
	1
};

uint16 up_table[ 7 ] =
{
	5 * 256 / 500,
	10 * 256 / 500,
	20 * 256 / 500,
	30 * 256 / 500,
	50 * 256 / 500,
	100 * 256 / 500,
	330 * 256 / 500,
};

void Vol_1_Change( void )
{
	uint8 s = Vol_1 >> 4;
	if( s == Vol_1_s )		return;
	Vol_1_s = s;
	
	if( s > 8 )
	{
		Train_Set_Acc( up_table[  s - 9  ], true );
	}
	else if( s < 2 )
	{
	}
	else if( s < 8 )
	{
		Train_Set_Acc( down_table[  s - 2  ], false );
	}
	
}

//	Train	//

uint16 Train_Speed = 0x100;
uint16 Train_Acc = 0;
bool Train_Up = 0;

void Train_Set_Acc( uint16 acc, bool up )
{
	Train_Acc = acc;
	Train_Up = up;
}

void Train_Step( void )
{
	uint16 s = Train_Speed;
	
	if( Train_Up )
	{
		if( Train_Speed < ( 0xFFFF - Train_Acc )  )  Train_Speed += Train_Acc;
		else  Train_Speed = 0xFFFF;
	}
	else
	{
		if( Train_Speed > Train_Acc )  Train_Speed -= Train_Acc;
		else  Train_Speed = 0;
	}
	
	Voix_Set_Speed( Train_Speed );
}


