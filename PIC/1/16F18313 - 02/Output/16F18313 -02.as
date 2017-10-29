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
	FNCALL	_main,_Con_Init
	FNCALL	_main,_MidTick_Step
	FNCALL	_MidTick_Step,_Con_Step
	FNCALL	_Con_Step,_Seq_Step
	FNCALL	_Con_Step,_Voix_Step
	FNCALL	_Con_Step,_Voix_Trigger
	FNCALL	_Con_Init,_Seq_Init
	FNCALL	_Con_Init,_Voix_Init
	FNROOT	_main
	FNCALL	_ISR,_Voix_int_Step
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_MidTick_DivCtr
	global	_Seq_Len_Table
	global	_Con_Tempo
	global	_Seq_A_2
	global	_Seq_A_1
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	108

;initializer for _MidTick_DivCtr
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	line	309

;initializer for _Seq_Len_Table
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	01h
	retlw	03h
	retlw	06h
	retlw	0Ch
	retlw	018h
	line	100

;initializer for _Con_Tempo
	retlw	076h
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	239

;initializer for _Seq_A_2
	retlw	01h
	retlw	08h
	retlw	0F5h
	retlw	0F1h
	retlw	0F3h
	retlw	0F0h
	retlw	0F1h
	retlw	0EEh
	retlw	0CCh
	retlw	0CBh
	retlw	0C9h
	retlw	0D0h
	retlw	0F5h
	retlw	0F1h
	retlw	0F3h
	retlw	0F0h
	retlw	0F1h
	retlw	0EEh
	retlw	0CCh
	retlw	0CBh
	retlw	0C9h
	retlw	0D0h
	retlw	0FAh
	retlw	0F7h
	retlw	0F8h
	retlw	0F5h
	retlw	0F6h
	retlw	0F3h
	retlw	0D5h
	retlw	0CDh
	retlw	0D5h
	retlw	0D9h
	retlw	0FAh
	retlw	0F4h
	retlw	0F5h
	retlw	0F1h
	retlw	0EEh
	retlw	0F0h
	retlw	0D1h
	retlw	0D0h
	retlw	0CEh
	retlw	0D1h
	retlw	low(0)
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	line	212

;initializer for _Seq_A_1
	retlw	01h
	retlw	020h
	retlw	0C9h
	retlw	0D0h
	retlw	0D0h
	retlw	0CEh
	retlw	0CEh
	retlw	0D0h
	retlw	0CCh
	retlw	0CBh
	retlw	0ABh
	retlw	0ACh
	retlw	0CEh
	retlw	0CCh
	retlw	0CBh
	retlw	0E9h
	retlw	0E9h
	retlw	0C9h
	retlw	0D0h
	retlw	0D0h
	retlw	0CEh
	retlw	0CEh
	retlw	0D0h
	retlw	0CCh
	retlw	0CBh
	retlw	0ABh
	retlw	0ACh
	retlw	0CEh
	retlw	0CCh
	retlw	0CBh
	retlw	0E9h
	retlw	0E9h
	retlw	0C9h
	retlw	0D5h
	retlw	0D5h
	retlw	0D3h
	retlw	0D3h
	retlw	0D5h
	retlw	0D1h
	retlw	0D0h
	retlw	0B0h
	retlw	0B1h
	retlw	0D3h
	retlw	0D0h
	retlw	0CEh
	retlw	0EEh
	retlw	0EDh
	retlw	0CEh
	retlw	0D1h
	retlw	0B1h
	retlw	0B0h
	retlw	0CEh
	retlw	0CCh
	retlw	0D0h
	retlw	0D0h
	retlw	0CCh
	retlw	0ABh
	retlw	0ACh
	retlw	0CEh
	retlw	0CCh
	retlw	0CBh
	retlw	0E9h
	retlw	0E9h
	retlw	low(0)
	global	_Voix_Key_Table
