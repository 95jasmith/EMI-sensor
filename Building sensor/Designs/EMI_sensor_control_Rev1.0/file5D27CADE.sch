EESchema Schematic File Version 4
LIBS:EMI_sensor_control_Rev1.0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L power:GND #PWR0118
U 1 1 5D29EF9A
P 2800 2500
F 0 "#PWR0118" H 2800 2250 50  0001 C CNN
F 1 "GND" H 2805 2327 50  0000 C CNN
F 2 "" H 2800 2500 50  0001 C CNN
F 3 "" H 2800 2500 50  0001 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 5D29F9AC
P 2850 4500
F 0 "#PWR0119" H 2850 4250 50  0001 C CNN
F 1 "GND" H 2855 4327 50  0000 C CNN
F 2 "" H 2850 4500 50  0001 C CNN
F 3 "" H 2850 4500 50  0001 C CNN
	1    2850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4250 2850 4500
Wire Wire Line
	2800 2500 2800 2250
$Comp
L power:+3.3V #PWR0120
U 1 1 5D2A08FE
P 5200 1650
F 0 "#PWR0120" H 5200 1500 50  0001 C CNN
F 1 "+3.3V" V 5215 1778 50  0000 L CNN
F 2 "" H 5200 1650 50  0001 C CNN
F 3 "" H 5200 1650 50  0001 C CNN
	1    5200 1650
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5D2A1818
P 4200 3650
F 0 "#PWR0121" H 4200 3500 50  0001 C CNN
F 1 "+5V" V 4215 3778 50  0000 L CNN
F 2 "" H 4200 3650 50  0001 C CNN
F 3 "" H 4200 3650 50  0001 C CNN
	1    4200 3650
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR0122
U 1 1 5D2A37F4
P 1250 3650
F 0 "#PWR0122" H 1250 3500 50  0001 C CNN
F 1 "+BATT" V 1265 3777 50  0000 L CNN
F 2 "" H 1250 3650 50  0001 C CNN
F 3 "" H 1250 3650 50  0001 C CNN
	1    1250 3650
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Switching:LMZM23601 U?
U 1 1 5D2A50ED
P 2800 1850
F 0 "U?" H 2800 2317 50  0000 C CNN
F 1 "LMZM23601" H 2800 2226 50  0000 C CNN
F 2 "Package_LGA:Texas_SIL0010A_MicroSiP-10-1EP_3.8x3mm_P0.6mm_EP0.7x2.9mm_ThermalVias" H 2800 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmzm23601.pdf" H 2800 1100 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Switching:LMZM23601V5 U?
U 1 1 5D2A5F55
P 2850 3850
F 0 "U?" H 2850 4317 50  0000 C CNN
F 1 "LMZM23601V5" H 2850 4226 50  0000 C CNN
F 2 "Package_LGA:Texas_SIL0010A_MicroSiP-10-1EP_3.8x3mm_P0.6mm_EP0.7x2.9mm_ThermalVias" H 2850 3000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmzm23601.pdf" H 2850 3100 50  0001 C CNN
	1    2850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D2A8AF2
P 4750 1850
F 0 "R?" H 4820 1896 50  0000 L CNN
F 1 "R 120k" H 4820 1805 50  0000 L CNN
F 2 "" V 4680 1850 50  0001 C CNN
F 3 "~" H 4750 1850 50  0001 C CNN
	1    4750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D2A9B11
P 4750 2300
F 0 "R?" H 4820 2346 50  0000 L CNN
F 1 "R 52.3k" H 4820 2255 50  0000 L CNN
F 2 "" V 4680 2300 50  0001 C CNN
F 3 "~" H 4750 2300 50  0001 C CNN
	1    4750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 1650 3850 1650
Wire Wire Line
	4750 2000 4750 2050
Wire Wire Line
	4750 1700 4750 1650
Connection ~ 4750 1650
Wire Wire Line
	4750 1650 5200 1650
Wire Wire Line
	3300 1850 4500 1850
Wire Wire Line
	4500 1850 4500 2050
Wire Wire Line
	4500 2050 4750 2050
Connection ~ 4750 2050
Wire Wire Line
	4750 2050 4750 2150
