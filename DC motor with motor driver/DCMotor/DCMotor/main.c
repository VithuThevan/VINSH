/*
 * DCMotor.c
 *
 * Created: 4/17/2021 4:07:31 PM
 * Author : sharmini ravindran
 */ 

#define F_CPU 8000000UL
#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#define wheel 15.71
//#include "USART_RS232_H_file.h"


int main(void) {

	char Data_in;
	DDRB = 0xff;
    float t;
	while(1) {
	
		if (Data_in == '1')
		{

			DDRC=0xff;
			TCCR0 = 0b01110101;
			DDRB|=(1<<PB3);
			OCR0 = 250;
			TCNT0 = 0;
			{
				
				double distance;
				t=(((distance-6)/wheel)/10)*60*1000; //distance is obtained from ultrasonic sensor
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
		}

		
		//USART_SendString("Do you want to clean the top part of the fan?");   bluethooth code
		//USART_SendString("If yes, press number 2");
		//USART_SendString("If no, press number 3");
		if(Data_in == '2') {
			PORTC=0x01;
			_delay_ms(t);
			PORTC=0x00;
			PORTB=0x01;
			/* after cleaning top part of the fan*/
			PORTC=0x02;
			_delay_ms(t);
			PORTC=0x00;

		}

		else if(Data_in == '3')
		{
			PORTC=0x00;
		}

		
	}
}



