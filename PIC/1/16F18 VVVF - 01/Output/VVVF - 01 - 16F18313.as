opt subtitle "Microchip Technology Omniscient Code Generator v1.41 (Free mode) build 201701250102"

opt pagewidth 120

	opt lm

	processor	16F18313
opt include "C:\Program Files (x86)\Microchip\xc8\v1.41\include\16f18313.cgen.inc"
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTCON equ 0Bh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PORTA equ 0Ch ;# 
# 418 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR0 equ 010h ;# 
# 450 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR1 equ 011h ;# 
# 511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR2 equ 012h ;# 
# 543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR3 equ 013h ;# 
# 581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR4 equ 014h ;# 
# 613 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0L equ 015h ;# 
# 618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0 equ 015h ;# 
# 750 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0H equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR0 equ 016h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON0 equ 017h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON1 equ 018h ;# 
# 1143 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1 equ 019h ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1L equ 019h ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1H equ 01Ah ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CON equ 01Bh ;# 
# 1258 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GCON equ 01Ch ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR2 equ 01Dh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR2 equ 01Eh ;# 
# 1365 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T2CON equ 01Fh ;# 
# 1435 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TRISA equ 08Ch ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE0 equ 090h ;# 
# 1511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE1 equ 091h ;# 
# 1572 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE2 equ 092h ;# 
# 1604 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE3 equ 093h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE4 equ 094h ;# 
# 1674 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WDTCON equ 097h ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRES equ 09Bh ;# 
# 1738 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESL equ 09Bh ;# 
# 1757 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESH equ 09Ch ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON0 equ 09Dh ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON1 equ 09Eh ;# 
# 1932 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADACT equ 09Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
LATA equ 010Ch ;# 
# 2021 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON0 equ 0111h ;# 
# 2072 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON1 equ 0112h ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CMOUT equ 0115h ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BORCON equ 0116h ;# 
# 2192 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FVRCON equ 0117h ;# 
# 2267 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON0 equ 0118h ;# 
# 2322 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON1 equ 0119h ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ANSELA equ 018Ch ;# 
# 2417 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
VREGCON equ 0197h ;# 
# 2437 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1REG equ 0199h ;# 
# 2442 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG equ 0199h ;# 
# 2446 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG1 equ 0199h ;# 
# 2490 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1REG equ 019Ah ;# 
# 2495 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG1 equ 019Ah ;# 
# 2499 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG equ 019Ah ;# 
# 2543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRG equ 019Bh ;# 
# 2549 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGL equ 019Bh ;# 
# 2554 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG equ 019Bh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG1 equ 019Bh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGL equ 019Bh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGH equ 019Ch ;# 
# 2623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH equ 019Ch ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH1 equ 019Ch ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1STA equ 019Dh ;# 
# 2676 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA1 equ 019Dh ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA equ 019Dh ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1STA equ 019Eh ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA1 equ 019Eh ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA equ 019Eh ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUD1CON equ 019Fh ;# 
# 3034 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON1 equ 019Fh ;# 
# 3038 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL1 equ 019Fh ;# 
# 3042 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON equ 019Fh ;# 
# 3046 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL equ 019Fh ;# 
# 3274 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WPUA equ 020Ch ;# 
# 3323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1BUF equ 0211h ;# 
# 3328 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPBUF equ 0211h ;# 
# 3576 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1ADD equ 0212h ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPADD equ 0212h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1MSK equ 0213h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPMSK equ 0213h ;# 
# 4082 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1STAT equ 0214h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPSTAT equ 0214h ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON1 equ 0215h ;# 
# 4208 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON equ 0215h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON1 equ 0215h ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON equ 0215h ;# 
# 4472 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON2 equ 0216h ;# 
# 4477 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON2 equ 0216h ;# 
# 4593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON3 equ 0217h ;# 
# 4598 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON3 equ 0217h ;# 
# 4714 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ODCONA equ 028Ch ;# 
# 4758 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1 equ 0291h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1L equ 0291h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1H equ 0292h ;# 
# 4802 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CON equ 0293h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CAP equ 0294h ;# 
# 4905 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2 equ 0295h ;# 
# 4911 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2L equ 0295h ;# 
# 4930 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2H equ 0296h ;# 
# 4949 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CON equ 0297h ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CAP equ 0298h ;# 
# 5052 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SLRCONA equ 030Ch ;# 
# 5096 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INLVLA equ 038Ch ;# 
# 5145 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAP equ 0391h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAN equ 0392h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAF equ 0393h ;# 
# 5292 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLKRCON equ 039Ah ;# 
# 5356 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCON equ 039Ch ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDSRC equ 039Dh ;# 
# 5440 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARH equ 039Eh ;# 
# 5498 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARL equ 039Fh ;# 
# 5558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACC equ 0498h ;# 
# 5564 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCL equ 0498h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCH equ 0499h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCU equ 049Ah ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INC equ 049Bh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCL equ 049Bh ;# 
# 5648 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCH equ 049Ch ;# 
# 5667 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCU equ 049Dh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CON equ 049Eh ;# 
# 5725 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CLK equ 049Fh ;# 
# 5751 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCL equ 0617h ;# 
# 5786 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCH equ 0618h ;# 
# 5855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON equ 0619h ;# 
# 5860 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON0 equ 0619h ;# 
# 5920 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCL equ 061Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCH equ 061Bh ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON equ 061Ch ;# 
# 6029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON0 equ 061Ch ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CLKCON equ 0691h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DAT equ 0692h ;# 
# 6161 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBR equ 0693h ;# 
# 6264 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBF equ 0694h ;# 
# 6367 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON0 equ 0695h ;# 
# 6467 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON1 equ 0696h ;# 
# 6544 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS0 equ 0697h ;# 
# 6663 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS1 equ 0698h ;# 
# 6695 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1STR equ 0699h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADR equ 0891h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADR equ 0891h ;# 
# 6815 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADR equ 0891h ;# 
# 6821 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRL equ 0891h ;# 
# 6826 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRL equ 0891h ;# 
# 6830 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRL equ 0891h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRH equ 0892h ;# 
# 7227 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRH equ 0892h ;# 
# 7231 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRH equ 0892h ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDAT equ 0893h ;# 
# 7574 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDAT equ 0893h ;# 
# 7578 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDAT equ 0893h ;# 
# 7584 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATL equ 0893h ;# 
# 7589 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATL equ 0893h ;# 
# 7593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATL equ 0893h ;# 
# 7985 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATH equ 0894h ;# 
# 7990 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATH equ 0894h ;# 
# 7994 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATH equ 0894h ;# 
# 8314 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON1 equ 0895h ;# 
# 8319 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON1 equ 0895h ;# 
# 8323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON1 equ 0895h ;# 
# 8502 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON2 equ 0896h ;# 
# 8507 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON2 equ 0896h ;# 
# 8511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON2 equ 0896h ;# 
# 8603 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCON0 equ 089Bh ;# 
# 8659 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD0 equ 0911h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD1 equ 0912h ;# 
# 8741 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD2 equ 0913h ;# 
# 8774 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD3 equ 0914h ;# 
# 8818 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD4 equ 0915h ;# 
# 8845 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD5 equ 0916h ;# 
# 8876 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CPUDOZE equ 0918h ;# 
# 8940 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON1 equ 0919h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON2 equ 091Ah ;# 
# 9078 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON3 equ 091Bh ;# 
# 9122 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCSTAT1 equ 091Ch ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCEN equ 091Dh ;# 
# 9218 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCTUNE equ 091Eh ;# 
# 9275 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCFRQ equ 091Fh ;# 
# 9320 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PPSLOCK equ 0E0Fh ;# 
# 9339 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTPPS equ 0E10h ;# 
# 9390 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CKIPPS equ 0E11h ;# 
# 9441 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CKIPPS equ 0E12h ;# 
# 9492 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GPPS equ 0E13h ;# 
# 9543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1PPS equ 0E14h ;# 
# 9594 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2PPS equ 0E15h ;# 
# 9645 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1PPS equ 0E18h ;# 
# 9696 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN1PPS equ 0E1Ah ;# 
# 9747 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN2PPS equ 0E1Bh ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDMINPPS equ 0E1Ch ;# 
# 9849 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CLKPPS equ 0E20h ;# 
# 9900 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1DATPPS equ 0E21h ;# 
# 9951 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1SSPPS equ 0E22h ;# 
# 10002 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RXPPS equ 0E24h ;# 
# 10053 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXPPS equ 0E25h ;# 
# 10104 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN0PPS equ 0E28h ;# 
# 10155 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN1PPS equ 0E29h ;# 
# 10206 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN2PPS equ 0E2Ah ;# 
# 10257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN3PPS equ 0E2Bh ;# 
# 10308 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA0PPS equ 0E90h ;# 
# 10359 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA1PPS equ 0E91h ;# 
# 10410 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA2PPS equ 0E92h ;# 
# 10461 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA4PPS equ 0E94h ;# 
# 10512 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA5PPS equ 0E95h ;# 
# 10563 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCDATA equ 0F0Fh ;# 
# 10588 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1CON equ 0F10h ;# 
# 10705 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1POL equ 0F11h ;# 
# 10782 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL0 equ 0F12h ;# 
# 10873 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL1 equ 0F13h ;# 
# 10964 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL2 equ 0F14h ;# 
# 11055 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL3 equ 0F15h ;# 
# 11146 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS0 equ 0F16h ;# 
# 11257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS1 equ 0F17h ;# 
# 11368 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS2 equ 0F18h ;# 
# 11479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS3 equ 0F19h ;# 
# 11590 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2CON equ 0F1Ah ;# 
# 11707 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2POL equ 0F1Bh ;# 
# 11784 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL0 equ 0F1Ch ;# 
# 11875 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL1 equ 0F1Dh ;# 
# 11966 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL2 equ 0F1Eh ;# 
# 12057 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL3 equ 0F1Fh ;# 
# 12148 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS0 equ 0F20h ;# 
# 12259 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS1 equ 0F21h ;# 
# 12370 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS2 equ 0F22h ;# 
# 12481 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS3 equ 0F23h ;# 
# 12592 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS_SHAD equ 0FE4h ;# 
# 12623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG_SHAD equ 0FE5h ;# 
# 12642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR_SHAD equ 0FE6h ;# 
# 12661 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH_SHAD equ 0FE7h ;# 
# 12680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L_SHAD equ 0FE8h ;# 
# 12699 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H_SHAD equ 0FE9h ;# 
# 12718 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L_SHAD equ 0FEAh ;# 
# 12737 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H_SHAD equ 0FEBh ;# 
# 12756 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STKPTR equ 0FEDh ;# 
# 12775 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSL equ 0FEEh ;# 
# 12794 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTCON equ 0Bh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PORTA equ 0Ch ;# 
# 418 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR0 equ 010h ;# 
# 450 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR1 equ 011h ;# 
# 511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR2 equ 012h ;# 
# 543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR3 equ 013h ;# 
# 581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR4 equ 014h ;# 
# 613 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0L equ 015h ;# 
# 618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0 equ 015h ;# 
# 750 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0H equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR0 equ 016h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON0 equ 017h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON1 equ 018h ;# 
# 1143 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1 equ 019h ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1L equ 019h ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1H equ 01Ah ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CON equ 01Bh ;# 
# 1258 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GCON equ 01Ch ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR2 equ 01Dh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR2 equ 01Eh ;# 
# 1365 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T2CON equ 01Fh ;# 
# 1435 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TRISA equ 08Ch ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE0 equ 090h ;# 
# 1511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE1 equ 091h ;# 
# 1572 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE2 equ 092h ;# 
# 1604 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE3 equ 093h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE4 equ 094h ;# 
# 1674 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WDTCON equ 097h ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRES equ 09Bh ;# 
# 1738 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESL equ 09Bh ;# 
# 1757 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESH equ 09Ch ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON0 equ 09Dh ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON1 equ 09Eh ;# 
# 1932 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADACT equ 09Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
LATA equ 010Ch ;# 
# 2021 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON0 equ 0111h ;# 
# 2072 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON1 equ 0112h ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CMOUT equ 0115h ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BORCON equ 0116h ;# 
# 2192 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FVRCON equ 0117h ;# 
# 2267 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON0 equ 0118h ;# 
# 2322 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON1 equ 0119h ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ANSELA equ 018Ch ;# 
# 2417 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
VREGCON equ 0197h ;# 
# 2437 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1REG equ 0199h ;# 
# 2442 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG equ 0199h ;# 
# 2446 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG1 equ 0199h ;# 
# 2490 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1REG equ 019Ah ;# 
# 2495 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG1 equ 019Ah ;# 
# 2499 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG equ 019Ah ;# 
# 2543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRG equ 019Bh ;# 
# 2549 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGL equ 019Bh ;# 
# 2554 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG equ 019Bh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG1 equ 019Bh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGL equ 019Bh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGH equ 019Ch ;# 
# 2623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH equ 019Ch ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH1 equ 019Ch ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1STA equ 019Dh ;# 
# 2676 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA1 equ 019Dh ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA equ 019Dh ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1STA equ 019Eh ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA1 equ 019Eh ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA equ 019Eh ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUD1CON equ 019Fh ;# 
# 3034 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON1 equ 019Fh ;# 
# 3038 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL1 equ 019Fh ;# 
# 3042 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON equ 019Fh ;# 
# 3046 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL equ 019Fh ;# 
# 3274 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WPUA equ 020Ch ;# 
# 3323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1BUF equ 0211h ;# 
# 3328 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPBUF equ 0211h ;# 
# 3576 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1ADD equ 0212h ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPADD equ 0212h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1MSK equ 0213h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPMSK equ 0213h ;# 
# 4082 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1STAT equ 0214h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPSTAT equ 0214h ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON1 equ 0215h ;# 
# 4208 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON equ 0215h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON1 equ 0215h ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON equ 0215h ;# 
# 4472 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON2 equ 0216h ;# 
# 4477 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON2 equ 0216h ;# 
# 4593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON3 equ 0217h ;# 
# 4598 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON3 equ 0217h ;# 
# 4714 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ODCONA equ 028Ch ;# 
# 4758 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1 equ 0291h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1L equ 0291h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1H equ 0292h ;# 
# 4802 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CON equ 0293h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CAP equ 0294h ;# 
# 4905 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2 equ 0295h ;# 
# 4911 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2L equ 0295h ;# 
# 4930 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2H equ 0296h ;# 
# 4949 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CON equ 0297h ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CAP equ 0298h ;# 
# 5052 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SLRCONA equ 030Ch ;# 
# 5096 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INLVLA equ 038Ch ;# 
# 5145 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAP equ 0391h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAN equ 0392h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAF equ 0393h ;# 
# 5292 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLKRCON equ 039Ah ;# 
# 5356 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCON equ 039Ch ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDSRC equ 039Dh ;# 
# 5440 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARH equ 039Eh ;# 
# 5498 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARL equ 039Fh ;# 
# 5558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACC equ 0498h ;# 
# 5564 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCL equ 0498h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCH equ 0499h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCU equ 049Ah ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INC equ 049Bh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCL equ 049Bh ;# 
# 5648 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCH equ 049Ch ;# 
# 5667 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCU equ 049Dh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CON equ 049Eh ;# 
# 5725 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CLK equ 049Fh ;# 
# 5751 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCL equ 0617h ;# 
# 5786 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCH equ 0618h ;# 
# 5855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON equ 0619h ;# 
# 5860 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON0 equ 0619h ;# 
# 5920 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCL equ 061Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCH equ 061Bh ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON equ 061Ch ;# 
# 6029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON0 equ 061Ch ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CLKCON equ 0691h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DAT equ 0692h ;# 
# 6161 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBR equ 0693h ;# 
# 6264 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBF equ 0694h ;# 
# 6367 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON0 equ 0695h ;# 
# 6467 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON1 equ 0696h ;# 
# 6544 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS0 equ 0697h ;# 
# 6663 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS1 equ 0698h ;# 
# 6695 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1STR equ 0699h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADR equ 0891h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADR equ 0891h ;# 
# 6815 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADR equ 0891h ;# 
# 6821 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRL equ 0891h ;# 
# 6826 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRL equ 0891h ;# 
# 6830 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRL equ 0891h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRH equ 0892h ;# 
# 7227 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRH equ 0892h ;# 
# 7231 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRH equ 0892h ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDAT equ 0893h ;# 
# 7574 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDAT equ 0893h ;# 
# 7578 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDAT equ 0893h ;# 
# 7584 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATL equ 0893h ;# 
# 7589 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATL equ 0893h ;# 
# 7593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATL equ 0893h ;# 
# 7985 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATH equ 0894h ;# 
# 7990 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATH equ 0894h ;# 
# 7994 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATH equ 0894h ;# 
# 8314 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON1 equ 0895h ;# 
# 8319 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON1 equ 0895h ;# 
# 8323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON1 equ 0895h ;# 
# 8502 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON2 equ 0896h ;# 
# 8507 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON2 equ 0896h ;# 
# 8511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON2 equ 0896h ;# 
# 8603 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCON0 equ 089Bh ;# 
# 8659 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD0 equ 0911h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD1 equ 0912h ;# 
# 8741 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD2 equ 0913h ;# 
# 8774 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD3 equ 0914h ;# 
# 8818 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD4 equ 0915h ;# 
# 8845 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD5 equ 0916h ;# 
# 8876 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CPUDOZE equ 0918h ;# 
# 8940 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON1 equ 0919h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON2 equ 091Ah ;# 
# 9078 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON3 equ 091Bh ;# 
# 9122 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCSTAT1 equ 091Ch ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCEN equ 091Dh ;# 
# 9218 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCTUNE equ 091Eh ;# 
# 9275 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCFRQ equ 091Fh ;# 
# 9320 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PPSLOCK equ 0E0Fh ;# 
# 9339 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTPPS equ 0E10h ;# 
# 9390 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CKIPPS equ 0E11h ;# 
# 9441 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CKIPPS equ 0E12h ;# 
# 9492 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GPPS equ 0E13h ;# 
# 9543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1PPS equ 0E14h ;# 
# 9594 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2PPS equ 0E15h ;# 
# 9645 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1PPS equ 0E18h ;# 
# 9696 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN1PPS equ 0E1Ah ;# 
# 9747 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN2PPS equ 0E1Bh ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDMINPPS equ 0E1Ch ;# 
# 9849 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CLKPPS equ 0E20h ;# 
# 9900 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1DATPPS equ 0E21h ;# 
# 9951 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1SSPPS equ 0E22h ;# 
# 10002 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RXPPS equ 0E24h ;# 
# 10053 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXPPS equ 0E25h ;# 
# 10104 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN0PPS equ 0E28h ;# 
# 10155 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN1PPS equ 0E29h ;# 
# 10206 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN2PPS equ 0E2Ah ;# 
# 10257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN3PPS equ 0E2Bh ;# 
# 10308 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA0PPS equ 0E90h ;# 
# 10359 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA1PPS equ 0E91h ;# 
# 10410 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA2PPS equ 0E92h ;# 
# 10461 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA4PPS equ 0E94h ;# 
# 10512 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA5PPS equ 0E95h ;# 
# 10563 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCDATA equ 0F0Fh ;# 
# 10588 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1CON equ 0F10h ;# 
# 10705 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1POL equ 0F11h ;# 
# 10782 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL0 equ 0F12h ;# 
# 10873 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL1 equ 0F13h ;# 
# 10964 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL2 equ 0F14h ;# 
# 11055 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL3 equ 0F15h ;# 
# 11146 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS0 equ 0F16h ;# 
# 11257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS1 equ 0F17h ;# 
# 11368 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS2 equ 0F18h ;# 
# 11479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS3 equ 0F19h ;# 
# 11590 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2CON equ 0F1Ah ;# 
# 11707 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2POL equ 0F1Bh ;# 
# 11784 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL0 equ 0F1Ch ;# 
# 11875 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL1 equ 0F1Dh ;# 
# 11966 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL2 equ 0F1Eh ;# 
# 12057 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL3 equ 0F1Fh ;# 
# 12148 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS0 equ 0F20h ;# 
# 12259 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS1 equ 0F21h ;# 
# 12370 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS2 equ 0F22h ;# 
# 12481 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS3 equ 0F23h ;# 
# 12592 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS_SHAD equ 0FE4h ;# 
# 12623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG_SHAD equ 0FE5h ;# 
# 12642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR_SHAD equ 0FE6h ;# 
# 12661 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH_SHAD equ 0FE7h ;# 
# 12680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L_SHAD equ 0FE8h ;# 
# 12699 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H_SHAD equ 0FE9h ;# 
# 12718 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L_SHAD equ 0FEAh ;# 
# 12737 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H_SHAD equ 0FEBh ;# 
# 12756 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STKPTR equ 0FEDh ;# 
# 12775 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSL equ 0FEEh ;# 
# 12794 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTCON equ 0Bh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PORTA equ 0Ch ;# 
# 418 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR0 equ 010h ;# 
# 450 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR1 equ 011h ;# 
# 511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR2 equ 012h ;# 
# 543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR3 equ 013h ;# 
# 581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR4 equ 014h ;# 
# 613 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0L equ 015h ;# 
# 618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0 equ 015h ;# 
# 750 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0H equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR0 equ 016h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON0 equ 017h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON1 equ 018h ;# 
# 1143 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1 equ 019h ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1L equ 019h ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1H equ 01Ah ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CON equ 01Bh ;# 
# 1258 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GCON equ 01Ch ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR2 equ 01Dh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR2 equ 01Eh ;# 
# 1365 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T2CON equ 01Fh ;# 
# 1435 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TRISA equ 08Ch ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE0 equ 090h ;# 
# 1511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE1 equ 091h ;# 
# 1572 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE2 equ 092h ;# 
# 1604 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE3 equ 093h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE4 equ 094h ;# 
# 1674 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WDTCON equ 097h ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRES equ 09Bh ;# 
# 1738 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESL equ 09Bh ;# 
# 1757 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESH equ 09Ch ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON0 equ 09Dh ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON1 equ 09Eh ;# 
# 1932 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADACT equ 09Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
LATA equ 010Ch ;# 
# 2021 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON0 equ 0111h ;# 
# 2072 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON1 equ 0112h ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CMOUT equ 0115h ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BORCON equ 0116h ;# 
# 2192 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FVRCON equ 0117h ;# 
# 2267 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON0 equ 0118h ;# 
# 2322 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON1 equ 0119h ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ANSELA equ 018Ch ;# 
# 2417 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
VREGCON equ 0197h ;# 
# 2437 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1REG equ 0199h ;# 
# 2442 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG equ 0199h ;# 
# 2446 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG1 equ 0199h ;# 
# 2490 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1REG equ 019Ah ;# 
# 2495 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG1 equ 019Ah ;# 
# 2499 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG equ 019Ah ;# 
# 2543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRG equ 019Bh ;# 
# 2549 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGL equ 019Bh ;# 
# 2554 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG equ 019Bh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG1 equ 019Bh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGL equ 019Bh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGH equ 019Ch ;# 
# 2623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH equ 019Ch ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH1 equ 019Ch ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1STA equ 019Dh ;# 
# 2676 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA1 equ 019Dh ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA equ 019Dh ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1STA equ 019Eh ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA1 equ 019Eh ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA equ 019Eh ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUD1CON equ 019Fh ;# 
# 3034 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON1 equ 019Fh ;# 
# 3038 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL1 equ 019Fh ;# 
# 3042 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON equ 019Fh ;# 
# 3046 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL equ 019Fh ;# 
# 3274 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WPUA equ 020Ch ;# 
# 3323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1BUF equ 0211h ;# 
# 3328 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPBUF equ 0211h ;# 
# 3576 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1ADD equ 0212h ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPADD equ 0212h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1MSK equ 0213h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPMSK equ 0213h ;# 
# 4082 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1STAT equ 0214h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPSTAT equ 0214h ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON1 equ 0215h ;# 
# 4208 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON equ 0215h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON1 equ 0215h ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON equ 0215h ;# 
# 4472 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON2 equ 0216h ;# 
# 4477 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON2 equ 0216h ;# 
# 4593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON3 equ 0217h ;# 
# 4598 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON3 equ 0217h ;# 
# 4714 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ODCONA equ 028Ch ;# 
# 4758 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1 equ 0291h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1L equ 0291h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1H equ 0292h ;# 
# 4802 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CON equ 0293h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CAP equ 0294h ;# 
# 4905 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2 equ 0295h ;# 
# 4911 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2L equ 0295h ;# 
# 4930 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2H equ 0296h ;# 
# 4949 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CON equ 0297h ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CAP equ 0298h ;# 
# 5052 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SLRCONA equ 030Ch ;# 
# 5096 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INLVLA equ 038Ch ;# 
# 5145 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAP equ 0391h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAN equ 0392h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAF equ 0393h ;# 
# 5292 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLKRCON equ 039Ah ;# 
# 5356 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCON equ 039Ch ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDSRC equ 039Dh ;# 
# 5440 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARH equ 039Eh ;# 
# 5498 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARL equ 039Fh ;# 
# 5558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACC equ 0498h ;# 
# 5564 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCL equ 0498h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCH equ 0499h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCU equ 049Ah ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INC equ 049Bh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCL equ 049Bh ;# 
# 5648 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCH equ 049Ch ;# 
# 5667 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCU equ 049Dh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CON equ 049Eh ;# 
# 5725 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CLK equ 049Fh ;# 
# 5751 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCL equ 0617h ;# 
# 5786 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCH equ 0618h ;# 
# 5855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON equ 0619h ;# 
# 5860 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON0 equ 0619h ;# 
# 5920 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCL equ 061Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCH equ 061Bh ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON equ 061Ch ;# 
# 6029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON0 equ 061Ch ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CLKCON equ 0691h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DAT equ 0692h ;# 
# 6161 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBR equ 0693h ;# 
# 6264 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBF equ 0694h ;# 
# 6367 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON0 equ 0695h ;# 
# 6467 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON1 equ 0696h ;# 
# 6544 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS0 equ 0697h ;# 
# 6663 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS1 equ 0698h ;# 
# 6695 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1STR equ 0699h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADR equ 0891h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADR equ 0891h ;# 
# 6815 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADR equ 0891h ;# 
# 6821 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRL equ 0891h ;# 
# 6826 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRL equ 0891h ;# 
# 6830 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRL equ 0891h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRH equ 0892h ;# 
# 7227 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRH equ 0892h ;# 
# 7231 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRH equ 0892h ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDAT equ 0893h ;# 
# 7574 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDAT equ 0893h ;# 
# 7578 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDAT equ 0893h ;# 
# 7584 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATL equ 0893h ;# 
# 7589 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATL equ 0893h ;# 
# 7593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATL equ 0893h ;# 
# 7985 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATH equ 0894h ;# 
# 7990 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATH equ 0894h ;# 
# 7994 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATH equ 0894h ;# 
# 8314 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON1 equ 0895h ;# 
# 8319 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON1 equ 0895h ;# 
# 8323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON1 equ 0895h ;# 
# 8502 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON2 equ 0896h ;# 
# 8507 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON2 equ 0896h ;# 
# 8511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON2 equ 0896h ;# 
# 8603 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCON0 equ 089Bh ;# 
# 8659 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD0 equ 0911h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD1 equ 0912h ;# 
# 8741 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD2 equ 0913h ;# 
# 8774 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD3 equ 0914h ;# 
# 8818 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD4 equ 0915h ;# 
# 8845 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD5 equ 0916h ;# 
# 8876 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CPUDOZE equ 0918h ;# 
# 8940 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON1 equ 0919h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON2 equ 091Ah ;# 
# 9078 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON3 equ 091Bh ;# 
# 9122 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCSTAT1 equ 091Ch ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCEN equ 091Dh ;# 
# 9218 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCTUNE equ 091Eh ;# 
# 9275 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCFRQ equ 091Fh ;# 
# 9320 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PPSLOCK equ 0E0Fh ;# 
# 9339 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTPPS equ 0E10h ;# 
# 9390 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CKIPPS equ 0E11h ;# 
# 9441 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CKIPPS equ 0E12h ;# 
# 9492 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GPPS equ 0E13h ;# 
# 9543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1PPS equ 0E14h ;# 
# 9594 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2PPS equ 0E15h ;# 
# 9645 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1PPS equ 0E18h ;# 
# 9696 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN1PPS equ 0E1Ah ;# 
# 9747 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN2PPS equ 0E1Bh ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDMINPPS equ 0E1Ch ;# 
# 9849 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CLKPPS equ 0E20h ;# 
# 9900 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1DATPPS equ 0E21h ;# 
# 9951 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1SSPPS equ 0E22h ;# 
# 10002 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RXPPS equ 0E24h ;# 
# 10053 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXPPS equ 0E25h ;# 
# 10104 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN0PPS equ 0E28h ;# 
# 10155 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN1PPS equ 0E29h ;# 
# 10206 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN2PPS equ 0E2Ah ;# 
# 10257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN3PPS equ 0E2Bh ;# 
# 10308 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA0PPS equ 0E90h ;# 
# 10359 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA1PPS equ 0E91h ;# 
# 10410 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA2PPS equ 0E92h ;# 
# 10461 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA4PPS equ 0E94h ;# 
# 10512 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA5PPS equ 0E95h ;# 
# 10563 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCDATA equ 0F0Fh ;# 
# 10588 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1CON equ 0F10h ;# 
# 10705 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1POL equ 0F11h ;# 
# 10782 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL0 equ 0F12h ;# 
# 10873 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL1 equ 0F13h ;# 
# 10964 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL2 equ 0F14h ;# 
# 11055 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL3 equ 0F15h ;# 
# 11146 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS0 equ 0F16h ;# 
# 11257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS1 equ 0F17h ;# 
# 11368 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS2 equ 0F18h ;# 
# 11479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS3 equ 0F19h ;# 
# 11590 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2CON equ 0F1Ah ;# 
# 11707 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2POL equ 0F1Bh ;# 
# 11784 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL0 equ 0F1Ch ;# 
# 11875 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL1 equ 0F1Dh ;# 
# 11966 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL2 equ 0F1Eh ;# 
# 12057 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL3 equ 0F1Fh ;# 
# 12148 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS0 equ 0F20h ;# 
# 12259 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS1 equ 0F21h ;# 
# 12370 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS2 equ 0F22h ;# 
# 12481 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS3 equ 0F23h ;# 
# 12592 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS_SHAD equ 0FE4h ;# 
# 12623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG_SHAD equ 0FE5h ;# 
# 12642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR_SHAD equ 0FE6h ;# 
# 12661 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH_SHAD equ 0FE7h ;# 
# 12680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L_SHAD equ 0FE8h ;# 
# 12699 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H_SHAD equ 0FE9h ;# 
# 12718 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L_SHAD equ 0FEAh ;# 
# 12737 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H_SHAD equ 0FEBh ;# 
# 12756 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STKPTR equ 0FEDh ;# 
# 12775 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSL equ 0FEEh ;# 
# 12794 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS equ 03h ;# 
# 169 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L equ 04h ;# 
# 188 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H equ 05h ;# 
# 210 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L equ 06h ;# 
# 229 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H equ 07h ;# 
# 248 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR equ 08h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG equ 09h ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH equ 0Ah ;# 
# 337 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTCON equ 0Bh ;# 
# 369 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PORTA equ 0Ch ;# 
# 418 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR0 equ 010h ;# 
# 450 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR1 equ 011h ;# 
# 511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR2 equ 012h ;# 
# 543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR3 equ 013h ;# 
# 581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIR4 equ 014h ;# 
# 613 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0L equ 015h ;# 
# 618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0 equ 015h ;# 
# 750 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR0H equ 016h ;# 
# 755 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR0 equ 016h ;# 
# 1003 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON0 equ 017h ;# 
# 1067 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CON1 equ 018h ;# 
# 1143 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1 equ 019h ;# 
# 1149 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1L equ 019h ;# 
# 1168 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR1H equ 01Ah ;# 
# 1187 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CON equ 01Bh ;# 
# 1258 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GCON equ 01Ch ;# 
# 1327 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TMR2 equ 01Dh ;# 
# 1346 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PR2 equ 01Eh ;# 
# 1365 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T2CON equ 01Fh ;# 
# 1435 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TRISA equ 08Ch ;# 
# 1479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE0 equ 090h ;# 
# 1511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE1 equ 091h ;# 
# 1572 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE2 equ 092h ;# 
# 1604 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE3 equ 093h ;# 
# 1642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PIE4 equ 094h ;# 
# 1674 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WDTCON equ 097h ;# 
# 1732 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRES equ 09Bh ;# 
# 1738 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESL equ 09Bh ;# 
# 1757 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADRESH equ 09Ch ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON0 equ 09Dh ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADCON1 equ 09Eh ;# 
# 1932 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ADACT equ 09Fh ;# 
# 1977 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
LATA equ 010Ch ;# 
# 2021 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON0 equ 0111h ;# 
# 2072 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CM1CON1 equ 0112h ;# 
# 2147 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CMOUT equ 0115h ;# 
# 2166 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BORCON equ 0116h ;# 
# 2192 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FVRCON equ 0117h ;# 
# 2267 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON0 equ 0118h ;# 
# 2322 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
DACCON1 equ 0119h ;# 
# 2373 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ANSELA equ 018Ch ;# 
# 2417 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
VREGCON equ 0197h ;# 
# 2437 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1REG equ 0199h ;# 
# 2442 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG equ 0199h ;# 
# 2446 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCREG1 equ 0199h ;# 
# 2490 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1REG equ 019Ah ;# 
# 2495 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG1 equ 019Ah ;# 
# 2499 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXREG equ 019Ah ;# 
# 2543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRG equ 019Bh ;# 
# 2549 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGL equ 019Bh ;# 
# 2554 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG equ 019Bh ;# 
# 2558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRG1 equ 019Bh ;# 
# 2562 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGL equ 019Bh ;# 
# 2618 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SP1BRGH equ 019Ch ;# 
# 2623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH equ 019Ch ;# 
# 2627 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SPBRGH1 equ 019Ch ;# 
# 2671 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RC1STA equ 019Dh ;# 
# 2676 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA1 equ 019Dh ;# 
# 2680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RCSTA equ 019Dh ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TX1STA equ 019Eh ;# 
# 2855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA1 equ 019Eh ;# 
# 2859 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXSTA equ 019Eh ;# 
# 3029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUD1CON equ 019Fh ;# 
# 3034 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON1 equ 019Fh ;# 
# 3038 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL1 equ 019Fh ;# 
# 3042 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCON equ 019Fh ;# 
# 3046 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BAUDCTL equ 019Fh ;# 
# 3274 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WPUA equ 020Ch ;# 
# 3323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1BUF equ 0211h ;# 
# 3328 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPBUF equ 0211h ;# 
# 3576 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1ADD equ 0212h ;# 
# 3581 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPADD equ 0212h ;# 
# 3829 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1MSK equ 0213h ;# 
# 3834 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPMSK equ 0213h ;# 
# 4082 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1STAT equ 0214h ;# 
# 4087 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPSTAT equ 0214h ;# 
# 4203 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON1 equ 0215h ;# 
# 4208 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON equ 0215h ;# 
# 4212 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON1 equ 0215h ;# 
# 4216 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON equ 0215h ;# 
# 4472 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON2 equ 0216h ;# 
# 4477 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON2 equ 0216h ;# 
# 4593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CON3 equ 0217h ;# 
# 4598 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSPCON3 equ 0217h ;# 
# 4714 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
ODCONA equ 028Ch ;# 
# 4758 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1 equ 0291h ;# 
# 4764 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1L equ 0291h ;# 
# 4783 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR1H equ 0292h ;# 
# 4802 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CON equ 0293h ;# 
# 4866 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1CAP equ 0294h ;# 
# 4905 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2 equ 0295h ;# 
# 4911 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2L equ 0295h ;# 
# 4930 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCPR2H equ 0296h ;# 
# 4949 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CON equ 0297h ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2CAP equ 0298h ;# 
# 5052 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SLRCONA equ 030Ch ;# 
# 5096 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INLVLA equ 038Ch ;# 
# 5145 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAP equ 0391h ;# 
# 5194 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAN equ 0392h ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
IOCAF equ 0393h ;# 
# 5292 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLKRCON equ 039Ah ;# 
# 5356 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCON equ 039Ch ;# 
# 5395 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDSRC equ 039Dh ;# 
# 5440 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARH equ 039Eh ;# 
# 5498 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCARL equ 039Fh ;# 
# 5558 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACC equ 0498h ;# 
# 5564 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCL equ 0498h ;# 
# 5583 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCH equ 0499h ;# 
# 5602 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1ACCU equ 049Ah ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INC equ 049Bh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCL equ 049Bh ;# 
# 5648 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCH equ 049Ch ;# 
# 5667 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1INCU equ 049Dh ;# 
# 5686 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CON equ 049Eh ;# 
# 5725 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NCO1CLK equ 049Fh ;# 
# 5751 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCL equ 0617h ;# 
# 5786 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5DCH equ 0618h ;# 
# 5855 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON equ 0619h ;# 
# 5860 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM5CON0 equ 0619h ;# 
# 5920 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCL equ 061Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6DCH equ 061Bh ;# 
# 6024 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON equ 061Ch ;# 
# 6029 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PWM6CON0 equ 061Ch ;# 
# 6089 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CLKCON equ 0691h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DAT equ 0692h ;# 
# 6161 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBR equ 0693h ;# 
# 6264 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1DBF equ 0694h ;# 
# 6367 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON0 equ 0695h ;# 
# 6467 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1CON1 equ 0696h ;# 
# 6544 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS0 equ 0697h ;# 
# 6663 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1AS1 equ 0698h ;# 
# 6695 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1STR equ 0699h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADR equ 0891h ;# 
# 6811 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADR equ 0891h ;# 
# 6815 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADR equ 0891h ;# 
# 6821 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRL equ 0891h ;# 
# 6826 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRL equ 0891h ;# 
# 6830 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRL equ 0891h ;# 
# 7222 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMADRH equ 0892h ;# 
# 7227 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEADRH equ 0892h ;# 
# 7231 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMADRH equ 0892h ;# 
# 7569 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDAT equ 0893h ;# 
# 7574 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDAT equ 0893h ;# 
# 7578 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDAT equ 0893h ;# 
# 7584 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATL equ 0893h ;# 
# 7589 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATL equ 0893h ;# 
# 7593 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATL equ 0893h ;# 
# 7985 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMDATH equ 0894h ;# 
# 7990 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EEDATH equ 0894h ;# 
# 7994 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMDATH equ 0894h ;# 
# 8314 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON1 equ 0895h ;# 
# 8319 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON1 equ 0895h ;# 
# 8323 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON1 equ 0895h ;# 
# 8502 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
NVMCON2 equ 0896h ;# 
# 8507 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
EECON2 equ 0896h ;# 
# 8511 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMCON2 equ 0896h ;# 
# 8603 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCON0 equ 089Bh ;# 
# 8659 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD0 equ 0911h ;# 
# 8703 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD1 equ 0912h ;# 
# 8741 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD2 equ 0913h ;# 
# 8774 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD3 equ 0914h ;# 
# 8818 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD4 equ 0915h ;# 
# 8845 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PMD5 equ 0916h ;# 
# 8876 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CPUDOZE equ 0918h ;# 
# 8940 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON1 equ 0919h ;# 
# 9009 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON2 equ 091Ah ;# 
# 9078 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCCON3 equ 091Bh ;# 
# 9122 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCSTAT1 equ 091Ch ;# 
# 9173 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCEN equ 091Dh ;# 
# 9218 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCTUNE equ 091Eh ;# 
# 9275 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
OSCFRQ equ 091Fh ;# 
# 9320 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PPSLOCK equ 0E0Fh ;# 
# 9339 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
INTPPS equ 0E10h ;# 
# 9390 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T0CKIPPS equ 0E11h ;# 
# 9441 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1CKIPPS equ 0E12h ;# 
# 9492 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
T1GPPS equ 0E13h ;# 
# 9543 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP1PPS equ 0E14h ;# 
# 9594 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CCP2PPS equ 0E15h ;# 
# 9645 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CWG1PPS equ 0E18h ;# 
# 9696 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN1PPS equ 0E1Ah ;# 
# 9747 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDCIN2PPS equ 0E1Bh ;# 
# 9798 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
MDMINPPS equ 0E1Ch ;# 
# 9849 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1CLKPPS equ 0E20h ;# 
# 9900 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1DATPPS equ 0E21h ;# 
# 9951 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
SSP1SSPPS equ 0E22h ;# 
# 10002 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RXPPS equ 0E24h ;# 
# 10053 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TXPPS equ 0E25h ;# 
# 10104 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN0PPS equ 0E28h ;# 
# 10155 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN1PPS equ 0E29h ;# 
# 10206 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN2PPS equ 0E2Ah ;# 
# 10257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCIN3PPS equ 0E2Bh ;# 
# 10308 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA0PPS equ 0E90h ;# 
# 10359 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA1PPS equ 0E91h ;# 
# 10410 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA2PPS equ 0E92h ;# 
# 10461 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA4PPS equ 0E94h ;# 
# 10512 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
RA5PPS equ 0E95h ;# 
# 10563 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLCDATA equ 0F0Fh ;# 
# 10588 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1CON equ 0F10h ;# 
# 10705 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1POL equ 0F11h ;# 
# 10782 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL0 equ 0F12h ;# 
# 10873 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL1 equ 0F13h ;# 
# 10964 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL2 equ 0F14h ;# 
# 11055 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1SEL3 equ 0F15h ;# 
# 11146 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS0 equ 0F16h ;# 
# 11257 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS1 equ 0F17h ;# 
# 11368 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS2 equ 0F18h ;# 
# 11479 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC1GLS3 equ 0F19h ;# 
# 11590 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2CON equ 0F1Ah ;# 
# 11707 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2POL equ 0F1Bh ;# 
# 11784 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL0 equ 0F1Ch ;# 
# 11875 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL1 equ 0F1Dh ;# 
# 11966 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL2 equ 0F1Eh ;# 
# 12057 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2SEL3 equ 0F1Fh ;# 
# 12148 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS0 equ 0F20h ;# 
# 12259 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS1 equ 0F21h ;# 
# 12370 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS2 equ 0F22h ;# 
# 12481 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
CLC2GLS3 equ 0F23h ;# 
# 12592 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STATUS_SHAD equ 0FE4h ;# 
# 12623 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
WREG_SHAD equ 0FE5h ;# 
# 12642 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
BSR_SHAD equ 0FE6h ;# 
# 12661 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
PCLATH_SHAD equ 0FE7h ;# 
# 12680 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0L_SHAD equ 0FE8h ;# 
# 12699 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR0H_SHAD equ 0FE9h ;# 
# 12718 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1L_SHAD equ 0FEAh ;# 
# 12737 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
FSR1H_SHAD equ 0FEBh ;# 
# 12756 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
STKPTR equ 0FEDh ;# 
# 12775 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSL equ 0FEEh ;# 
# 12794 "C:\Program Files (x86)\Microchip\xc8\v1.41\include\pic16f18313.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_App_Init
	FNCALL	_main,_Chip_Init
	FNCALL	_main,_MidTick_Step
	FNCALL	_MidTick_Step,_App_Step
	FNCALL	_App_Step,_ADC_Go
	FNCALL	_App_Step,_ADC_Res
	FNCALL	_App_Step,_Noise_Step
	FNROOT	_main
	FNCALL	_ISR,_Voix_int_Step
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_Vo_1_Freq
	global	_MidTick_DivCtr
	global	_Noise_Seed
	global	_Vo_2_Freq
	global	_App_Tempo
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	24