$Comp
L power:GND #PWR0123
U 1 1 5D2AC16D
P 4750 2650
F 0 "#PWR0123" H 4750 2400 50  0001 C CNN
F 1 "GND" H 4755 2477 50  0000 C CNN
F 2 "" H 4750 2650 50  0001 C CNN
F 3 "" H 4750 2650 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2450 4750 2650
Wire Wire Line
	3350 3650 3950 3650
Wire Wire Line
	4050 3850 4050 3650
Wire Wire Line
	3350 3850 4050 3850
Connection ~ 4050 3650
Wire Wire Line
	4050 3650 4200 3650
$Comp
L power:GND #PWR0124
U 1 1 5D2AF1C8
P 1300 2250
F 0 "#PWR0124" H 1300 2000 50  0001 C CNN
F 1 "GND" H 1305 2077 50  0000 C CNN
F 2 "" H 1300 2250 50  0001 C CNN
F 3 "" H 1300 2250 50  0001 C CNN
	1    1300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5D2AF69E
P 4000 1050
F 0 "#PWR0125" H 4000 800 50  0001 C CNN
F 1 "GND" H 4005 877 50  0000 C CNN
F 2 "" H 4000 1050 50  0001 C CNN
F 3 "" H 4000 1050 50  0001 C CNN
	1    4000 1050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5D2AFA98
P 3950 3100
F 0 "#PWR0126" H 3950 2850 50  0001 C CNN
F 1 "GND" H 3955 2927 50  0000 C CNN
F 2 "" H 3950 3100 50  0001 C CNN
F 3 "" H 3950 3100 50  0001 C CNN
	1    3950 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5D2AFDD1
P 1350 4250
F 0 "#PWR0127" H 1350 4000 50  0001 C CNN
F 1 "GND" H 1355 4077 50  0000 C CNN
F 2 "" H 1350 4250 50  0001 C CNN
F 3 "" H 1350 4250 50  0001 C CNN
	1    1350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 4000 1350 4250
Wire Wire Line
	1350 3650 1350 3800
Wire Wire Line
	1300 2000 1300 2250
Wire Wire Line
	1300 1650 1300 1800
Wire Wire Line
	3850 1300 3850 1050
Wire Wire Line
	3850 1500 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 4750 1650
Wire Wire Line
	3950 3500 3950 3650
Connection ~ 3950 3650
Wire Wire Line
	3950 3650 4050 3650
Wire Wire Line
	3950 3100 3950 3300
NoConn ~ 3300 2050
NoConn ~ 3350 4050
Wire Wire Line
	2350 3850 2150 3850
Wire Wire Line
	2150 3850 2150 3650
Connection ~ 2150 3650
Wire Wire Line
	2150 3650 2350 3650
Wire Wire Line
	2300 1850 2100 1850
Wire Wire Line
	2100 1850 2100 1650
Connection ~ 2100 1650
Wire Wire Line
	2100 1650 2300 1650
$Comp
L Device:Battery BT?
U 1 1 5D2CA3E0
P 1650 6000
F 0 "BT?" H 1758 6046 50  0000 L CNN
F 1 "Battery" H 1758 5955 50  0000 L CNN
F 2 "" V 1650 6060 50  0001 C CNN
F 3 "~" V 1650 6060 50  0001 C CNN
	1    1650 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 5D2CBED6
P 1650 6450
F 0 "#PWR0128" H 1650 6200 50  0001 C CNN
F 1 "GND" H 1655 6277 50  0000 C CNN
F 2 "" H 1650 6450 50  0001 C CNN
F 3 "" H 1650 6450 50  0001 C CNN
	1    1650 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 6200 1650 6450
Wire Wire Line
	1650 5550 1650 5800
Text GLabel 4300 6150 3    50   Input ~ 0
PWROn
Wire Wire Line
	2350 4050 2100 4050
Wire Wire Line
	2300 2050 2050 2050
$Comp
L power:+BATT #PWR0129
U 1 1 5D2A32F8
P 950 1650
F 0 "#PWR0129" H 950 1500 50  0001 C CNN
F 1 "+BATT" V 965 1777 50  0000 L CNN
F 2 "" H 950 1650 50  0001 C CNN
F 3 "" H 950 1650 50  0001 C CNN
	1    950  1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 3650 1350 3650
