
//	Prime   //

typedef	unsigned char	uint8;
typedef	unsigned short	uint16;
typedef	unsigned long	uint32;

typedef	unsigned char	bool;

#define	false	0
#define	true	1
#define	Off		0
#define	On		1

#define	null	( ( void * ) 0 )

#define	PPS_out_CCP1	0x0C
#define	CCP_mode_PWM		0x0F

//   Chip   //

void Chip_Init( void );
void ADC_Go( void );
uint8 ADC_Res( void );

//	Voix, Seq, Con

uint8 Noise_Step( uint8 bits );

void Voix_Set_Dir( bool reverse );
void Voix_Out( uint16 voltage );
void Voix_Set_Speed( uint16 speed );
uint16 Voix_int_Step( void );


//   App   //

void  App_Init( void );
void  App_Step( void );

