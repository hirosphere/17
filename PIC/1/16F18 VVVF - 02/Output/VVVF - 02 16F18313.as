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
	FNCALL	_main,_Chip_Init
	FNCALL	_main,_MidTick_Step
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_MidTick_DivCtr
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	6

;initializer for _MidTick_DivCtr
	retlw	01h
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
	global	_PIE1
_PIE1	set	0x91
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
	global	_RA2PPS
_RA2PPS	set	0xE92
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
	file	"Output\VVVF - 02 16F18313.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_MidTick_Task:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	6
_MidTick_DivCtr:
       ds      1

	file	"Output\VVVF - 02 16F18313.as"
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
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
?_Chip_Init:	; 1 bytes @ 0x0
?_MidTick_Step:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds	2
??_Chip_Init:	; 1 bytes @ 0x2
??_MidTick_Step:	; 1 bytes @ 0x2
??_main:	; 1 bytes @ 0x2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        1
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      2       4
;!    BANK0            80      0       0
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
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;! (0) _main                                                 0     0      0       0
;!                          _Chip_Init
;!                       _MidTick_Step
;! ---------------------------------------------------------------------------------
;! (1) _MidTick_Step                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Chip_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  2     2      0       0
;!                                              0 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Chip_Init
;!   _MidTick_Step
;!
;! _ISR (ROOT)
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
;!COMMON               E      2       4       2       28.6%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0       4       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      0       0       6        0.0%
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
;!DATA                 0      0       4      11        0.0%
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
;;		line 11 in file "C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Chip_Init
;;		_MidTick_Step
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	11
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 14
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l534:	
;Main.c: 15: Chip_Init();
	fcall	_Chip_Init
	goto	l536
	line	18
;Main.c: 18: while( 1 )
	
l13:	
	line	20
	
l536:	
;Main.c: 19: {
;Main.c: 20: if( MidTick_Task )
	movf	((_MidTick_Task)),w
	btfsc	status,2
	goto	u11
	goto	u10
u11:
	goto	l536
u10:
	line	22
	
l538:	
;Main.c: 21: {
;Main.c: 22: MidTick_Task --;
	movlw	01h
	subwf	(_MidTick_Task),f
	line	23
	
l540:	
;Main.c: 23: MidTick_Step();
	fcall	_MidTick_Step
	goto	l536
	line	24
	
l14:	
	goto	l536
	line	25
	
l15:	
	line	18
	goto	l536
	
l16:	
	line	27
	
l17:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_MidTick_Step

;; *************** function _MidTick_Step *****************
;; Defined at:
;;		line 30 in file "C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	30
global __ptext1
__ptext1:	;psect for function _MidTick_Step
psect	text1
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	30
	global	__size_of_MidTick_Step
	__size_of_MidTick_Step	equ	__end_of_MidTick_Step-_MidTick_Step
	
_MidTick_Step:	
;incstack = 0
	opt	stack 14
; Regs used in _MidTick_Step: []
	line	32
	
l20:	
	return
	opt stack 0
GLOBAL	__end_of_MidTick_Step
	__end_of_MidTick_Step:
	signat	_MidTick_Step,89
	global	_Chip_Init

;; *************** function _Chip_Init *****************
;; Defined at:
;;		line 40 in file "C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Config.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Config.c"
	line	40
global __ptext2
__ptext2:	;psect for function _Chip_Init
psect	text2
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Config.c"
	line	40
	global	__size_of_Chip_Init
	__size_of_Chip_Init	equ	__end_of_Chip_Init-_Chip_Init
	
_Chip_Init:	
;incstack = 0
	opt	stack 14
; Regs used in _Chip_Init: [wreg+status,2+status,0]
	line	44
	
l510:	
;Config.c: 44: OSCFRQbits.HFFRQ = 6;
	movlb 18	; select bank18
	movf	(2335)^0900h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(06h & ((1<<4)-1))<<0
	movwf	(2335)^0900h	;volatile
	line	48
	
l512:	
;Config.c: 48: ANSELA = 0b000000;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	49
	
l514:	
;Config.c: 49: TRISA = 0b000011;
	movlw	low(03h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	50
	
l516:	
;Config.c: 50: LATA = 0b100000;
	movlw	low(020h)
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	52
	
l518:	
;Config.c: 52: RA2PPS = 0x0C;
	movlw	low(0Ch)
	movlb 29	; select bank29
	movwf	(3730)^0E80h	;volatile
	line	56
	
l520:	
;Config.c: 56: PR2 = 250 - 1;
	movlw	low(0F9h)
	movlb 0	; select bank0
	movwf	(30)	;volatile
	line	57
	
l522:	
;Config.c: 57: TMR2 = 0;
	clrf	(29)	;volatile
	line	62
	
l524:	
;Config.c: 58: T2CON =
;Config.c: 59: 0 << 0x0 |
;Config.c: 60: 0 << 0x3 |
;Config.c: 61: 1 << 0x2
;Config.c: 62: ;
	movlw	low(04h)
	movwf	(31)	;volatile
	line	64
	
l526:	
;Config.c: 64: CCPR1 = 0x00;
	movlb 5	; select bank5
	clrf	(657)^0280h	;volatile
	clrf	(657+1)^0280h	;volatile
	line	69
	
l528:	
;Config.c: 66: CCP1CON =
;Config.c: 67: 1 << 0x7 |
;Config.c: 68: 0x0F << 0x0
;Config.c: 69: ;
	movlw	low(08Fh)
	movwf	(659)^0280h	;volatile
	line	75
	
l530:	
;Config.c: 73: PIE1 =
;Config.c: 74: 1 << 0x1
;Config.c: 75: ;
	movlw	low(02h)
	movlb 1	; select bank1
	movwf	(145)^080h	;volatile
	line	79
	
l532:	
;Config.c: 76: INTCON =
;Config.c: 77: 1 << 0x6 |
;Config.c: 78: 1 << 0x7
;Config.c: 79: ;
	movlw	low(0C0h)
	movwf	(11)	;volatile
	line	80
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_Chip_Init
	__end_of_Chip_Init:
	signat	_Chip_Init,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 35 in file "C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
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
;;      Temps:          2       0       0       0
;;      Totals:         2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"C:\17\D\GitHub\17\PIC\1\16F18qxx VVVF - 02\Main.c"
	line	35
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 14
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+1)
	line	37
	
i1l542:	
;Main.c: 37: if( TMR2IF )
	btfss	(137/8),(137)&7	;volatile
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l25
u2_20:
	line	39
	
i1l544:	
;Main.c: 38: {
;Main.c: 39: TMR2IF = 0;
	bcf	(137/8),(137)&7	;volatile
	line	41
	
i1l546:	
;Main.c: 41: if( -- MidTick_DivCtr == 0 )
	movlw	01h
	subwf	(_MidTick_DivCtr),f
	btfss	status,2
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l25
u3_20:
	line	43
	
i1l548:	
;Main.c: 42: {
;Main.c: 43: MidTick_DivCtr = 64;
	movlw	low(040h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_MidTick_DivCtr)
	line	44
	
i1l550:	
;Main.c: 44: MidTick_Task ++;
	movlw	low(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_MidTick_Task),f
	goto	i1l25
	line	45
	
i1l24:	
	goto	i1l25
	line	51
	
i1l23:	
	line	52
	
i1l25:	
	movf	(??_ISR+1),w
	movwf	btemp+1
	bcf int$flags,0 ;clear compiler interrupt flag (level 1)
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
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