Connection ~ 1300 1650
Wire Wire Line
	1300 1650 2100 1650
Wire Wire Line
	1150 1650 1300 1650
Connection ~ 1350 3650
Wire Wire Line
	1350 3650 2150 3650
$Comp
L power:+BATT #PWR0130
U 1 1 5D2D6E3A
P 1650 5550
F 0 "#PWR0130" H 1650 5400 50  0001 C CNN
F 1 "+BATT" H 1665 5723 50  0000 C CNN
F 2 "" H 1650 5550 50  0001 C CNN
F 3 "" H 1650 5550 50  0001 C CNN
	1    1650 5550
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG419BR U?
U 1 1 5D2DC634
P 4300 5500
F 0 "U?" H 4300 5742 50  0000 C CNN
F 1 "ADG419BR" H 4300 5651 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4300 5200 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG419.pdf" H 4300 5500 50  0001 C CNN
	1    4300 5500
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:ADG419BR U?
U 2 1 5D2DD26E
P 6000 5500
F 0 "U?" V 5683 5500 50  0000 C CNN
F 1 "ADG419BR" V 5774 5500 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6000 5200 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADG419.pdf" H 6000 5500 50  0001 C CNN
	2    6000 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5900 4300 6150
$Comp
L power:+BATT #PWR0131
U 1 1 5D2E0D1D
P 4750 5850
F 0 "#PWR0131" H 4750 5700 50  0001 C CNN
F 1 "+BATT" H 4765 6023 50  0000 C CNN
F 2 "" H 4750 5850 50  0001 C CNN
F 3 "" H 4750 5850 50  0001 C CNN
	1    4750 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5050 5500 5050 5350
$Comp
L power:GND #PWR0132
U 1 1 5D2E2586
P 5050 5350
F 0 "#PWR0132" H 5050 5100 50  0001 C CNN
F 1 "GND" H 5055 5177 50  0000 C CNN
F 2 "" H 5050 5350 50  0001 C CNN
F 3 "" H 5050 5350 50  0001 C CNN
	1    5050 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 5700 4750 5700
Wire Wire Line
	4750 5700 4750 5850
$Comp
L 2019-07-16_15-03-54:B0540W-7-F CR?
U 1 1 5D2E5F15
P 3750 5600
F 0 "CR?" H 3950 5337 60  0000 C CNN
F 1 "B0540W-7-F" H 3950 5443 60  0000 C CNN
F 2 "SOD123" H 3950 5240 60  0001 C CNN
F 3 "" H 3750 5600 60  0000 C CNN
	1    3750 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5600 3750 5600
Text GLabel 3100 5600 0    50   Input ~ 0
Pwr1
Wire Wire Line
	3350 5600 3100 5600
Text GLabel 2100 4050 0    50   Input ~ 0
Pwr1
Text GLabel 2050 2050 0    50   Input ~ 0
Pwr1
Wire Wire Line
	5500 5500 5350 5500
Connection ~ 5050 5500
Wire Wire Line
	4600 5500 5050 5500
Text GLabel 6750 5600 2    50   Input ~ 0
5vComm
Wire Wire Line
	6500 5600 6750 5600
Wire Wire Line
	5500 5600 5350 5600
Wire Wire Line
	5350 5600 5350 5500
Connection ~ 5350 5500
Wire Wire Line
	5350 5500 5050 5500
$Comp
L power:+BATT #PWR0133
U 1 1 5D2F2258
P 6650 5350
F 0 "#PWR0133" H 6650 5200 50  0001 C CNN
F 1 "+BATT" H 6665 5523 50  0000 C CNN
F 2 "" H 6650 5350 50  0001 C CNN
F 3 "" H 6650 5350 50  0001 C CNN
	1    6650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5500 6650 5500
Wire Wire Line
	6650 5500 6650 5350
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5D2F5080
P 8800 5200
F 0 "J?" H 8750 5350 50  0000 C CNN
F 1 "Conn_01x03_Male" H 8650 5050 50  0000 C CNN
F 2 "" H 8800 5200 50  0001 C CNN
F 3 "~" H 8800 5200 50  0001 C CNN
	1    8800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0134