psect	stringtext,class=STRCODE,delta=2,noexec
global __pstringtext
__pstringtext:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	356
_Voix_Key_Table:
	retlw	086h
	retlw	0

	retlw	08Eh
	retlw	0

	retlw	096h
	retlw	0

	retlw	09Fh
	retlw	0

	retlw	0A9h
	retlw	0

	retlw	0B3h
	retlw	0

	retlw	0BDh
	retlw	0

	retlw	0C9h
	retlw	0

	retlw	0D5h
	retlw	0

	retlw	0E1h
	retlw	0

	retlw	0EFh
	retlw	0

	retlw	0FDh
	retlw	0

	retlw	0Ch
	retlw	01h

	retlw	01Ch
	retlw	01h

	retlw	02Dh
	retlw	01h

	retlw	03Fh
	retlw	01h

	retlw	052h
	retlw	01h

	retlw	066h
	retlw	01h

	retlw	07Bh
	retlw	01h

	retlw	091h
	retlw	01h

	retlw	0A9h
	retlw	01h

	retlw	0C3h
	retlw	01h

	retlw	0DDh
	retlw	01h

	retlw	0FAh
	retlw	01h

	retlw	018h
	retlw	02h

	retlw	038h
	retlw	02h

	retlw	059h
	retlw	02h

	retlw	07Dh
	retlw	02h

	retlw	0A3h
	retlw	02h

	retlw	0CBh
	retlw	02h

	retlw	0F6h
	retlw	02h

	retlw	023h
	retlw	03h

	retlw	053h
	retlw	03h

	retlw	085h
	retlw	03h

	retlw	0BBh
	retlw	03h

	retlw	0F3h
	retlw	03h

	retlw	030h
	retlw	04h

	retlw	06Fh
	retlw	04h

	retlw	0B3h
	retlw	04h

	retlw	0FAh
	retlw	04h

	retlw	046h
	retlw	05h

	retlw	096h
	retlw	05h

	retlw	0EBh
	retlw	05h

	retlw	046h
	retlw	06h

	retlw	0A5h
	retlw	06h

	retlw	0Ah
	retlw	07h

	retlw	075h
	retlw	07h

	retlw	0E7h
	retlw	07h

	retlw	05Fh
	retlw	08h

	retlw	0DFh
	retlw	08h

	retlw	066h
	retlw	09h

	retlw	0F5h
	retlw	09h

	retlw	08Ch
	retlw	0Ah

	retlw	02Dh
	retlw	0Bh

	retlw	0D7h
	retlw	0Bh

	retlw	08Bh
	retlw	0Ch

	retlw	04Ah
	retlw	0Dh

	retlw	014h
	retlw	0Eh

	retlw	0EBh
	retlw	0Eh

	retlw	0CEh
	retlw	0Fh

	retlw	0BEh
	retlw	010h

	retlw	0BDh
	retlw	011h

	retlw	0CBh
	retlw	012h

	retlw	0EAh
	retlw	013h

	retlw	019h
	retlw	015h

	retlw	05Ah
	retlw	016h

	retlw	0AEh
	retlw	017h

	retlw	016h
	retlw	019h

	retlw	094h
	retlw	01Ah

	retlw	029h
	retlw	01Ch

	retlw	0D6h
	retlw	01Dh

	retlw	09Ch
	retlw	01Fh

	global __end_of_Voix_Key_Table
__end_of_Voix_Key_Table:
	global	_Voix_Decay
psect	stringtext
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	354
_Voix_Decay:
	retlw	088h
	retlw	0

	global __end_of_Voix_Decay
__end_of_Voix_Decay:
	global	_Voix_Key_Table
	global	_Voix_Decay
	global	_LED_Ctr
	global	_Con_Tempo_Phase
	global	_MidTick_Task
	global	_Vo_2
	global	_Vo_1
	global	_Seq_2
	global	_Seq_1
	global	_Con_Output
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
	file	"Output\16F18313 -02.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	108
_MidTick_DivCtr:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_LED_Ctr:
       ds      2

_Con_Tempo_Phase:
       ds      2

_MidTick_Task:
       ds      1

_Vo_2:
       ds      7

_Vo_1:
       ds      7

_Seq_2:
       ds      6

_Seq_1:
       ds      6

_Con_Output:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	309
_Seq_Len_Table:
       ds      8

psect	dataBANK0
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	100
_Con_Tempo:
       ds      1

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	239
_Seq_A_2:
       ds      43

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	212
_Seq_A_1:
       ds      64

	file	"Output\16F18313 -02.as"
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
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	movlw 09h
	fcall init_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw 02Bh
	fcall init_ram
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK2)
	movwf fsr0l
	movlw high(__pidataBANK2)|80h
	movwf fsr0h
	movlw low(__pdataBANK2)
	movwf fsr1l
	movlw high(__pdataBANK2)
	movwf fsr1h
	movlw 040h
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	021h
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
?_Con_Init:	; 1 bytes @ 0x0
?_MidTick_Step:	; 1 bytes @ 0x0
?_Con_Step:	; 1 bytes @ 0x0
?_Voix_int_Step:	; 1 bytes @ 0x0
??_Voix_int_Step:	; 1 bytes @ 0x0
?_Voix_Init:	; 1 bytes @ 0x0
?_Voix_Step:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
	ds	4
	global	_Voix_int_Step$184
_Voix_int_Step$184:	; 2 bytes @ 0x4
	ds	2
	global	Voix_int_Step@out
Voix_int_Step@out:	; 1 bytes @ 0x6
	ds	1
	global	Voix_int_Step@this
Voix_int_Step@this:	; 1 bytes @ 0x7
	ds	1
??_ISR:	; 1 bytes @ 0x8
	ds	3
	global	ISR@acc
ISR@acc:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_Seq_Init:	; 1 bytes @ 0x0
??_Voix_Init:	; 1 bytes @ 0x0
?_Seq_Step:	; 1 bytes @ 0x0
?_Voix_Trigger:	; 1 bytes @ 0x0
??_Voix_Step:	; 1 bytes @ 0x0
	global	Seq_Step@output
Seq_Step@output:	; 1 bytes @ 0x0
	global	Voix_Trigger@key
Voix_Trigger@key:	; 1 bytes @ 0x0
	global	Seq_Init@start
Seq_Init@start:	; 2 bytes @ 0x0
	ds	1
