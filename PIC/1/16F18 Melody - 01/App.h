
//   Chip   //

void Chip_Init( void );

//	Prime   //

typedef	unsigned char	uint8;
typedef	unsigned short	uint16;
typedef	unsigned long	uint32;

typedef	unsigned char	bool;

#define	null	( ( void * ) 0 )

#define	false	0
#define	true	1
#define	Off		0
#define	On		1

#define	PPS_out_CCP1	0x0C
#define	CCP_mode_PWM		0x0F

//	Voix, Seq, Con

void Noise_Step( uint8 bits );

typedef struct
{
	uint16		Freq;
	uint8		Width;
	uint16		Env;
	uint16		Phase;
}
  Voix;

void Voix_Init( Voix * this );
void Voix_Trigger( Voix * this, uint8 key );
void Voix_Step( Voix * this );
uint8 Voix_int_Step( Voix * this );


//   Seq   //

#define   n_(  len, key  )		(  ( len ) << 5 | ( key )  )
#define   n_trans(  oct,  key  )	0x01, (  (oct) * 12 + (key)  )
#define   n_oct(  oct  )		0x10
#define   n_end		0x00

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

void  Con_Init( uint8 * seq_1, uint8 * seq_2 );
void  Con_Step( void );