U 1 1 5D2F57D7
P 9250 5500
F 0 "#PWR0134" H 9250 5250 50  0001 C CNN
F 1 "GND" H 9255 5327 50  0000 C CNN
F 2 "" H 9250 5500 50  0001 C CNN
F 3 "" H 9250 5500 50  0001 C CNN
	1    9250 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0135
U 1 1 5D2F5FF1
P 9250 4900
F 0 "#PWR0135" H 9250 4750 50  0001 C CNN
F 1 "+BATT" H 9265 5073 50  0000 C CNN
F 2 "" H 9250 4900 50  0001 C CNN
F 3 "" H 9250 4900 50  0001 C CNN
	1    9250 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5100 9250 5100
Wire Wire Line
	9250 5100 9250 4900
Wire Wire Line
	9000 5300 9250 5300
Wire Wire Line
	9250 5300 9250 5500
Text GLabel 9350 5200 2    50   Input ~ 0
Pwr1
Wire Wire Line
	9000 5200 9350 5200
$Comp
L Device:C_Small C?
U 1 1 5D52F98F
P 1350 3900
F 0 "C?" H 1442 3946 50  0000 L CNN
F 1 "C 10u" H 1442 3855 50  0000 L CNN
F 2 "" H 1350 3900 50  0001 C CNN
F 3 "~" H 1350 3900 50  0001 C CNN
	1    1350 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D53125A
P 3950 3400
F 0 "C?" H 4042 3446 50  0000 L CNN
F 1 "C 22u" H 4042 3355 50  0000 L CNN
F 2 "" H 3950 3400 50  0001 C CNN
F 3 "~" H 3950 3400 50  0001 C CNN
	1    3950 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D532BA1
P 1300 1900
F 0 "C?" H 1392 1946 50  0000 L CNN
F 1 "C 10u" H 1392 1855 50  0000 L CNN
F 2 "" H 1300 1900 50  0001 C CNN
F 3 "~" H 1300 1900 50  0001 C CNN
	1    1300 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D5342CE
P 3850 1400
F 0 "C?" H 3942 1446 50  0000 L CNN
F 1 "C 33u" H 3942 1355 50  0000 L CNN
F 2 "" H 3850 1400 50  0001 C CNN
F 3 "~" H 3850 1400 50  0001 C CNN
	1    3850 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5D53824E
P 7750 2500
F 0 "#PWR0136" H 7750 2250 50  0001 C CNN
F 1 "GND" H 7755 2327 50  0000 C CNN
F 2 "" H 7750 2500 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2500 7750 2250
$Comp
L Regulator_Switching:LMZM23601 U?
U 1 1 5D53825B
P 7750 1850
F 0 "U?" H 7750 2317 50  0000 C CNN
F 1 "LMZM23601" H 7750 2226 50  0000 C CNN
F 2 "Package_LGA:Texas_SIL0010A_MicroSiP-10-1EP_3.8x3mm_P0.6mm_EP0.7x2.9mm_ThermalVias" H 7750 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmzm23601.pdf" H 7750 1100 50  0001 C CNN
	1    7750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D538261
P 9700 1850
F 0 "R?" H 9770 1896 50  0000 L CNN
F 1 "R 38.3k" H 9770 1805 50  0000 L CNN
F 2 "" V 9630 1850 50  0001 C CNN
F 3 "~" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D538267
P 9700 2300
F 0 "R?" H 9770 2346 50  0000 L CNN
F 1 "R 25.5k" H 9770 2255 50  0000 L CNN
F 2 "" V 9630 2300 50  0001 C CNN
F 3 "~" H 9700 2300 50  0001 C CNN
	1    9700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1650 8800 1650
Wire Wire Line
	9700 2000 9700 2050
Wire Wire Line
	9700 1700 9700 1650
Connection ~ 9700 1650
Wire Wire Line
	9700 1650 10150 1650
Wire Wire Line
	8250 1850 9450 1850
Wire Wire Line
	9450 1850 9450 2050
Wire Wire Line
	9450 2050 9700 2050
