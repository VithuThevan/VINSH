EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega32-16PU U1
U 1 1 6079B136
P 4950 3100
F 0 "U1" H 4950 1011 50  0000 C CNN
F 1 "ATmega32-16PU" H 4950 920 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 4950 3100 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 4950 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 6079C288
P 2850 1800
F 0 "Y1" H 2850 2068 50  0000 C CNN
F 1 "Crystal" H 2850 1977 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 2850 1800 50  0001 C CNN
F 3 "~" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6079F8F3
P 3850 2550
F 0 "C3" H 3965 2596 50  0000 L CNN
F 1 "C" H 3965 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3888 2400 50  0001 C CNN
F 3 "~" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 2500 1800
Wire Wire Line
	2500 1800 2700 1800
Wire Wire Line
	3000 1800 3100 1800
Wire Wire Line
	3350 2250 3350 5600
Wire Wire Line
	3350 5600 3850 5600
Wire Wire Line
	4950 5600 4950 5100
Wire Wire Line
	4350 1600 2500 1600
Wire Wire Line
	2500 1600 2500 1800
Connection ~ 2500 1800
$Comp
L Device:R R1
U 1 1 607A1801
P 3850 1200
F 0 "R1" H 3920 1246 50  0000 L CNN
F 1 "R" H 3920 1155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3780 1200 50  0001 C CNN
F 3 "~" H 3850 1200 50  0001 C CNN
	1    3850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1400 3850 1400
Wire Wire Line
	3850 1400 3850 1350
Wire Wire Line
	3850 2400 3850 1400
Connection ~ 3850 1400
Wire Wire Line
	3850 2700 3850 3000
Connection ~ 3850 5600
Wire Wire Line
	3850 5600 4950 5600
Wire Wire Line
	3850 1050 3850 900 
Wire Wire Line
	3850 900  4950 900 
Wire Wire Line
	4950 900  4950 1100
Connection ~ 4950 900 
Connection ~ 5950 900 
Connection ~ 4950 5600
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 607C42A5
P 7650 2100
F 0 "J1" H 7622 2074 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7622 1983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7650 2100 50  0001 C CNN
F 3 "~" H 7650 2100 50  0001 C CNN
	1    7650 2100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 607C70FA
P 7650 2700
F 0 "J2" H 7622 2674 50  0000 R CNN
F 1 "Conn_01x02_Male" H 7622 2583 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 7650 2700 50  0001 C CNN
F 3 "~" H 7650 2700 50  0001 C CNN
	1    7650 2700
	-1   0    0    -1  
$EndComp
Text Notes 7900 2150 0    50   ~ 10
DC MOTOR 1
Text Notes 7900 2750 0    50   ~ 10
DC MOTOR 2
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 607C986F
P 8800 1350
F 0 "J3" H 8908 1631 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8908 1540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 8800 1350 50  0001 C CNN
F 3 "~" H 8800 1350 50  0001 C CNN
	1    8800 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5550 1350 5550 1400
Wire Wire Line
	5800 1450 5800 4700
Wire Wire Line
	5800 4700 5550 4700
Wire Wire Line
	5550 1350 8600 1350
Wire Wire Line
	5800 1450 8600 1450
Wire Wire Line
	8600 1250 8550 1250
Wire Wire Line
	6950 1250 6950 900 
Text Notes 8900 1400 0    50   ~ 10
ULTRASONIC SENSOR
Wire Wire Line
	7450 2700 7200 2700
Wire Wire Line
	7450 2100 7200 2100
$Comp
L Driver_Motor:L293D U2
U 1 1 607A3557
P 6700 2700
F 0 "U2" H 6700 3881 50  0000 C CNN
F 1 "L293D" H 6700 3790 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 6950 1950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/l293.pdf" H 6400 3400 50  0001 C CNN
	1    6700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2200 7200 2300
Wire Wire Line
	7200 2200 7450 2200
Wire Wire Line
	7450 2800 7200 2800
Wire Wire Line
	7200 2800 7200 2900
Wire Wire Line
	6500 3500 6500 3700
Wire Wire Line
	6600 3500 6600 3700
Wire Wire Line
	6600 3700 6500 3700
Connection ~ 6500 3700
Wire Wire Line
	6500 3700 6500 5600
Wire Wire Line
	6800 3500 6800 3700
Wire Wire Line
	6800 3700 6700 3700
Connection ~ 6600 3700
Wire Wire Line
	6900 3500 6900 3700
Wire Wire Line
	6900 3700 6800 3700
Connection ~ 6800 3700
Wire Wire Line
	8450 1550 8600 1550
Connection ~ 6900 3700
Wire Wire Line
	5950 3100 6200 3100
Wire Wire Line
	5950 900  5950 3100
