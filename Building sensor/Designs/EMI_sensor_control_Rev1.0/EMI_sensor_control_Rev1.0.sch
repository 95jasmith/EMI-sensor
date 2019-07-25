EESchema Schematic File Version 4
LIBS:EMI_sensor_control_Rev1.0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
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
L MCU_ST_STM32F4:STM32F412ZETx U?
U 1 1 5D2820C6
P 5750 4000
F 0 "U?" V 5750 4050 50  0000 R CNN
F 1 "STM32F412ZETx" V 5850 4250 50  0000 R CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 4750 600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00213872.pdf" H 5750 4000 50  0001 C CNN
	1    5750 4000
	0    1    1    0   
$EndComp
$Sheet
S 12050 0    1700 1000
U 5D278C8F
F0 "Driver ciruit" 50
F1 "file5D278C8E.sch" 50
$EndSheet
$Sheet
S 12050 1250 1700 950 
U 5D2792E3
F0 "Receiver Amp and Filter" 50
F1 "file5D2792E2.sch" 50
$EndSheet
$Sheet
S 12050 2450 1700 900 
U 5D27CADF
F0 "Power" 50
F1 "file5D27CADE.sch" 50
$EndSheet
$Sheet
S 12050 3650 1700 950 
U 5D3E2E6F
F0 "ADC" 50
F1 "file5D3E2E6E.sch" 50
$EndSheet
$Comp
L Device:C C?
U 1 1 5D3A1C89
P 8450 2300
F 0 "C?" H 8250 2350 50  0000 L CNN
F 1 "C 2.2u" H 8100 2250 50  0000 L CNN
F 2 "" H 8488 2150 50  0001 C CNN
F 3 "~" H 8450 2300 50  0001 C CNN
	1    8450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D3A2C1B
P 8750 2300
F 0 "C?" H 8865 2346 50  0000 L CNN
F 1 "C 2.2u" H 8865 2255 50  0000 L CNN
F 2 "" H 8788 2150 50  0001 C CNN
F 3 "~" H 8750 2300 50  0001 C CNN
	1    8750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2450 8450 2800
Wire Wire Line
	8750 2450 8750 2550
Wire Wire Line
	8750 2550 8550 2550
Wire Wire Line
	8550 2550 8550 2800
$Comp
L Switch:SW_Push SW?
U 1 1 5D3A408D
P 9200 2300
F 0 "SW?" V 9154 2448 50  0000 L CNN
F 1 "SW_Push" V 9245 2448 50  0000 L CNN
F 2 "" H 9200 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9200 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 2500 9200 2600
Wire Wire Line
	9200 2600 8650 2600
Wire Wire Line
	8650 2600 8650 2800
Wire Wire Line
	9350 3400 9650 3400
Wire Wire Line
	9650 3400 9650 3500
Wire Wire Line
	9650 4500 9900 4500
$Comp
L power:+3.3V #PWR?
U 1 1 5D3A5B32
P 9900 4500
F 0 "#PWR?" H 9900 4350 50  0001 C CNN
F 1 "+3.3V" V 9915 4628 50  0000 L CNN
F 2 "" H 9900 4500 50  0001 C CNN
F 3 "" H 9900 4500 50  0001 C CNN
	1    9900 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 4500 9350 4500
Connection ~ 9650 4500
Wire Wire Line
	9350 4400 9650 4400
Connection ~ 9650 4400
Wire Wire Line
	9650 4400 9650 4500
Wire Wire Line
	9650 4300 9350 4300
Connection ~ 9650 4300
Wire Wire Line
	9650 4300 9650 4400
Wire Wire Line
	9350 4200 9650 4200
Connection ~ 9650 4200
Wire Wire Line
	9650 4200 9650 4300
Wire Wire Line
	9650 4100 9350 4100
Connection ~ 9650 4100
Wire Wire Line
	9650 4100 9650 4200
Wire Wire Line
	9350 4000 9650 4000
Connection ~ 9650 4000
Wire Wire Line
	9650 4000 9650 4100
Wire Wire Line
	9650 3900 9350 3900
Connection ~ 9650 3900
Wire Wire Line
	9650 3900 9650 4000
Wire Wire Line
	9350 3800 9650 3800
Connection ~ 9650 3800
Wire Wire Line
	9650 3800 9650 3900
Wire Wire Line
	9350 3700 9650 3700
Connection ~ 9650 3700
Wire Wire Line
	9650 3700 9650 3800
Wire Wire Line
	9650 3600 9350 3600
Connection ~ 9650 3600
Wire Wire Line
	9650 3600 9650 3700
Wire Wire Line
	9350 3500 9650 3500
Connection ~ 9650 3500
Wire Wire Line
	9650 3500 9650 3600
Wire Wire Line
	2150 3600 1850 3600
Wire Wire Line
	1850 3600 1850 3700
Wire Wire Line
	1850 4400 1600 4400
Wire Wire Line
	1600 4400 1600 4500
$Comp
L power:GND #PWR?
U 1 1 5D3AA77F
P 1600 4500
F 0 "#PWR?" H 1600 4250 50  0001 C CNN
F 1 "GND" H 1605 4327 50  0000 C CNN
F 2 "" H 1600 4500 50  0001 C CNN
F 3 "" H 1600 4500 50  0001 C CNN
	1    1600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4400 2150 4400
Connection ~ 1850 4400
Wire Wire Line
	2150 4300 1850 4300
Connection ~ 1850 4300
Wire Wire Line
	1850 4300 1850 4400
Wire Wire Line
	2150 4200 1850 4200
Connection ~ 1850 4200
Wire Wire Line
	1850 4200 1850 4300
Wire Wire Line
	2150 4100 1850 4100
Connection ~ 1850 4100
Wire Wire Line
	1850 4100 1850 4200
Wire Wire Line
	2150 4000 1850 4000
Connection ~ 1850 4000
Wire Wire Line
	1850 4000 1850 4100
Wire Wire Line
	2150 3900 1850 3900
Connection ~ 1850 3900
Wire Wire Line
	1850 3900 1850 4000
Wire Wire Line
	2150 3800 1850 3800
Connection ~ 1850 3800
Wire Wire Line
	1850 3800 1850 3900
Wire Wire Line
	2150 3700 1850 3700
Connection ~ 1850 3700
Wire Wire Line
	1850 3700 1850 3800
$EndSCHEMATC