;initializer for _Vo_1_Freq
	retlw	0CAh
	retlw	0

	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	7

;initializer for _MidTick_DivCtr
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	4

;initializer for _Noise_Seed
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	line	25

;initializer for _Vo_2_Freq
	retlw	039h
	retlw	04h

	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	7

;initializer for _App_Tempo
	retlw	06Ch
	global	_Vol_margin
psect	stringtext,class=STRCODE,delta=2,noexec
global __pstringtext
__pstringtext:
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	14
_Vol_margin:
	retlw	02h
	global __end_of_Vol_margin
__end_of_Vol_margin:
	global	_Vol_margin
	global	_Vo_WT_1
	global	_Vo_2_Phase
	global	_Vo_1_Phase
	global	_App_Tempo_Phase
	global	_LED_Ctr
	global	_Vol_1
	global	_App_Noise
	global	_MidTick_Task
	global	_INTCON
_INTCON	set	0xB
	global	_T2CON
_T2CON	set	0x1F
	global	_TMR2
_TMR2	set	0x1D
	global	_PR2
_PR2	set	0x1E
	global	_TMR2IF
_TMR2IF	set	0x89
	global	_ADRESH
_ADRESH	set	0x9C
	global	_ADCON0
_ADCON0	set	0x9D
	global	_PIE1
