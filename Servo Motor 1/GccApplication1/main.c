/*
 * GccApplication1.c
 *
 * Created: 13/04/2021 11:37:24
 * Author : HP
 */ 

#define F_CPU 8000000UL		/* Define CPU Frequency e.g. here its 8MHz */
#include <avr/io.h>		/* Include AVR std. library file */
#include <stdio.h>		/* Include std. library file */
#include <util/delay.h>		/* Include Delay header file */

int main(void)
{

	DDRD|=(1<<PD7); /* set OC2 pin as the output*/
	TCNT1 = 0;		/* Set timer1 count zero */
	ICR1 = 2499;		/* Set TOP count for timer1 in ICR1 register */

	/* Set Fast PWM, TOP in ICR1, Clear OC2 on compare match, clk/64 */

	TCCR2 = (1<<COM21)|(1<<CS22)|(1<<WGM21)|(1<<WGM20);
	//initial position
	
	//fan lower cleaning part
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 140;	/* Set servo shaft at -90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 234;	/* Set servo at +90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 140;	/* Set servo shaft at -90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 234;	/* Set servo at +90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	
	//cleaning the top part
	_delay_ms(5000);
	OCR2 = 140;	/* Set servo shaft at -90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 234;	/* Set servo at +90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 140;	/* Set servo shaft at -90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
	_delay_ms(5000);
	OCR2 = 234;	/* Set servo at +90° position */
	_delay_ms(5000);
	OCR2 = 187.5;	/* Set servo shaft at 0° position */
}