??_Seq_Step:	; 1 bytes @ 0x1
??_Voix_Trigger:	; 1 bytes @ 0x1
	global	Voix_Init@this
Voix_Init@this:	; 1 bytes @ 0x1
	ds	1
??_Seq_Init:	; 1 bytes @ 0x2
	ds	1
	global	Seq_Init@this
Seq_Init@this:	; 1 bytes @ 0x3
	ds	1
??_Con_Init:	; 1 bytes @ 0x4
	global	Seq_Step@data
Seq_Step@data:	; 1 bytes @ 0x4
	global	Voix_Step@this
Voix_Step@this:	; 1 bytes @ 0x4
	ds	1
	global	Seq_Step@this
Seq_Step@this:	; 1 bytes @ 0x5
	ds	2
	global	Voix_Trigger@this
Voix_Trigger@this:	; 1 bytes @ 0x7
	ds	1
??_Con_Step:	; 1 bytes @ 0x8
	ds	2
??_MidTick_Step:	; 1 bytes @ 0xA
	ds	2
??_main:	; 1 bytes @ 0xC
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    146
;!    Data        117
;!    BSS         33
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      14
;!    BANK0            80     12      54
;!    BANK1            80      0      43
;!    BANK2            80      0      64

;!
;!Pointer List with Targets:
;!
;!    Voix_int_Step@this	PTR struct . size(1) Largest target is 7
;!		 -> Vo_2(BANK0[7]), Vo_1(BANK0[7]), 
;!
;!    Voix_Step@this	PTR struct . size(1) Largest target is 7
;!		 -> Vo_2(BANK0[7]), Vo_1(BANK0[7]), 
;!
;!    Voix_Trigger@this	PTR struct . size(1) Largest target is 7
;!		 -> Vo_2(BANK0[7]), Vo_1(BANK0[7]), 
;!
;!    Voix_Init@this	PTR struct . size(1) Largest target is 7
;!		 -> Vo_2(BANK0[7]), Vo_1(BANK0[7]), 
;!
;!    Seq_Step@output	PTR unsigned char  size(1) Largest target is 2
;!		 -> Con_Output(BANK0[2]), 
;!
;!    Seq_Step@this.Cur	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_Step@this.Start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_Step@this	PTR struct . size(1) Largest target is 6
;!		 -> Seq_2(BANK0[6]), Seq_1(BANK0[6]), 
;!
;!    Seq_Init@this.Cur	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_Init@this.Start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_Init@start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_Init@this	PTR struct . size(1) Largest target is 6
;!		 -> Seq_2(BANK0[6]), Seq_1(BANK0[6]), 
;!
;!    Seq_2.Cur	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_2.Start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    S24$Cur	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_1.Cur	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    S24$Start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!
;!    Seq_1.Start	PTR unsigned char  size(2) Largest target is 64
;!		 -> Seq_A_2(BANK1[43]), Seq_A_1(BANK2[64]), 
;!


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
;!    _MidTick_Step->_Con_Step
;!    _Con_Step->_Voix_Trigger
;!    _Con_Init->_Seq_Init
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
;! (0) _main                                                 0     0      0    1271
;!                           _Con_Init
;!                       _MidTick_Step
;! ---------------------------------------------------------------------------------
;! (1) _MidTick_Step                                         2     2      0     859
;!                                             10 BANK0      2     2      0
;!                           _Con_Step
;! ---------------------------------------------------------------------------------
;! (2) _Con_Step                                             2     2      0     859
;!                                              8 BANK0      2     2      0
;!                           _Seq_Step
;!                          _Voix_Step
;!                       _Voix_Trigger
;! ---------------------------------------------------------------------------------
;! (3) _Voix_Trigger                                         8     7      1     226
;!                                              0 BANK0      8     7      1
;! ---------------------------------------------------------------------------------
;! (3) _Voix_Step                                            5     5      0     120
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _Seq_Step                                             6     5      1     513
;!                                              0 BANK0      6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _Con_Init                                             0     0      0     412
;!                           _Seq_Init
;!                          _Voix_Init
;! ---------------------------------------------------------------------------------
;! (2) _Voix_Init                                            2     2      0     142
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _Seq_Init                                             4     2      2     270
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0     236
;!                                              8 COMMON     5     5      0
;!                      _Voix_int_Step
;! ---------------------------------------------------------------------------------
;! (5) _Voix_int_Step                                        8     8      0     211
;!                                              0 COMMON     8     8      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Con_Init
;!     _Seq_Init
;!     _Voix_Init
;!   _MidTick_Step
;!     _Con_Step
;!       _Seq_Step
;!       _Voix_Step
;!       _Voix_Trigger
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
;!COMMON               E      D       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      AF       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50      C      36       6       67.5%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50      0      2B       8       53.8%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0      40      10       80.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!DATA                 0      0      AF      11        0.0%
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
;;		line 120 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;;		_Con_Init
;;		_MidTick_Step
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1,group=0
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	120
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	120
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 11
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	122
	