_PIE1	set	0x91
	global	_ADCON1
_ADCON1	set	0x9E
	global	_TRISA
_TRISA	set	0x8C
	global	_LATA
_LATA	set	0x10C
	global	_ANSELA
_ANSELA	set	0x18C
	global	_CCPR1
_CCPR1	set	0x291
	global	_CCP1CON
_CCP1CON	set	0x293
	global	_OSCFRQbits
_OSCFRQbits	set	0x91F
	global	_RA4PPS
_RA4PPS	set	0xE94
; #config settings
global __CFG_FEXTOSC$OFF
__CFG_FEXTOSC$OFF equ 0x0
global __CFG_RSTOSC$HFINT32
__CFG_RSTOSC$HFINT32 equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_CSWEN$ON
__CFG_CSWEN$ON equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_LPBOREN$OFF
__CFG_LPBOREN$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_BORV$LOW
__CFG_BORV$LOW equ 0x0
global __CFG_PPS1WAY$OFF
__CFG_PPS1WAY$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
	file	"Output\VVVF - 01 - 16F18313.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_App_Output:
       ds      2

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	24
_Vo_1_Freq:
       ds      2

psect	dataCOMMON
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	7
_MidTick_DivCtr:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_Vo_WT_1:
       ds      8

_Vo_2_Phase:
       ds      2

