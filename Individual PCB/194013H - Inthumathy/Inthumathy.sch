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
U 1 1 607B497A
P 6900 3650
F 0 "U1" H 6900 1561 50  0000 C CNN
F 1 "ATmega32-16PU" H 6900 1470 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 6900 3650 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc2503.pdf" H 6900 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 Bluetooth1
U 1 1 607B7AC4
P 9250 4650
F 0 "Bluetooth1" H 9330 4642 50  0000 L CNN
F 1 "Conn_01x04" H 9330 4551 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Horizontal" H 9250 4650 50  0001 C CNN
F 3 "~" H 9250 4650 50  0001 C CNN
	1    9250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4650 7800 4650
Wire Wire Line
	7800 4650 7800 4750
Wire Wire Line
	7800 4750 9050 4750
Wire Wire Line
	9050 4650 7900 4650
Wire Wire Line
	7900 4650 7900 4700
Wire Wire Line
	7900 4700 7600 4700
Wire Wire Line
	7600 4700 7600 4750
Wire Wire Line
	7600 4750 7500 4750
Wire Wire Line
	7650 2950 7650 4850
Wire Wire Line
	7650 6000 6900 6000
Wire Wire Line
	5750 6000 5750 4150
$Comp
L Connector_Generic:Conn_01x02 extern1
U 1 1 607B75B0
P 5550 4150
F 0 "extern1" H 5468 3825 50  0000 C CNN
F 1 "Conn_01x02" H 5468 3916 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 5550 4150 50  0001 C CNN
F 3 "~" H 5550 4150 50  0001 C CNN
	1    5550 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	9050 4850 7650 4850
Connection ~ 7650 4850
Wire Wire Line
	7650 4850 7650 6000
$Comp
L Connector_Generic:Conn_01x02 dcmotor1
U 1 1 607B45A4
P 8750 2850
F 0 "dcmotor1" H 8830 2842 50  0000 L CNN
F 1 "Conn_01x02" H 8830 2751 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 8750 2850 50  0001 C CNN
F 3 "~" H 8750 2850 50  0001 C CNN
	1    8750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2850 8550 2850
Wire Wire Line
	8550 2950 7650 2950
Wire Wire Line
	8150 1600 8150 4550
Wire Wire Line
	8150 4550 9050 4550
Wire Wire Line
	6900 5650 6900 6000
Connection ~ 6900 6000
Wire Wire Line
	6900 6000 5750 6000
Wire Wire Line
	6900 1650 6900 1600
Wire Wire Line
	6900 1600 8150 1600
$Comp
L Mechanical:MountingHole H3
U 1 1 607C2241
P 5200 3350
F 0 "H3" H 5300 3396 50  0000 L CNN
F 1 "MountingHole" H 5300 3305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 5200 3350 50  0001 C CNN
F 3 "~" H 5200 3350 50  0001 C CNN
	1    5200 3350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 607C20CE
P 5200 3100
F 0 "H2" H 5300 3146 50  0000 L CNN
F 1 "MountingHole" H 5300 3055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 5200 3100 50  0001 C CNN
F 3 "~" H 5200 3100 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 607C1F2D
P 5200 2750
F 0 "H1" H 5300 2796 50  0000 L CNN
F 1 "MountingHole" H 5300 2705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 5200 2750 50  0001 C CNN
F 3 "~" H 5200 2750 50  0001 C CNN
	1    5200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 607C6E8B
P 5750 6200
F 0 "#PWR0101" H 5750 5950 50  0001 C CNN
F 1 "GND" H 5755 6027 50  0000 C CNN
F 2 "" H 5750 6200 50  0001 C CNN
F 3 "" H 5750 6200 50  0001 C CNN
	1    5750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 6000 5750 6200
Connection ~ 5750 6000
Connection ~ 6900 1600
$Comp
L power:+5V #PWR0102
U 1 1 607C5E3B
P 5750 1450
F 0 "#PWR0102" H 5750 1300 50  0001 C CNN
F 1 "+5V" H 5765 1623 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 4050 5750 1600
$Comp
L Mechanical:MountingHole H4
U 1 1 607C1AAE
P 5900 1800
F 0 "H4" H 6000 1846 50  0000 L CNN
F 1 "MountingHole" H 6000 1755 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad" H 5900 1800 50  0001 C CNN
F 3 "~" H 5900 1800 50  0001 C CNN
	1    5900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1600 6900 1600
Wire Wire Line
	5750 1600 5750 1450
Connection ~ 5750 1600
$EndSCHEMATC