l801:	
	movlb 18	; select bank18
	movf	(2335)^0900h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(06h & ((1<<4)-1))<<0
	movwf	(2335)^0900h	;volatile
	line	126
	
l803:	
	fcall	_Con_Init
	line	130
	
l805:	
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	131
	
l807:	
	movlw	low(03h)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	132
	
l809:	
	movlw	low(020h)
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	134
	
l811:	
	movlw	low(0Ch)
	movlb 29	; select bank29
	movwf	(3730)^0E80h	;volatile
	line	138
	
l813:	
	movlw	low(0F9h)
	movlb 0	; select bank0
	movwf	(30)	;volatile
	line	139
	
l815:	
	clrf	(29)	;volatile
	line	144
	
l817:	
	movlw	low(04h)
	movwf	(31)	;volatile
	line	146
	
l819:	
	movlb 5	; select bank5
	clrf	(657)^0280h	;volatile
	clrf	(657+1)^0280h	;volatile
	line	151
	
l821:	
	movlw	low(08Fh)
	movwf	(659)^0280h	;volatile
	line	157
	
l823:	
	movlw	low(02h)
	movlb 1	; select bank1
	movwf	(145)^080h	;volatile
	line	161
	
l825:	
	movlw	low(0C0h)
	movwf	(11)	;volatile
	goto	l827
	line	163
	
l65:	
	line	165
	
l827:	
	movlb 0	; select bank0
	movf	((_MidTick_Task)),w
	btfsc	status,2
	goto	u261
	goto	u260
u261:
	goto	l827
u260:
	line	167
	
l829:	
	movlw	01h
	subwf	(_MidTick_Task),f
	line	168
	
l831:	
	fcall	_MidTick_Step
	goto	l827
	line	169
	
l66:	
	goto	l827
	line	170
	
l67:	
	line	163
	goto	l827
	
l68:	
	line	172
	
l69:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_MidTick_Step

;; *************** function _MidTick_Step *****************
;; Defined at:
;;		line 174 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;;		_Con_Step
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1,group=0
	line	174
global __ptext1
__ptext1:	;psect for function _MidTick_Step
psect	text1
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	174
	global	__size_of_MidTick_Step
	__size_of_MidTick_Step	equ	__end_of_MidTick_Step-_MidTick_Step
	
_MidTick_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _MidTick_Step: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	176
	
l781:	
	movlw	083h
	movlb 0	; select bank0
	addwf	(_LED_Ctr),f
	movlw	0
	addwfc	(_LED_Ctr+1),f
	line	177
	
l783:	
	movf	(_LED_Ctr+1),w
	movwf	(??_MidTick_Step+0)+0+1
	movf	(_LED_Ctr),w
	movwf	(??_MidTick_Step+0)+0
	movlw	0Ah
u245:
	lsrf	(??_MidTick_Step+0)+1,f
	rrf	(??_MidTick_Step+0)+0,f
	decfsz	wreg,f
	goto	u245
	movf	0+(??_MidTick_Step+0)+0,w
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	179
	
l785:	
	fcall	_Con_Step
	line	180
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_MidTick_Step
	__end_of_MidTick_Step:
	signat	_MidTick_Step,89
	global	_Con_Step

;; *************** function _Con_Step *****************
;; Defined at:
;;		line 275 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Seq_Step
;;		_Voix_Step
;;		_Voix_Trigger
;; This function is called by:
;;		_MidTick_Step
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1,group=0
	line	275
global __ptext2
__ptext2:	;psect for function _Con_Step
psect	text2
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	275
	global	__size_of_Con_Step
	__size_of_Con_Step	equ	__end_of_Con_Step-_Con_Step
	
_Con_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Con_Step: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	277
	
l761:	
	movlb 0	; select bank0
	movf	(_Con_Tempo),w
	movwf	(??_Con_Step+0)+0
	clrf	(??_Con_Step+0)+0+1
	movf	0+(??_Con_Step+0)+0,w
	addwf	(_Con_Tempo_Phase),f
	movf	1+(??_Con_Step+0)+0,w
	addwfc	(_Con_Tempo_Phase+1),f
	line	279
	movlw	09h
	subwf	(_Con_Tempo_Phase+1),w
	movlw	0C4h
	skipnz
	subwf	(_Con_Tempo_Phase),w
	skipc
	goto	u211
	goto	u210
u211:
	goto	l89
u210:
	line	281
	
l763:	
	movlw	0C4h
	subwf	(_Con_Tempo_Phase),f
	movlw	09h
	subwfb	(_Con_Tempo_Phase+1),f
	line	283
	
l765:	
	movlw	(low(_Con_Output|((0x0)<<8)))&0ffh
	movwf	(??_Con_Step+0)+0
	movf	(??_Con_Step+0)+0,w
	movwf	(Seq_Step@output)
	movlw	(low(_Seq_1|((0x0)<<8)))&0ffh
	fcall	_Seq_Step
	xorlw	low(0)&0ffh
	skipnz
	goto	u221
	goto	u220
u221:
	goto	l90
u220:
	line	285
	