_Vo_1_Phase:
       ds      2

_App_Tempo_Phase:
       ds      2

_LED_Ctr:
       ds      2

_Vol_1:
       ds      1

_App_Noise:
       ds      1

_MidTick_Task:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	4
_Noise_Seed:
       ds      4

psect	dataBANK0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	25
_Vo_2_Freq:
       ds      2

psect	dataBANK0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	7
_App_Tempo:
       ds      1

	file	"Output\VVVF - 01 - 16F18313.as"
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	decfsz btemp
	goto initloop
	retlw 0
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataCOMMON)
	movwf fsr0l
	movlw high(__pidataCOMMON)|80h
	movwf fsr0h
	movlw low(__pdataCOMMON)
	movwf fsr1l
	movlw high(__pdataCOMMON)
	movwf fsr1h
	movlw 03h
	fcall init_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK0)
	movwf fsr0l
	movlw high(__pidataBANK0)|80h
	movwf fsr0h
	movlw low(__pdataBANK0)
	movwf fsr1l
	movlw high(__pdataBANK0)
	movwf fsr1h
	movlw 07h
	fcall init_ram
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	013h
	fcall	clear_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_App_Init:	; 1 bytes @ 0x0
?_Chip_Init:	; 1 bytes @ 0x0
?_MidTick_Step:	; 1 bytes @ 0x0
?_App_Step:	; 1 bytes @ 0x0
?_ADC_Res:	; 1 bytes @ 0x0
?_Noise_Step:	; 1 bytes @ 0x0
?_ADC_Go:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
	global	?_Voix_int_Step
