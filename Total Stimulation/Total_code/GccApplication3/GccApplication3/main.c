//Author Group Number 24



#define F_CPU 8000000UL
#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#define Trigger_pin PA0
#define wheel 15.71
#include "USART_RS232_H_file.h"

int TimerOverflow=0;
ISR(TIMER1_OVF_vect)
{
	TimerOverflow++;
}
int main(void) {

	char Data_in;
	DDRB = 0xff;
	USART_Init(9600);

	while(1) {
		Data_in = USART_RxChar();
		label1:
		USART_SendString("To Start the machine, press 1.");
		if (Data_in == '1')
		{
			long count;
			double distance;
			DDRA = 0x01;
			PORTD = 0xFF;
			sei();
			TIMSK = (1<<TOIE1);
			TCCR1A = 0;
			while(1)
				
				_delay_us(10);
				PORTA &= (~(1<<Trigger_pin));
				TCNT1 = 0;
				TCCR1B = 0x41;
				TIFR = 1<<ICF1;
				TIFR = 1<<TOV1;
				
				while((TIFR &(1<<ICF1)) == 0);

				TCNT1 = 0;
				TCCR1B = 0x01;
				TIFR = 1<<ICF1;
				TIFR = 1<<TOV1;
				TimerOverflow = 0;

				while ((TIFR & (1<<ICF1)) == 0);

				count = ICR1 + (65535*TimerOverflow);
				distance = (double)count/ 466.47;
                DDRA =0x00;

			DDRC=0xff;
			TCCR0 = 0b01110101;
			DDRB|=(1<<PB3);
			OCR0 = 250;
			TCNT0 = 0;
			{
				float t;
				t=(((distance-6)/wheel)/10)*60*1000;
				int j=0;
				while(j<5)
				{

					PORTC = 0x01;
					_delay_ms(t);
					PORTC = 0x00;
					_delay_ms(1000);
					PORTC = 0x02;
					_delay_ms(t);
					PORTC = 0x00;
					_delay_ms(1000);
					j++;
				}
			}
		}else
		USART_SendString("Select Proper Option");
		goto label1;

		label2:
		USART_SendString("Do you want to clean the top part of the fan?");
		USART_SendString("If yes, press number 2");
		USART_SendString("If no, press number 3");
		if(Data_in == '2') {
			float t;
			PORTB=0x01;
			PORTC=0x01;
			_delay_ms(t);
			PORTC=0x00;
			DDRD |=(1<<PD5);
			TCNT1 = 0;
			ICR1 = 2499;
			TCCR1A = (1<<WGM11)|(1<<COM1A1);
			TCCR1B = (1<<WGM12)|(1<<WGM13)|(1<<CS10)|(1<<CS11);
			
			DDRD |= (1<<PD7);
			TCNT0 = 0;
			ICR1 = 2499;
			TCCR2 = (1<<COM21)|(1<<CS22)|(1<<WGM21)|(1<<WGM20);
			
			//initial part
			OCR1A = 140;	/* Set servo shaft at -90° position */
			_delay_ms(5000);
			
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
			
			//cleaning the middle part
			OCR1A = 187.5;	/* Set servo shaft at 0° position */
			_delay_ms(5000);
			OCR1A = 234;	/* Set servo at +90° position */
			_delay_ms(5000);
			OCR1A = 187.5;	/* Set servo shaft at 0° position */
			_delay_ms(5000);
			OCR1A = 140;	/* Set servo shaft at -90° position */
			_delay_ms(5000);
			OCR1A = 187.5;	/* Set servo shaft at 0° position */
			_delay_ms(5000);
			OCR1A = 234;	/* Set servo at +90° position */
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
			

			PORTC=0x02;
			_delay_ms(t);
			PORTC=0x00;

		}

		else if(Data_in == '3')
		{
			PORTC=0x00;
		}

		else
		{
			USART_SendString("Select proper option");
			goto label2;
		}

	}
}