l767:	
	movlb 0	; select bank0
	movf	(_Con_Output),w
	movwf	(??_Con_Step+0)+0
	movf	(??_Con_Step+0)+0,w
	movwf	(Voix_Trigger@key)
	movlw	(low(_Vo_1|((0x0)<<8)))&0ffh
	fcall	_Voix_Trigger
	line	286
	
l90:	
	line	288
	movlw	(low(_Con_Output|((0x0)<<8)+01h))&0ffh
	movlb 0	; select bank0
	movwf	(??_Con_Step+0)+0
	movf	(??_Con_Step+0)+0,w
	movwf	(Seq_Step@output)
	movlw	(low(_Seq_2|((0x0)<<8)))&0ffh
	fcall	_Seq_Step
	xorlw	low(0)&0ffh
	skipnz
	goto	u231
	goto	u230
u231:
	goto	l89
u230:
	line	290
	
l769:	
	movlb 0	; select bank0
	movf	0+(_Con_Output)+01h,w
	movwf	(??_Con_Step+0)+0
	movf	(??_Con_Step+0)+0,w
	movwf	(Voix_Trigger@key)
	movlw	(low(_Vo_2|((0x0)<<8)))&0ffh
	fcall	_Voix_Trigger
	goto	l89
	line	291
	
l91:	
	line	293
	
l89:	
	line	295
	movlw	(low(_Vo_1|((0x0)<<8)))&0ffh
	fcall	_Voix_Step
	line	296
	movlw	(low(_Vo_2|((0x0)<<8)))&0ffh
	fcall	_Voix_Step
	line	297
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_Con_Step
	__end_of_Con_Step:
	signat	_Con_Step,89
	global	_Voix_Trigger

;; *************** function _Voix_Trigger *****************
;; Defined at:
;;		line 374 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;;  key             1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  this            1    7[BANK0 ] PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       6       0       0
;;      Totals:         0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Con_Step
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1,group=0
	line	374
global __ptext3
__ptext3:	;psect for function _Voix_Trigger
psect	text3
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	374
	global	__size_of_Voix_Trigger
	__size_of_Voix_Trigger	equ	__end_of_Voix_Trigger-_Voix_Trigger
	
_Voix_Trigger:	
;incstack = 0
	opt	stack 11
; Regs used in _Voix_Trigger: [wreg-fsr1h+status,2+status,0]
	movlb 0	; select bank0
	movwf	(Voix_Trigger@this)
	line	376
	
l751:	
	movf	(Voix_Trigger@key),w
	movwf	(??_Voix_Trigger+0)+0
	clrf	(??_Voix_Trigger+0)+0+1
	lslf	(??_Voix_Trigger+0)+0,f
	rlf	(??_Voix_Trigger+0)+1,f
	movf	0+(??_Voix_Trigger+0)+0,w
	addlw	0E8h
	movwf	(??_Voix_Trigger+2)+0
	movlw	0FFh
	addwfc	1+(??_Voix_Trigger+0)+0,w
	movwf	1+(??_Voix_Trigger+2)+0
	movlw	low(((_Voix_Key_Table)|8000h))
	movwf	(??_Voix_Trigger+4)+0
	movlw	high(((_Voix_Key_Table)|8000h))
	movwf	(??_Voix_Trigger+4)+0+1
	movf	0+(??_Voix_Trigger+2)+0,w
	addwf	0+(??_Voix_Trigger+4)+0,w
	movwf	fsr1l
	movf	1+(??_Voix_Trigger+2)+0,w
	addwfc	1+(??_Voix_Trigger+4)+0,w
	movwf	1+fsr1l
	movf	(Voix_Trigger@this),w
	addlw	02h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	377
	
