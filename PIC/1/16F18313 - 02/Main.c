/*
	PIC16F18313
	
	Pin		Type	Func
	
	1	Pow	VCC
	2	Out	Piyo LED 2
	3	Out	Piyo LED 1
	4	
	
	8	Pow	VSS
	7	ICSP	DAT
	6	ICSP	CLK
	5	Out	Sound
	
	
*/

//	Config 1

#pragma config  FEXTOSC = OFF
#pragma config  RSTOSC = HFINT32
#pragma config  CLKOUTEN = OFF
#pragma config  CSWEN = ON
#pragma config  FCMEN = OFF

//	Config 2

#pragma config  MCLRE = OFF
#pragma config  PWRTE =	ON
#pragma config  WDTE = OFF
#pragma config  LPBOREN = OFF
#pragma config  BOREN = ON
#pragma config  BORV = LOW
#pragma config  PPS1WAY = OFF
#pragma config  STVREN = ON
#pragma config  DEBUG = OFF

//	Config 3

#pragma config  WRT = OFF
#pragma config  LVP = OFF

//	Config 4

#pragma config  CP = OFF
#pragma config  CPD = OFF


//	

typedef	unsigned char	uint8;
typedef	unsigned short	uint16;
typedef	unsigned long	uint32;

typedef	unsigned char	bool;

#define	false	0
#define	true	1
#define	Off		0
#define	On		1

//	

#include <xc.h>

#define	PPS_out_CCP1	0x0C
#define	CCP_mode_PWM		0x0F

//	Voix, Seq, Con

typedef struct
{
	uint16		Env;
	
	uint16		Freq;
	uint8		Width;
	
	uint16		Phase;
}
  Voix;

void Voix_Init( Voix * this );
void Voix_Trigger( Voix * this, uint8 key );
void Voix_Step( Voix * this );
uint8 Voix_int_Step( Voix * this );

typedef struct
{
	uint8 * Start;
	uint8 * Cur;
	uint8	Trans;
	uint8	Time;
}
  Seq;

void  Seq_Init( Seq * this, uint8 * start );
bool  Seq_Step( Seq * this, uint8 * output );

uint8	Con_Tempo = 105;
uint16	Con_Tempo_Phase = 0;

void  Con_Init( void );
void  Con_Step( void );

//	

uint8	MidTick_DivCtr = 1;		//	32kHz -> 500Hz
uint8	MidTick_Task = 0;
void	MidTick_Step( void );

uint16	LED_Ctr = 0;

Voix	Vo_1;
Voix	Vo_2;

Seq	Seq_1;
Seq	Seq_2;

void main( void )
{
	OSCFRQbits.HFFRQ = 7;			//	32MHz
	
	//  Instances  //
	
	Con_Init();
	
	//  Port  //
	
	ANSELA	= 0b000000;
	TRISA		= 0b000011;
	LATA		= 0b100000;
	
	RA2PPS = PPS_out_CCP1;
	
	//  Timer, PWM  //
	
	PR2	= 250 - 1;			//  32kHz	= 8MHz / 250
	TMR2	= 0;
	T2CON =
		0	<< _T2CON_T2CKPS_POSITION 	|
		1	<< _T2CON_T2OUTPS_POSITION	|
		On 	<< _T2CON_TMR2ON_POSITION
	;
	
	CCPR1 = 0x00;
	
	CCP1CON =
		On						<< _CCP1CON_CCP1EN_POSITION		|
		CCP_mode_PWM		<< _CCP1CON_CCP1MODE_POSITION
	;
	
	//	Interrupt
	
	PIE1 =
		On 	<< _PIE1_TMR2IE_POSITION
	;
	INTCON =
		On		<< _INTCON_PEIE_POSITION	|
		On		<< _INTCON_GIE_POSITION
	;
	
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
	
	Con_Step();
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
		
		uint16  acc = 0;
		acc += Voix_int_Step( & Vo_1 );
		acc += Voix_int_Step( & Vo_2 );
		CCPR1 = acc;
	}
}


//		Con

uint8	Con_Output[ 2 ] ;

#define   n_(  len, key  )		(  ( len ) << 5 | ( key )  )
#define   n_trans(  oct,  key  )	0x01, (  (oct) * 12 + (key)  )
#define   n_oct(  oct  )		0x10
#define   n_end		0x00

uint8	Seq_A_1[] =
{
	n_trans(  2,  8  ),
	
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
	n_trans(  0,  8  ),

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
	n_(  7,  18  ),	n_(  7,  20  ),
	n_(  7,  17  ),	n_(  6,  14  ),	n_(  6,  17  ),
	
	n_end
};

void Con_Init( void )
{
	Seq_Init( & Seq_1, Seq_A_1 );
	Seq_Init( & Seq_2, Seq_A_2 );
	
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
const uint16 Voix_Decay = 0x0080;

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
	this->Width = 100;
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
	uint8 out = ( this->Phase >> 8 ) < this->Width ?  0  :  this->Env >> 8;
	this->Phase += this->Freq;
	return out;
}