Connection ~ 9700 2050
Wire Wire Line
	9700 2050 9700 2150
$Comp
L power:GND #PWR0137
U 1 1 5D538277
P 9700 2650
F 0 "#PWR0137" H 9700 2400 50  0001 C CNN
F 1 "GND" H 9705 2477 50  0000 C CNN
F 2 "" H 9700 2650 50  0001 C CNN
F 3 "" H 9700 2650 50  0001 C CNN
	1    9700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2450 9700 2650
$Comp
L power:GND #PWR0138
U 1 1 5D53827E
P 6250 2250
F 0 "#PWR0138" H 6250 2000 50  0001 C CNN
F 1 "GND" H 6255 2077 50  0000 C CNN
F 2 "" H 6250 2250 50  0001 C CNN
F 3 "" H 6250 2250 50  0001 C CNN
	1    6250 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5D538284
P 8800 1050
F 0 "#PWR0139" H 8800 800 50  0001 C CNN
F 1 "GND" H 8805 877 50  0000 C CNN
F 2 "" H 8800 1050 50  0001 C CNN
F 3 "" H 8800 1050 50  0001 C CNN
	1    8800 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2000 6250 2250
Wire Wire Line
	6250 1650 6250 1800
Wire Wire Line
	8800 1300 8800 1050
Wire Wire Line
	8800 1500 8800 1650
Connection ~ 8800 1650
Wire Wire Line
	8800 1650 9700 1650
NoConn ~ 8250 2050
Wire Wire Line
	7250 1850 7050 1850
Wire Wire Line
	7050 1850 7050 1650
Connection ~ 7050 1650
Wire Wire Line
	7050 1650 7250 1650
Wire Wire Line
	7250 2050 7000 2050
$Comp
L power:+BATT #PWR0140
U 1 1 5D538296
P 6100 1650
F 0 "#PWR0140" H 6100 1500 50  0001 C CNN
F 1 "+BATT" V 6115 1777 50  0000 L CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	0    -1   -1   0   
$EndComp
Connection ~ 6250 1650
Wire Wire Line
	6250 1650 7050 1650
Wire Wire Line
	6100 1650 6250 1650
Text GLabel 7000 2050 0    50   Input ~ 0
Pwr1
$Comp
L Device:C_Small C?
U 1 1 5D5382A0
P 6250 1900
F 0 "C?" H 6342 1946 50  0000 L CNN
F 1 "C 10u" H 6342 1855 50  0000 L CNN
F 2 "" H 6250 1900 50  0001 C CNN
F 3 "~" H 6250 1900 50  0001 C CNN
	1    6250 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5D5382A6
P 8800 1400
F 0 "C?" H 8892 1446 50  0000 L CNN
F 1 "C 68u" H 8892 1355 50  0000 L CNN
F 2 "" H 8800 1400 50  0001 C CNN
F 3 "~" H 8800 1400 50  0001 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+2V5 #PWR0141
U 1 1 5D539AC0
P 10150 1650
F 0 "#PWR0141" H 10150 1500 50  0001 C CNN
F 1 "+2V5" V 10165 1778 50  0000 L CNN
F 2 "" H 10150 1650 50  0001 C CNN
F 3 "" H 10150 1650 50  0001 C CNN
	1    10150 1650
	0    1    1    0   
$EndComp
$Comp
L Reference_Voltage:TLE2426xD U?
U 1 1 5D6C846C
P 7850 3850
F 0 "U?" H 7850 4317 50  0000 C CNN
F 1 "TLE2426xD" H 7850 4226 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7850 3250 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tle2426.pdf" H 6450 4800 50  0001 C CIN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5D6C9076
P 10600 4100
F 0 "#PWR?" H 10600 3850 50  0001 C CNN
F 1 "GNDA" H 10605 3927 50  0000 C CNN
F 2 "" H 10600 4100 50  0001 C CNN
F 3 "" H 10600 4100 50  0001 C CNN
	1    10600 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D6C950C
