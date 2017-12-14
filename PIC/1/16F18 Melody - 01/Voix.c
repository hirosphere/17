#include <xc.h>
#include "App.h"

uint32 Noise_Seed = 0x1;

void Noise_Step( uint8 bits )
{
	while( -- bits )
	{
		Noise_Seed <<= 1;
		bool  a = ( Noise_Seed & 0x100000 ) > 0;
		bool  b = ( Noise_Seed & 0x400000 ) > 0;
		
		if(  ( !a && b ) || ( a && !b )  )	Noise_Seed |= 1;
	}
}

//		Con

uint8	Con_Tempo = 90;
uint16	Con_Tempo_Phase = 0;
uint8	Con_Noise = 0;

uint8	Con_Output[ 2 ] ;

Voix	Vo_1;
Voix	Vo_2;

Seq	Seq_1;
Seq	Seq_2;


void Con_Init( uint8 * seq_1, uint8 * seq_2 )
{
	Seq_Init( & Seq_1, seq_1 );
	Seq_Init( & Seq_2, seq_2 );
	
	Voix_Init( & Vo_1 );
	Voix_Init( & Vo_2 );
}

void Con_Step( void )
{
	Con_Tempo_Phase += Con_Tempo;
	
	if( Con_Tempo_Phase >= 2500 )
	{
		Con_Tempo_Phase -= 2500;
		
		if( Seq_Step( & Seq_1, & Con_Output[ 0 ] ) )
		{
			Voix_Trigger( & Vo_1,  Con_Output[ 0 ] );
		}
		
		if( Seq_Step( & Seq_2, & Con_Output[ 1 ] ) )
		{
			Voix_Trigger( & Vo_2,  Con_Output[ 1 ] );
		}
		
	}
	
	Noise_Step( 4 );
	Con_Noise = Noise_Seed & 0xFF;
	Voix_Step( & Vo_1 );
	Voix_Step( & Vo_2 );
}


//		Seq

void Seq_Init( Seq * this, uint8 * start )
{
	this->Cur = this->Start = start;
	this->Trans = 32;
	this->Time = 1;
}

uint8 Seq_Len_Table[ 8 ] = {  1, 1, 1, 1, 3, 6, 12, 24  };

bool Seq_Step( Seq * this, uint8 * output )
{
	if( -- this->Time > 0 )   return  false;
	
	while( true )
	{
		uint8 data = * ( this->Cur ++ );
		
		//	Note	//
		
		if( data > 0x20 )
		{
			this->Time = Seq_Len_Table[  data >> 5  ];
		
			output[ 0 ] =  this->Trans + ( data & 0x1F );
			return  true;
		}
		
		//	End	//
		
		if(  data == n_end  )
		{
			this->Cur = this->Start;
			continue;
		}
		
		//	Transpose	//
		
		if(  data == 0x01  )
		{
			this->Trans = * this->Cur ++;
			continue;
		}
		
	}
	return  false;
}


//		Voix

#define	Voix_Freq( freq )	( ( freq ) * 65536 / 32000 )
const uint16 Voix_Decay = 0x0078;

const uint16 Voix_Key_Table[ 72 ] =
{
	134, 142, 150, 159, 169, 179, 189, 201, 213, 225, 239, 253,
	268, 284, 301, 319, 338, 358, 379, 401, 425, 451, 477, 506,
	536, 568, 601, 637, 675, 715, 758, 803, 851, 901, 955, 1011,
	1072, 1135, 1203, 1274, 1350, 1430, 1515, 1606, 1701, 1802, 1909, 2023,
	2143, 2271, 2406, 2549, 2700, 2861, 3031, 3211, 3402, 3604, 3819, 4046,
	4286, 4541, 4811, 5098, 5401, 5722, 6062, 6422, 6804, 7209, 7638, 8092
};

void Voix_Init( Voix * this )
{
	this->Freq = 0;
	this->Width = 96;
	this->Env = 0;
	this->Phase = 0;
}

void Voix_Trigger( Voix * this, uint8 key )
{
	this->Freq = Voix_Key_Table[ key - 12 ];
	this->Env = 0xFF00;
}

void Voix_Step( Voix * this )
{
	if( this->Env > Voix_Decay )
		this->Env -= Voix_Decay;
	else
		this->Env = 0;
}

uint8 Voix_int_Step( Voix * this )
{
	uint8 amp = this->Env >> 8;
	uint8 out = ( this->Phase >> 8 ) < this->Width ?  0  :  amp;
	
	//uint8 noise = Con_Noise;
	//uint16 freq = this->Freq + noise;
	uint16 freq = this->Freq;
	this->Phase += freq;
	return out;
}