?_Voix_int_Step:	; 2 bytes @ 0x0
	ds	2
??_Voix_int_Step:	; 1 bytes @ 0x2
	ds	1
	global	Voix_int_Step@rt
Voix_int_Step@rt:	; 2 bytes @ 0x3
	ds	2
	global	Voix_int_Step@i
Voix_int_Step@i:	; 1 bytes @ 0x5
	ds	1
??_ISR:	; 1 bytes @ 0x6
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_App_Init:	; 1 bytes @ 0x0
??_Chip_Init:	; 1 bytes @ 0x0
??_ADC_Res:	; 1 bytes @ 0x0
??_Noise_Step:	; 1 bytes @ 0x0
??_ADC_Go:	; 1 bytes @ 0x0
	ds	1
	global	Noise_Step@bits
Noise_Step@bits:	; 1 bytes @ 0x1
	ds	1
	global	Noise_Step@a
Noise_Step@a:	; 1 bytes @ 0x2
	ds	1
	global	Noise_Step@b
Noise_Step@b:	; 1 bytes @ 0x3
	ds	1
??_App_Step:	; 1 bytes @ 0x4
	ds	4
	global	App_Step@vol
App_Step@vol:	; 1 bytes @ 0x8
	ds	1
??_MidTick_Step:	; 1 bytes @ 0x9
	ds	2