P 7850 4550
F 0 "#PWR?" H 7850 4300 50  0001 C CNN
F 1 "GND" H 7855 4377 50  0000 C CNN
F 2 "" H 7850 4550 50  0001 C CNN
F 3 "" H 7850 4550 50  0001 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D6CA0E9
P 7000 4150
F 0 "C?" H 7115 4196 50  0000 L CNN
F 1 "C 1u" H 7100 4050 50  0000 L CNN
F 2 "" H 7038 4000 50  0001 C CNN
F 3 "~" H 7000 4150 50  0001 C CNN
	1    7000 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 5D6CA687
P 6400 3650
F 0 "#PWR?" H 6400 3500 50  0001 C CNN
F 1 "+BATT" V 6415 3777 50  0000 L CNN
F 2 "" H 6400 3650 50  0001 C CNN
F 3 "" H 6400 3650 50  0001 C CNN
	1    6400 3650
	0    -1   -1   0   
$EndComp
$Comp
L power:+6V #PWR?
U 1 1 5D6CAF38
P 10600 3300
F 0 "#PWR?" H 10600 3150 50  0001 C CNN
F 1 "+6V" V 10615 3428 50  0000 L CNN
F 2 "" H 10600 3300 50  0001 C CNN
F 3 "" H 10600 3300 50  0001 C CNN
	1    10600 3300
	0    1    1    0   
$EndComp
$Comp
L power:-6V #PWR?
U 1 1 5D6CB6E7
P 10600 4450
F 0 "#PWR?" H 10600 4550 50  0001 C CNN
F 1 "-6V" V 10615 4578 50  0000 L CNN
F 2 "" H 10600 4450 50  0001 C CNN
F 3 "" H 10600 4450 50  0001 C CNN
	1    10600 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 3650 7000 3650
Connection ~ 7000 3650
Wire Wire Line
	7350 3750 7000 3750
Wire Wire Line
	7000 3750 7000 4000
Wire Wire Line
	7000 4300 7000 4450
Wire Wire Line
	7000 4450 7850 4450
Wire Wire Line
	7850 4450 7850 4350
Wire Wire Line
	7850 4550 7850 4450
Connection ~ 7850 4450
$Comp
L 2019-07-17_21-46-17:BUF634U U?
U 1 1 5D6DB5E1
P 8550 3750
F 0 "U?" H 9650 4237 60  0000 C CNN
F 1 "BUF634U" H 9650 4131 60  0000 C CNN
F 2 "SO-G8" H 9650 4090 60  0001 C CNN
F 3 "" H 8550 3750 60  0000 C CNN
	1    8550 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3650 8450 3650
Wire Wire Line
	8450 3650 8450 3950
Wire Wire Line
	8450 3950 8700 3950
Wire Wire Line
	8700 4050 8700 4450
Wire Wire Line
	7850 4450 8700 4450
Wire Wire Line
	7000 3300 10400 3300
Wire Wire Line
	10400 3300 10400 3850
Wire Wire Line
	10400 3850 10200 3850
Wire Wire Line
	7000 3300 7000 3650
Wire Wire Line
	8700 3750 8550 3750
Wire Wire Line
	8550 3550 10350 3550
Wire Wire Line
	10350 3550 10350 3950
Wire Wire Line
	10350 3950 10200 3950
Wire Wire Line
	8550 3550 8550 3750
Wire Wire Line
	10600 3300 10400 3300
Connection ~ 10400 3300
Wire Wire Line
	10350 3950 10600 3950
Connection ~ 10350 3950
Wire Wire Line
	10600 3950 10600 4100
Wire Wire Line
	8700 4450 10600 4450
Connection ~ 8700 4450
$Comp
L Device:C C?
U 1 1 5D6F9373
P 6550 4150
F 0 "C?" H 6665 4196 50  0000 L CNN
F 1 "C 220u" H 6650 4050 50  0000 L CNN
F 2 "" H 6588 4000 50  0001 C CNN
F 3 "~" H 6550 4150 50  0001 C CNN
	1    6550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3650 6550 3650
Wire Wire Line
	6550 4000 6550 3650
Connection ~ 6550 3650
Wire Wire Line
	6550 3650 7000 3650
Wire Wire Line
	6550 4300 6550 4450
Wire Wire Line
	6550 4450 7000 4450
Connection ~ 7000 4450
$EndSCHEMATC