Wire Wire Line
	6200 2600 6200 2500
Wire Wire Line
	5550 2600 6200 2600
Wire Wire Line
	5550 3200 6000 3200
Wire Wire Line
	6000 3200 6000 2100
Wire Wire Line
	6000 2100 6200 2100
Wire Wire Line
	5550 3300 6050 3300
Wire Wire Line
	6050 3300 6050 2300
Wire Wire Line
	6050 2300 6200 2300
Wire Wire Line
	6200 2700 5700 2700
Wire Wire Line
	5700 2700 5700 2300
Wire Wire Line
	5700 2300 5550 2300
Wire Wire Line
	5550 2400 5600 2400
Wire Wire Line
	5600 2400 5600 2900
Wire Wire Line
	5600 2900 6200 2900
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 60801A79
P 9200 4650
F 0 "J4" H 9308 4931 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9308 4840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9200 4650 50  0001 C CNN
F 3 "~" H 9200 4650 50  0001 C CNN
	1    9200 4650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 608031A1
P 9250 5400
F 0 "J6" H 9358 5681 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9358 5590 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9250 5400 50  0001 C CNN
F 3 "~" H 9250 5400 50  0001 C CNN
	1    9250 5400
	-1   0    0    -1  
$EndComp
Text Notes 9500 3800 0    49   ~ 10
BLUETHOOTH
Text Notes 9500 4650 0    49   ~ 10
SERVO MOTOR 1
Text Notes 9550 5350 0    49   ~ 10
SERVO MOTOR 2
Wire Wire Line
	9050 5500 5550 5500
Wire Wire Line
	5550 5500 5550 4800
Wire Wire Line
	9000 4750 6000 4750
Wire Wire Line
	6000 4750 6000 4500
Wire Wire Line
	6000 4500 5550 4500
Connection ~ 8450 3700
Wire Wire Line
	6900 3700 8450 3700
Wire Wire Line
	8450 5300 9050 5300
Wire Wire Line
	9000 4550 8450 4550
Wire Wire Line
	8450 3700 8450 4550
Connection ~ 8450 4550
Wire Wire Line
	8450 4550 8450 5300
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 60829327
P 9250 3700
F 0 "J5" H 9358 3981 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9358 3890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9250 3700 50  0001 C CNN
F 3 "~" H 9250 3700 50  0001 C CNN
	1    9250 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 3700 8450 3700
Wire Wire Line
	5550 4100 7000 4100
Wire Wire Line
	7000 4100 7000 3800
Wire Wire Line
	7000 3800 9050 3800
Wire Wire Line
	5550 4200 7100 4200
Wire Wire Line
	7100 4200 7100 3900
Wire Wire Line
	7100 3900 9050 3900
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 60833D54
P 10200 2300
F 0 "J7" H 10228 2326 50  0000 L CNN
F 1 "Conn_01x03_Female" H 10228 2235 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 10200 2300 50  0001 C CNN
F 3 "~" H 10200 2300 50  0001 C CNN
	1    10200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2200 8450 2200
Wire Wire Line
	8450 1550 8450 2200
Connection ~ 8450 2200
Wire Wire Line
	8450 2200 8450 3700
Wire Wire Line
	6600 1700 6600 900 
Wire Wire Line
	5950 900  6600 900 
Connection ~ 6600 900 
Wire Wire Line
	6600 900  6950 900 
Wire Wire Line
	8550 1250 8550 2300
Wire Wire Line
	8550 2300 10000 2300
Connection ~ 8550 1250
Wire Wire Line
	8550 1250 6950 1250
Wire Wire Line
	9050 3600 8550 3600
Wire Wire Line
	8550 3600 8550 2300
Connection ~ 8550 2300
Wire Wire Line
	8550 3600 8550 4650
Wire Wire Line
	8550 4650 9000 4650
Connection ~ 8550 3600
Wire Wire Line
	9050 5400 8550 5400
Wire Wire Line
	8550 5400 8550 4650
Connection ~ 8550 4650
Wire Wire Line
	9200 1700 9200 2400
Wire Wire Line
	9200 2400 10000 2400
Text Notes 9850 2200 0    39   ~ 0
GND
Text Notes 9900 2300 0    39   ~ 0
5V
Text Notes 9900 2400 0    39   ~ 0
12V
$Comp
L Mechanical:MountingHole H1
U 1 1 608431D0
P 2000 3500
F 0 "H1" H 2100 3546 50  0000 L CNN
F 1 "MountingHole" H 2100 3455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2000 3500 50  0001 C CNN
F 3 "~" H 2000 3500 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60843882
P 2000 3800
F 0 "H2" H 2100 3846 50  0000 L CNN
F 1 "MountingHole" H 2100 3755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2000 3800 50  0001 C CNN
F 3 "~" H 2000 3800 50  0001 C CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60843BFD
P 2000 4200
F 0 "H3" H 2100 4246 50  0000 L CNN
F 1 "MountingHole" H 2100 4155 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2000 4200 50  0001 C CNN
F 3 "~" H 2000 4200 50  0001 C CNN
	1    2000 4200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 6084428A