??_main:	; 1 bytes @ 0xB
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    1
;!    Data        10
;!    BSS         21
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8      13
;!    BANK0            80     11      37
;!    BANK1            80      0       0
;!    BANK2            80      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->_Voix_int_Step
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_MidTick_Step
;!    _MidTick_Step->_App_Step
;!    _App_Step->_Noise_Step
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     201
;!                           _App_Init
;!                          _Chip_Init
;!                       _MidTick_Step
;! ---------------------------------------------------------------------------------
;! (1) _MidTick_Step                                         2     2      0     201
;!                                              9 BANK0      2     2      0
;!                           _App_Step
;! ---------------------------------------------------------------------------------
;! (2) _App_Step                                             5     5      0     201
;!                                              4 BANK0      5     5      0
;!                             _ADC_Go
;!                            _ADC_Res
;!                         _Noise_Step
;! ---------------------------------------------------------------------------------
;! (3) _Noise_Step                                           4     4      0     112
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Res                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _ADC_Go                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Chip_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _App_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  2     2      0      69
;!                                              6 COMMON     2     2      0
;!                      _Voix_int_Step
;! ---------------------------------------------------------------------------------
;! (5) _Voix_int_Step                                        6     4      2      69
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _App_Init
;!   _Chip_Init
;!   _MidTick_Step
;!     _App_Step
;!       _ADC_Go
;!       _ADC_Res
;!       _Noise_Step
;!
;! _ISR (ROOT)
;!   _Voix_int_Step
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM              F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      8       D       2       92.9%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      32       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      B      25       6       46.3%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      32      11        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_App_Init
;;		_Chip_Init
;;		_MidTick_Step
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	13
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 11
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	15
	
l799:	
;Main.c: 15: App_Init();
	fcall	_App_Init
	line	16
	
l801:	
;Main.c: 16: Chip_Init();
	fcall	_Chip_Init
	goto	l803
	line	19
;Main.c: 19: while( 1 )
	
l25:	
	line	21
	