l753:	
	movf	(Voix_Trigger@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movlw	0FFh
	movwi	[1]fsr1
	line	378
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_Voix_Trigger
	__end_of_Voix_Trigger:
	signat	_Voix_Trigger,8313
	global	_Voix_Step

;; *************** function _Voix_Step *****************
;; Defined at:
;;		line 380 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Auto vars:     Size  Location     Type
;;  this            1    4[BANK0 ] PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, pclath
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Con_Step
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1,group=0
	line	380
global __ptext4
__ptext4:	;psect for function _Voix_Step
psect	text4
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	380
	global	__size_of_Voix_Step
	__size_of_Voix_Step	equ	__end_of_Voix_Step-_Voix_Step
	
_Voix_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Voix_Step: [wreg-fsr1h+pclath]
	movlb 0	; select bank0
	movwf	(Voix_Step@this)
	line	382
	
l755:	
	movf	(Voix_Step@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Voix_Step+0)+0
	moviw	[1]fsr1
	movwf	(??_Voix_Step+0)+0+1
	movlw	low(_Voix_Decay|8000h)
	movwf	fsr0l
	movlw	high(_Voix_Decay|8000h)
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(??_Voix_Step+2)+0
	moviw	[1]fsr0
	movwf	(??_Voix_Step+2)+0+1
	movf	1+(??_Voix_Step+0)+0,w
	subwf	1+(??_Voix_Step+2)+0,w
	skipz
	goto	u205
	movf	0+(??_Voix_Step+0)+0,w
	subwf	0+(??_Voix_Step+2)+0,w
u205:
	skipnc
	goto	u201
	goto	u200
u201:
	goto	l759
u200:
	line	383
	
l757:	
	movlw	low(_Voix_Decay|8000h)
	movwf	fsr0l
	movlw	high(_Voix_Decay|8000h)
	movwf	fsr0h
	moviw	[0]fsr0
	movwf	(??_Voix_Step+0)+0
	moviw	[1]fsr0
	movwf	(??_Voix_Step+0)+0+1
	movf	(Voix_Step@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	0+(??_Voix_Step+0)+0,w
	subwf	indf1,f
	addfsr	fsr1,1
	movf	1+(??_Voix_Step+0)+0,w
	subwfb	indf1,f
	addfsr	fsr1,-1
	goto	l122
	line	384
	
l120:	
	line	385
	
l759:	
	movf	(Voix_Step@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	goto	l122
	
l121:	
	line	386
	
l122:	
	return
	opt stack 0
GLOBAL	__end_of_Voix_Step
	__end_of_Voix_Step:
	signat	_Voix_Step,4217
	global	_Seq_Step

;; *************** function _Seq_Step *****************
;; Defined at:
;;		line 311 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Seq_2(6), Seq_1(6), 
;;  output          1    0[BANK0 ] PTR unsigned char 
;;		 -> Con_Output(2), 
;; Auto vars:     Size  Location     Type
;;  this            1    5[BANK0 ] PTR struct .
;;		 -> Seq_2(6), Seq_1(6), 
;;  data            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       1       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       3       0       0
;;      Totals:         0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Con_Step
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1,group=0
	line	311
global __ptext5
__ptext5:	;psect for function _Seq_Step
psect	text5
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	311
	global	__size_of_Seq_Step
	__size_of_Seq_Step	equ	__end_of_Seq_Step-_Seq_Step
	
_Seq_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Seq_Step: [wreg-fsr1h+status,2+status,0]
	movlb 0	; select bank0
	movwf	(Seq_Step@this)
	line	313
	
l723:	
	movf	(Seq_Step@this),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	subwf	indf1,f
	btfsc	status,2
	goto	u151
	goto	u150
u151:
	goto	l729
u150:
	
l725:	
	movlw	low(0)
	goto	l101
	
l727:	
	goto	l101
	
l100:	
	goto	l729
	line	315
	
l102:	
	line	317
	
l729:	
	movf	(Seq_Step@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Seq_Step+0)+0
	moviw	[1]fsr1
	movwf	(??_Seq_Step+0)+0+1
	movf	0+(??_Seq_Step+0)+0,w
	movwf	fsr1l
	movf	1+(??_Seq_Step+0)+0,w
	movwf	fsr1h

	movf	indf1,w
	movwf	(??_Seq_Step+2)+0
	movf	(??_Seq_Step+2)+0,w
	movwf	(Seq_Step@data)
	movf	(Seq_Step@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	321
	
l731:	
	movlw	low(021h)
	subwf	(Seq_Step@data),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l739
u160:
	line	323
	
l733:	
	movf	(Seq_Step@data),w
	movwf	(??_Seq_Step+0)+0
	movlw	05h
u175:
	lsrf	(??_Seq_Step+0)+0,f
	decfsz	wreg,f
	goto	u175
	movf	0+(??_Seq_Step+0)+0,w
	addlw	low(_Seq_Len_Table|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_Seq_Step+1)+0
	movf	(Seq_Step@this),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Seq_Step+1)+0,w
	movwf	indf1
	line	325
	movf	(Seq_Step@this),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Seq_Step@data),w
	andlw	01Fh
	addwf	indf1,w
	movwf	(??_Seq_Step+0)+0
	movf	(Seq_Step@output),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Seq_Step+0)+0,w
	movwf	indf1
	line	326
	
l735:	
	movlw	low(01h)
	goto	l101
	
l737:	
	goto	l101
	line	327
	
l103:	
	line	331
	
l739:	
	movf	((Seq_Step@data)),w
	btfss	status,2
	goto	u181
	goto	u180
u181:
	goto	l743
u180:
	line	333
	
l741:	
	movf	(Seq_Step@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Seq_Step@this),w
	addlw	02h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	334
	goto	l729
	line	335
	
l104:	
	line	339
	
l743:	
		decf	((Seq_Step@data)),w
	btfss	status,2
	goto	u191
	goto	u190
u191:
	goto	l729
u190:
	line	341
	
l745:	
	movf	(Seq_Step@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Seq_Step+0)+0
	moviw	[1]fsr1
	movwf	(??_Seq_Step+0)+0+1
	movf	0+(??_Seq_Step+0)+0,w
	movwf	fsr1l
	movf	1+(??_Seq_Step+0)+0,w
	movwf	fsr1h

	movf	indf1,w
	movwf	(??_Seq_Step+2)+0
	movf	(Seq_Step@this),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Seq_Step+2)+0,w
	movwf	indf1
	movf	(Seq_Step@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	01h
	addwf	indf1,f
	addfsr	fsr1,1
	skipnc
	incf	indf1,f
	line	342
	goto	l729
	line	343
	
l106:	
	goto	l729
	line	345
	
l105:	
	line	315
	goto	l729
	
l107:	
	line	346
	
l747:	
	movlw	low(0)
	goto	l101
	
l749:	
	line	347
	
l101:	
	return
	opt stack 0
GLOBAL	__end_of_Seq_Step
	__end_of_Seq_Step:
	signat	_Seq_Step,8313
	global	_Con_Init

;; *************** function _Con_Init *****************
;; Defined at:
;;		line 266 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
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
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Seq_Init
;;		_Voix_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1,group=0
	line	266
global __ptext6
__ptext6:	;psect for function _Con_Init
psect	text6
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	266
	global	__size_of_Con_Init
	__size_of_Con_Init	equ	__end_of_Con_Init-_Con_Init
	
_Con_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _Con_Init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	268
	
l779:	
	movlw	low(_Seq_A_1)
	movlb 0	; select bank0
	movwf	(Seq_Init@start)
	movlw	high(_Seq_A_1)
	movwf	(Seq_Init@start+1)
	movlw	(low(_Seq_1|((0x0)<<8)))&0ffh
	fcall	_Seq_Init
	line	269
	movlw	low(_Seq_A_2)
	movlb 0	; select bank0
	movwf	(Seq_Init@start)
	movlw	high(_Seq_A_2)
	movwf	(Seq_Init@start+1)
	movlw	(low(_Seq_2|((0x0)<<8)))&0ffh
	fcall	_Seq_Init
	line	271
	movlw	(low(_Vo_1|((0x0)<<8)))&0ffh
	fcall	_Voix_Init
	line	272
	movlw	(low(_Vo_2|((0x0)<<8)))&0ffh
	fcall	_Voix_Init
	line	273
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_Con_Init
	__end_of_Con_Init:
	signat	_Con_Init,89
	global	_Voix_Init

;; *************** function _Voix_Init *****************
;; Defined at:
;;		line 366 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Auto vars:     Size  Location     Type
;;  this            1    1[BANK0 ] PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Con_Init
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1,group=0
	line	366
global __ptext7
__ptext7:	;psect for function _Voix_Init
psect	text7
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	366
	global	__size_of_Voix_Init
	__size_of_Voix_Init	equ	__end_of_Voix_Init-_Voix_Init
	
_Voix_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _Voix_Init: [wreg+fsr1l+fsr1h+status,2+status,0]
	movlb 0	; select bank0
	movwf	(Voix_Init@this)
	line	368
	
l773:	
	movf	(Voix_Init@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	369
	movlw	low(06Ah)
	movwf	(??_Voix_Init+0)+0
	movf	(Voix_Init@this),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Voix_Init+0)+0,w
	movwf	indf1
	line	370
	
l775:	
	movf	(Voix_Init@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	371
	
l777:	
	movf	(Voix_Init@this),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	movlw	0
	movwi	[0]fsr1
	movwi	[1]fsr1
	line	372
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_Voix_Init
	__end_of_Voix_Init:
	signat	_Voix_Init,4217
	global	_Seq_Init

;; *************** function _Seq_Init *****************
;; Defined at:
;;		line 302 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Seq_2(6), Seq_1(6), 
;;  start           2    0[BANK0 ] PTR unsigned char 
;;		 -> Seq_A_2(43), Seq_A_1(64), 
;; Auto vars:     Size  Location     Type
;;  this            1    3[BANK0 ] PTR struct .
;;		 -> Seq_2(6), Seq_1(6), 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       1       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Con_Init
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1,group=0
	line	302
global __ptext8
__ptext8:	;psect for function _Seq_Init
psect	text8
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	302
	global	__size_of_Seq_Init
	__size_of_Seq_Init	equ	__end_of_Seq_Init-_Seq_Init
	
_Seq_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _Seq_Init: [wreg+fsr1l+fsr1h+status,2+status,0]
	movlb 0	; select bank0
	movwf	(Seq_Init@this)
	line	304
	
l771:	
	movf	(Seq_Init@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Seq_Init@start),w
	movwi	[0]fsr1
	movf	(Seq_Init@start+1),w
	movwi	[1]fsr1
	movf	(Seq_Init@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	((Seq_Init@start)),w
	movwi	[0]fsr1
	movf	((Seq_Init@start+1)),w
	movwi	[1]fsr1
	line	305
	movlw	low(020h)
	movwf	(??_Seq_Init+0)+0
	movf	(Seq_Init@this),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_Seq_Init+0)+0,w
	movwf	indf1
	line	306
	movf	(Seq_Init@this),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	incf	indf1,f
	line	307
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_Seq_Init
	__end_of_Seq_Init:
	signat	_Seq_Init,8313
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 183 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  acc             2   11[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         2       0       0       0
;;      Temps:          3       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
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
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	183
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 11
	bsf int$flags,0 ;set compiler interrupt flag (level 1)
; Regs used in _ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??_ISR+2)
	line	185
	
i1l833:	
	btfss	(137/8),(137)&7	;volatile
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l77
u27_20:
	line	187
	
i1l835:	
	bcf	(137/8),(137)&7	;volatile
	line	189
	
i1l837:	
	movlw	01h
	subwf	(_MidTick_DivCtr),f
	btfss	status,2
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l843
u28_20:
	line	191
	
i1l839:	
	movlw	low(040h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_MidTick_DivCtr)
	line	192
	
i1l841:	
	movlw	low(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	addwf	(_MidTick_Task),f
	goto	i1l843
	line	193
	
i1l76:	
	line	195
	
i1l843:	
	clrf	(ISR@acc)
	clrf	(ISR@acc+1)
	line	196
	
i1l845:	
	movlw	(low(_Vo_1|((0x0)<<8)))&0ffh
	fcall	_Voix_int_Step
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	addwf	(ISR@acc),f
	movf	1+(??_ISR+0)+0,w
	addwfc	(ISR@acc+1),f
	line	197
	
i1l847:	
	movlw	(low(_Vo_2|((0x0)<<8)))&0ffh
	fcall	_Voix_int_Step
	movwf	(??_ISR+0)+0
	clrf	(??_ISR+0)+0+1
	movf	0+(??_ISR+0)+0,w
	addwf	(ISR@acc),f
	movf	1+(??_ISR+0)+0,w
	addwfc	(ISR@acc+1),f
	line	198
	
i1l849:	
	movf	(ISR@acc+1),w
	movlb 5	; select bank5
	movwf	(657+1)^0280h	;volatile
	movf	(ISR@acc),w
	movwf	(657)^0280h	;volatile
	goto	i1l77
	line	199
	
i1l75:	
	line	200
	
i1l77:	
	movf	(??_ISR+2),w
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
;;		line 388 in file "C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
;; Parameters:    Size  Location     Type
;;  this            1    wreg     PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;; Auto vars:     Size  Location     Type
;;  this            1    7[COMMON] PTR struct .
;;		 -> Vo_2(7), Vo_1(7), 
;;  out             1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         4       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1,group=0
	line	388
global __ptext10
__ptext10:	;psect for function _Voix_int_Step
psect	text10
	file	"C:\17\D\GitHub\17\PIC\1\16F18313 - 02\Main.c"
	line	388
	global	__size_of_Voix_int_Step
	__size_of_Voix_int_Step	equ	__end_of_Voix_int_Step-_Voix_int_Step
	
_Voix_int_Step:	
;incstack = 0
	opt	stack 11
; Regs used in _Voix_int_Step: [wreg-fsr1h+status,2+status,0]
	movwf	(Voix_int_Step@this)
	line	390
	
i1l787:	
	movf	(Voix_int_Step@this),w
	addlw	04h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_Voix_int_Step+0)+0
	clrf	(??_Voix_int_Step+0)+0+1
	movf	(Voix_int_Step@this),w
	addlw	05h
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Voix_int_Step+2)+0
	moviw	[1]fsr1
	movwf	(??_Voix_int_Step+2)+0+1
	movf	(??_Voix_int_Step+2)+1,w
	movwf	(??_Voix_int_Step+2)+0
	clrf	(??_Voix_int_Step+2)+1
	movf	1+(??_Voix_int_Step+0)+0,w
	subwf	1+(??_Voix_int_Step+2)+0,w
	skipz
	goto	u25_25
	movf	0+(??_Voix_int_Step+0)+0,w
	subwf	0+(??_Voix_int_Step+2)+0,w
u25_25:
	skipc
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l791
u25_20:
	
i1l789:	
	movf	(Voix_int_Step@this),w
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_Voix_int_Step+0)+0
	moviw	[1]fsr1
	movwf	(??_Voix_int_Step+0)+0+1
	movf	(??_Voix_int_Step+0)+1,w
	movwf	(??_Voix_int_Step+0)+0
	clrf	(??_Voix_int_Step+0)+1
	movf	0+(??_Voix_int_Step+0)+0,w
	movwf	(_Voix_int_Step$184)
	movf	1+(??_Voix_int_Step+0)+0,w
	movwf	(_Voix_int_Step$184+1)
	goto	i1l793
	
i1l126:	
	
i1l791:	
	clrf	(_Voix_int_Step$184)
	clrf	(_Voix_int_Step$184+1)
	goto	i1l793
	
i1l128:	
	
i1l793:	
	movf	(_Voix_int_Step$184),w
	movwf	(??_Voix_int_Step+0)+0
	movf	(??_Voix_int_Step+0)+0,w
	movwf	(Voix_int_Step@out)
	line	391
	
i1l795:	
	movf	(Voix_int_Step@this),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(Voix_int_Step@this),w
	addlw	05h
	movwf	fsr0l
	clrf fsr0h	
	
	moviw	[0]fsr1
	addwf	indf0,f
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,f
	addfsr	fsr0,-1
	line	392
	
i1l797:	
	movf	(Voix_int_Step@out),w
	goto	i1l129
	
i1l799:	
	line	393
	
i1l129:	
	return
	opt stack 0
GLOBAL	__end_of_Voix_int_Step
	__end_of_Voix_int_Step:
	signat	_Voix_int_Step,4217
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