P 2000 4550
F 0 "H4" H 2100 4596 50  0000 L CNN
F 1 "MountingHole" H 2100 4505 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 2000 4550 50  0001 C CNN
F 3 "~" H 2000 4550 50  0001 C CNN
	1    2000 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 608486E5
P 3850 3200
F 0 "SW1" V 3896 3112 50  0000 R CNN
F 1 "SW_SPST" V 3805 3112 50  0000 R CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_9.78x4.72mm_W7.62mm_P2.54mm" H 3850 3200 50  0001 C CNN
F 3 "~" H 3850 3200 50  0001 C CNN
	1    3850 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 3400 3850 5600
NoConn ~ 4350 2000
NoConn ~ 5550 1500
NoConn ~ 5050 1100
NoConn ~ 5550 1600
NoConn ~ 5550 1700
NoConn ~ 5550 1800
NoConn ~ 5550 1900
NoConn ~ 5550 2000
NoConn ~ 5550 2100
NoConn ~ 5550 2500
NoConn ~ 5550 2700
NoConn ~ 5550 2800
NoConn ~ 5550 2900
NoConn ~ 5550 3000
NoConn ~ 5550 3400
NoConn ~ 5550 3500
NoConn ~ 5550 3600
NoConn ~ 5550 3700
NoConn ~ 5550 3800
NoConn ~ 5550 3900
NoConn ~ 5550 4300
NoConn ~ 5550 4400
NoConn ~ 5550 4600
$Comp
L power:+5V #PWR0101
U 1 1 607DC820
P 4950 900
F 0 "#PWR0101" H 4950 750 50  0001 C CNN
F 1 "+5V" H 4965 1073 50  0000 C CNN
F 2 "" H 4950 900 50  0001 C CNN
F 3 "" H 4950 900 50  0001 C CNN
	1    4950 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 607DCF5D
P 4950 5600
F 0 "#PWR0102" H 4950 5350 50  0001 C CNN
F 1 "GND" H 4955 5427 50  0000 C CNN
F 2 "" H 4950 5600 50  0001 C CNN
F 3 "" H 4950 5600 50  0001 C CNN
	1    4950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1700 6900 1700
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 607DFF01
P 6900 1700
F 0 "#FLG0103" H 6900 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 6900 1873 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "~" H 6900 1700 50  0001 C CNN
	1    6900 1700
	1    0    0    -1  
$EndComp
Connection ~ 6900 1700
Wire Wire Line
	6900 1700 9200 1700
Wire Wire Line
	4950 5600 6500 5600
Wire Wire Line
	4950 900  5250 900 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 607EFB5F
P 5250 900
F 0 "#FLG0101" H 5250 975 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 1073 50  0000 C CNN
F 2 "" H 5250 900 50  0001 C CNN
F 3 "~" H 5250 900 50  0001 C CNN
	1    5250 900 
	1    0    0    -1  
$EndComp
Connection ~ 5250 900 
Wire Wire Line
	5250 900  5950 900 
Wire Wire Line
	3100 1800 3100 1900
Connection ~ 3100 1800
Wire Wire Line
	3100 1800 4350 1800
$Comp
L Device:C C1
U 1 1 6079F569
P 2500 2100
F 0 "C1" H 2615 2146 50  0000 L CNN
F 1 "C" H 2615 2055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 2538 1950 50  0001 C CNN
F 3 "~" H 2500 2100 50  0001 C CNN
	1    2500 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 6079F218
P 3100 2050
F 0 "C2" H 3215 2096 50  0000 L CNN
F 1 "C" H 3215 2005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 3138 1900 50  0001 C CNN
F 3 "~" H 3100 2050 50  0001 C CNN
	1    3100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2200 3100 2250
Wire Wire Line
	2500 2250 3100 2250
Connection ~ 3100 2250
Wire Wire Line
	3100 2250 3350 2250
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6083B076
P 6700 3700
F 0 "#FLG0102" H 6700 3775 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 3873 50  0000 C CNN
F 2 "" H 6700 3700 50  0001 C CNN
F 3 "~" H 6700 3700 50  0001 C CNN
	1    6700 3700
	1    0    0    -1  
$EndComp
Connection ~ 6700 3700
Wire Wire Line
	6700 3700 6600 3700
$EndSCHEMATC