l803:	
;Main.c: 20: {
;Main.c: 21: if( MidTick_Task )
	movlb 0	; select bank0
	movf	((_MidTick_Task)),w
	btfsc	status,2
	goto	u361
	goto	u360
u361:
	goto	l803
u360:
	line	23
	
l805:	
;Main.c: 22: {
;Main.c: 23: MidTick_Task --;
	movlw	01h
	subwf	(_MidTick_Task),f
	line	24
	
l807:	
;Main.c: 24: MidTick_Step();
	fcall	_MidTick_Step
	goto	l803
	line	25
	
l26:	
	goto	l803
	line	26
	
l27:	
	line	19
	goto	l803
	
l28:	
	line	28
	
l29:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_MidTick_Step

;; *************** function _MidTick_Step *****************
;; Defined at:
;;		line 31 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_App_Step
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	31
global __ptext1
__ptext1:	;psect for function _MidTick_Step
psect	text1
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	31
	global	__size_of_MidTick_Step
	__size_of_MidTick_Step	equ	__end_of_MidTick_Step-_MidTick_Step
	
_MidTick_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _MidTick_Step: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	33
	
l777:	
;Main.c: 33: LED_Ctr += 131;
	movlw	083h
	movlb 0	; select bank0
	addwf	(_LED_Ctr),f
	movlw	0
	addwfc	(_LED_Ctr+1),f
	line	34
	
l779:	
;Main.c: 34: LATA = LED_Ctr >> 10;
	movf	(_LED_Ctr+1),w
	movwf	(??_MidTick_Step+0)+0+1
	movf	(_LED_Ctr),w
	movwf	(??_MidTick_Step+0)+0
	movlw	0Ah
u335:
	lsrf	(??_MidTick_Step+0)+1,f
	rrf	(??_MidTick_Step+0)+0,f
	decfsz	wreg,f
	goto	u335
	movf	0+(??_MidTick_Step+0)+0,w
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	36
	
l781:	
;Main.c: 36: App_Step();
	fcall	_App_Step
	line	37
	
l32:	
	return
	opt stack 0
GLOBAL	__end_of_MidTick_Step
	__end_of_MidTick_Step:
	signat	_MidTick_Step,89
	global	_App_Step

;; *************** function _App_Step *****************
;; Defined at:
;;		line 21 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  vol             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       4       0       0
;;      Totals:         0       5       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_Go
;;		_ADC_Res
;;		_Noise_Step
;; This function is called by:
;;		_MidTick_Step
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	21
global __ptext2
__ptext2:	;psect for function _App_Step
psect	text2
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	21
	global	__size_of_App_Step
	__size_of_App_Step	equ	__end_of_App_Step-_App_Step
	
_App_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _App_Step: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l733:	
;App.c: 23: App_Tempo_Phase += App_Tempo;
	movlb 0	; select bank0
	movf	(_App_Tempo),w
	movwf	(??_App_Step+0)+0
	clrf	(??_App_Step+0)+0+1
	movf	0+(??_App_Step+0)+0,w
	addwf	(_App_Tempo_Phase),f
	movf	1+(??_App_Step+0)+0,w
	addwfc	(_App_Tempo_Phase+1),f
	line	25
;App.c: 25: if( App_Tempo_Phase >= 2500 )
	movlw	09h
	subwf	(_App_Tempo_Phase+1),w
	movlw	0C4h
	skipnz
	subwf	(_App_Tempo_Phase),w
	skipc
	goto	u301
	goto	u300
u301:
	goto	l737
u300:
	line	27
	
l735:	
;App.c: 26: {
;App.c: 27: App_Tempo_Phase -= 2500;
	movlw	0C4h
	subwf	(_App_Tempo_Phase),f
	movlw	09h
	subwfb	(_App_Tempo_Phase+1),f
	goto	l737
	line	28
	
l61:	
	line	30
	
l737:	
;App.c: 28: }
;App.c: 30: uint8 vol = ADC_Res();
	fcall	_ADC_Res
	movlb 0	; select bank0
	movwf	(??_App_Step+0)+0
	movf	(??_App_Step+0)+0,w
	movwf	(App_Step@vol)
	line	31
	
l739:	
;App.c: 31: if( vol > ( Vol_1 + Vol_margin ) )
	movlw	low(_Vol_margin|8000h)
	movwf	fsr0l
	movlw	high(_Vol_margin|8000h)
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(??_App_Step+0)+0
	movf	(_Vol_1),w
	addwf	(??_App_Step+0)+0,w
	movwf	(??_App_Step+1)+0
	clrf	(??_App_Step+1)+0+1
	rlf	1+(??_App_Step+1)+0,f
	
	movf	1+(??_App_Step+1)+0,w
	xorlw	80h
	movwf	(??_App_Step+3)+0
	movlw	80h
	subwf	(??_App_Step+3)+0,w
	skipz
	goto	u315
	movf	(App_Step@vol),w
	subwf	0+(??_App_Step+1)+0,w
u315:

	skipnc
	goto	u311
	goto	u310
u311:
	goto	l743
u310:
	line	33
	
l741:	
;App.c: 32: {
;App.c: 33: Vol_1 = vol - Vol_margin;
	movlw	low(_Vol_margin|8000h)
	movwf	fsr0l
	movlw	high(_Vol_margin|8000h)
	movwf	fsr0h
	movf	indf0,w ;code access
	xorlw	0ffh
	addlw	1
	movlb 0	; select bank0
	addwf	(App_Step@vol),w
	movwf	(??_App_Step+0)+0
	movf	(??_App_Step+0)+0,w
	movwf	(_Vol_1)
	goto	l743
	line	34
	
l62:	
	line	35
	
l743:	
;App.c: 34: }
;App.c: 35: if( vol < Vol_1 )
	movlb 0	; select bank0
	movf	(_Vol_1),w
	subwf	(App_Step@vol),w
	skipnc
	goto	u321
	goto	u320
u321:
	goto	l747
u320:
	line	37
	
l745:	
;App.c: 36: {
;App.c: 37: Vol_1 = vol;
	movf	(App_Step@vol),w
	movwf	(??_App_Step+0)+0
	movf	(??_App_Step+0)+0,w
	movwf	(_Vol_1)
	goto	l747
	line	38
	
l63:	
	line	43
	
l747:	
;App.c: 38: }
;App.c: 43: App_Noise = Noise_Step( 4 ) & 0xFF;
	movlw	low(04h)
	fcall	_Noise_Step
	movlb 0	; select bank0
	movwf	(??_App_Step+0)+0
	movf	(??_App_Step+0)+0,w
	movwf	(_App_Noise)
	line	45
	
l749:	
;App.c: 45: ADC_Go();
	fcall	_ADC_Go
	line	46
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_App_Step
	__end_of_App_Step:
	signat	_App_Step,89
	global	_Noise_Step

;; *************** function _Noise_Step *****************
;; Defined at:
;;		line 6 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
;; Parameters:    Size  Location     Type
;;  bits            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bits            1    1[BANK0 ] unsigned char 
;;  b               1    3[BANK0 ] unsigned char 
;;  a               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       3       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_App_Step
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	6
global __ptext3
__ptext3:	;psect for function _Noise_Step
psect	text3
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	6
	global	__size_of_Noise_Step
	__size_of_Noise_Step	equ	__end_of_Noise_Step-_Noise_Step
	
_Noise_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Noise_Step: [wreg+status,2+status,0]
;Noise_Step@bits stored from wreg
	movlb 0	; select bank0
	movwf	(Noise_Step@bits)
	line	8
	
l709:	
;Voix.c: 8: while( -- bits )
	goto	l725
	
l109:	
	line	10
	
l711:	
;Voix.c: 9: {
;Voix.c: 10: Noise_Seed <<= 1;
	movlw	01h
u205:
	lslf	(_Noise_Seed),f
	rlf	(_Noise_Seed+1),f
	rlf	(_Noise_Seed+2),f
	rlf	(_Noise_Seed+3),f
	decfsz	wreg,f
	goto	u205
	line	11
	
l713:	
;Voix.c: 11: bool a = ( Noise_Seed & 0x100000 ) > 0;
	btfsc	(_Noise_Seed+2),(20)&7
	goto	u211
	goto	u210
u211:
	movlw	1
	goto	u220
u210:
	movlw	0
u220:
	movwf	(??_Noise_Step+0)+0
	movf	(??_Noise_Step+0)+0,w
	movwf	(Noise_Step@a)
	line	12
	
l715:	
;Voix.c: 12: bool b = ( Noise_Seed & 0x400000 ) > 0;
	btfsc	(_Noise_Seed+2),(22)&7
	goto	u231
	goto	u230
u231:
	movlw	1
	goto	u240
u230:
	movlw	0
u240:
	movwf	(??_Noise_Step+0)+0
	movf	(??_Noise_Step+0)+0,w
	movwf	(Noise_Step@b)
	line	14
	
l717:	
;Voix.c: 14: if( ( !a && b ) || ( a && !b ) ) Noise_Seed |= 1;
	movf	((Noise_Step@a)),w
	btfss	status,2
	goto	u251
	goto	u250
u251:
	goto	l721
u250:
	
l719:	
	movf	((Noise_Step@b)),w
	btfss	status,2
	goto	u261
	goto	u260
u261:
	goto	l112
u260:
	goto	l721
	
l114:	
	
l721:	
	movf	((Noise_Step@a)),w
	btfsc	status,2
	goto	u271
	goto	u270
u271:
	goto	l725
u270:
	
l723:	
	movf	((Noise_Step@b)),w
	btfss	status,2
	goto	u281
	goto	u280
u281:
	goto	l725
u280:
	
l112:	
	bsf	(_Noise_Seed)+(0/8),(0)&7
	goto	l725
	
l110:	
	goto	l725
	line	15
	
l108:	
	line	8
	
l725:	
	movlw	01h
	subwf	(Noise_Step@bits),f
	btfss	status,2
	goto	u291
	goto	u290
u291:
	goto	l711
u290:
	goto	l727
	
l115:	
	line	17
	
l727:	
;Voix.c: 15: }
;Voix.c: 17: return Noise_Seed;
	movf	(_Noise_Seed),w
	goto	l116
	
l729:	
	line	18
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_Noise_Step
	__end_of_Noise_Step:
	signat	_Noise_Step,4217
	global	_ADC_Res

;; *************** function _ADC_Res *****************
;; Defined at:
;;		line 115 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_App_Step
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
	line	115
global __ptext4
__ptext4:	;psect for function _ADC_Res
psect	text4
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
	line	115
	global	__size_of_ADC_Res
	__size_of_ADC_Res	equ	__end_of_ADC_Res-_ADC_Res
	
_ADC_Res:	
;incstack = 0
	opt	stack 11
; Regs used in _ADC_Res: [wreg]
	line	117
	
l705:	
;Config.c: 117: return ADRESH;
	movlb 1	; select bank1
	movf	(156)^080h,w	;volatile
	goto	l103
	
l707:	
	line	118
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Res
	__end_of_ADC_Res:
	signat	_ADC_Res,89
	global	_ADC_Go

;; *************** function _ADC_Go *****************
;; Defined at:
;;		line 106 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_App_Step
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	106
global __ptext5
__ptext5:	;psect for function _ADC_Go
psect	text5
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
	line	106
	global	__size_of_ADC_Go
	__size_of_ADC_Go	equ	__end_of_ADC_Go-_ADC_Go
	
_ADC_Go:	
;incstack = 0
	opt	stack 11
; Regs used in _ADC_Go: [wreg]
	line	112
	
l731:	
;Config.c: 108: ADCON0 =
;Config.c: 109: 1 << 0x0 |
;Config.c: 110: 1 << 0x1 |
;Config.c: 111: 2 << 0x2
;Config.c: 112: ;
	movlw	low(0Bh)
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	113
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Go
	__end_of_ADC_Go:
	signat	_ADC_Go,89
	global	_Chip_Init

;; *************** function _Chip_Init *****************
;; Defined at:
;;		line 58 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	58
global __ptext6
__ptext6:	;psect for function _Chip_Init
psect	text6
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Config.c"
	line	58
	global	__size_of_Chip_Init
	__size_of_Chip_Init	equ	__end_of_Chip_Init-_Chip_Init
	
_Chip_Init:	
;incstack = 0
	opt	stack 13
; Regs used in _Chip_Init: [wreg+status,2+status,0]
	line	62
	
l751:	
;Config.c: 62: OSCFRQbits.HFFRQ = 6;
	movlb 18	; select bank18
	movf	(2335)^0900h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(06h & ((1<<4)-1))<<0
	movwf	(2335)^0900h	;volatile
	line	66
	
l753:	
;Config.c: 66: ANSELA = 0b000100;
	movlw	low(04h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	67
	
l755:	
;Config.c: 67: TRISA = 0b000111;
	movlw	low(07h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	68
	
l757:	
;Config.c: 68: LATA = 0b000000;
	movlb 2	; select bank2
	clrf	(268)^0100h	;volatile
	line	70
	
l759:	
;Config.c: 70: RA4PPS = 0x0C;
	movlw	low(0Ch)
	movlb 29	; select bank29
	movwf	(3732)^0E80h	;volatile
	line	76
	
l761:	
;Config.c: 74: ADCON1 =
;Config.c: 75: 6 << 0x4
;Config.c: 76: ;
	movlw	low(060h)
	movlb 1	; select bank1
	movwf	(158)^080h	;volatile
	line	80
	
l763:	
;Config.c: 80: PR2 = 250 - 1;
	movlw	low(0F9h)
	movlb 0	; select bank0
	movwf	(30)	;volatile
	line	81
	
l765:	
;Config.c: 81: TMR2 = 0;
	clrf	(29)	;volatile
	line	86
	
l767:	
;Config.c: 82: T2CON =
;Config.c: 83: 0 << 0x0 |
;Config.c: 84: 0 << 0x3 |
;Config.c: 85: 1 << 0x2
;Config.c: 86: ;
	movlw	low(04h)
	movwf	(31)	;volatile
	line	88
	
l769:	
;Config.c: 88: CCPR1 = 0x100;
	movlw	01h
	movlb 5	; select bank5
	movwf	(657+1)^0280h	;volatile
	movlw	0
	movwf	(657)^0280h	;volatile
	line	93
	
l771:	
;Config.c: 90: CCP1CON =
;Config.c: 91: 1 << 0x7 |
;Config.c: 92: 0x0F << 0x0
;Config.c: 93: ;
	movlw	low(08Fh)
	movwf	(659)^0280h	;volatile
	line	99
	
l773:	
;Config.c: 97: PIE1 =
;Config.c: 98: 1 << 0x1
;Config.c: 99: ;
	movlw	low(02h)
	movlb 1	; select bank1
	movwf	(145)^080h	;volatile
	line	103
	
l775:	
;Config.c: 100: INTCON =
;Config.c: 101: 1 << 0x6 |
;Config.c: 102: 1 << 0x7
;Config.c: 103: ;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	104
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_Chip_Init
	__end_of_Chip_Init:
	signat	_Chip_Init,89
	global	_App_Init

;; *************** function _App_Init *****************
;; Defined at:
;;		line 17 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	17
global __ptext7
__ptext7:	;psect for function _App_Init
psect	text7
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\App.c"
	line	17
	global	__size_of_App_Init
	__size_of_App_Init	equ	__end_of_App_Init-_App_Init
	
_App_Init:	
;incstack = 0
	opt	stack 13
; Regs used in _App_Init: []
	line	19
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_App_Init
	__end_of_App_Init:
	signat	_App_Init,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 40 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Voix_int_Step
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Main.c"
	line	40
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 11
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _ISR: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+1)
	line	42
	
i1l809:	
;Main.c: 42: if( TMR2IF )
	btfss	(137/8),(137)&7	;volatile
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l37
u37_20:
	line	44
	
i1l811:	
;Main.c: 43: {
;Main.c: 44: TMR2IF = 0;
	bcf	(137/8),(137)&7	;volatile
	line	46
	
i1l813:	
;Main.c: 46: if( -- MidTick_DivCtr == 0 )
	movlw	01h
	subwf	(_MidTick_DivCtr),f
	btfss	status,2
	goto	u38_21
	goto	u38_20
u38_21:
	goto	i1l819
u38_20:
	line	48
	
i1l815:	
;Main.c: 47: {
;Main.c: 48: MidTick_DivCtr = 64;
	movlw	low(040h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_MidTick_DivCtr)
	line	49
	
i1l817:	
;Main.c: 49: MidTick_Task ++;
	movlw	low(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_MidTick_Task),f
	goto	i1l819
	line	50
	
i1l36:	
	line	52
	
i1l819:	
;Main.c: 50: }
;Main.c: 52: CCPR1= Voix_int_Step();
	fcall	_Voix_int_Step
	movf	(1+(?_Voix_int_Step)),w
	movlb 5	; select bank5
	movwf	(657+1)^0280h	;volatile
	movf	(0+(?_Voix_int_Step)),w
	movwf	(657)^0280h	;volatile
	goto	i1l37
	line	53
	
i1l35:	
	line	54
	
i1l37:	
	movf	(??_ISR+1),w
	movlb 0	; select bank0
	movwf	btemp+1
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_Voix_int_Step

;; *************** function _Voix_int_Step *****************
;; Defined at:
;;		line 32 in file "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  rt              2    3[COMMON] unsigned short 
;;  i               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned short 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         2       0       0       0
;;      Locals:         3       0       0       0
;;      Temps:          1       0       0       0
;;      Totals:         6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	32
global __ptext9
__ptext9:	;psect for function _Voix_int_Step
psect	text9
	file	"C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
	line	32
	global	__size_of_Voix_int_Step
	__size_of_Voix_int_Step	equ	__end_of_Voix_int_Step-_Voix_int_Step
	
_Voix_int_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Voix_int_Step: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	35
	
i1l783:	
;Voix.c: 34: uint8 i;
;Voix.c: 35: for( i = 0; i < sizeof( Vo_WT_1 ); i ++ )
	clrf	(Voix_int_Step@i)
	
i1l785:	
	movlw	low(08h)
	subwf	(Voix_int_Step@i),w
	skipc
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l789
u34_20:
	goto	i1l795
	
i1l787:	
	goto	i1l795
	line	36
	
i1l129:	
	
i1l789:	
;Voix.c: 36: Vo_WT_1[ i ] = 0x99;
	movlw	low(099h)
	movwf	(??_Voix_int_Step+0)+0
	movf	(Voix_int_Step@i),w
	addlw	low(_Vo_WT_1|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Voix_int_Step+0)+0,w
	movwf	indf1
	line	35
	
i1l791:	
	movlw	low(01h)
	movwf	(??_Voix_int_Step+0)+0
	movf	(??_Voix_int_Step+0)+0,w
	addwf	(Voix_int_Step@i),f
	
i1l793:	
	movlw	low(08h)
	subwf	(Voix_int_Step@i),w
	skipc
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l789
u35_20:
	goto	i1l795
	
i1l130:	
	line	39
	
i1l795:	
;Voix.c: 39: uint16 rt = 0;
	clrf	(Voix_int_Step@rt)
	clrf	(Voix_int_Step@rt+1)
	line	44
# 44 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
clrf (?_Voix_int_Step) ;# 
	line	45
# 45 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
clrf (?_Voix_int_Step+1) ;# 
	line	47
# 47 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movlb 0 ; select bank0 ;# 
	line	49
# 49 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_1_Freq),w ;# 
	line	50
# 50 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwf (_Vo_1_Phase),f ;# 
	line	51
# 51 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_1_Freq+1),w ;# 
	line	52
# 52 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwfc (_Vo_1_Phase+1),f ;# 
	line	54
# 54 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_1_Phase+1),w ;# 
	line	55
# 55 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwf (?_Voix_int_Step),f ;# 
	line	57
# 57 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_2_Freq),w ;# 
	line	58
# 58 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwf (_Vo_2_Phase),f ;# 
	line	59
# 59 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_2_Freq+1),w ;# 
	line	60
# 60 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwfc (_Vo_2_Phase+1),f ;# 
	line	62
# 62 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movf (_Vo_2_Phase+1),w ;# 
	line	63
# 63 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwf (?_Voix_int_Step),f ;# 
	line	64
# 64 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
movlw 0 ;# 
	line	65
# 65 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
addwfc (?_Voix_int_Step+1),f ;# 
	line	67
# 67 "C:\17\D\GitHub\17\PIC\1\16F18 VVVF - 01\Voix.c"
return; ;# 
psect	text9
	line	70
;Voix.c: 70: return 0;
	clrf	(?_Voix_int_Step)
	clrf	(?_Voix_int_Step+1)
	goto	i1l131
	
i1l797:	
	line	71
	
i1l131:	
	return
	opt stack 0
GLOBAL	__end_of_Voix_int_Step
	__end_of_Voix_int_Step:
	signat	_Voix_int_Step,90
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	int$flags
	int$flags	set btemp
	global	wtemp0
	wtemp0 set btemp+0
	end
