EESchema Schematic File Version 4
LIBS:EMI_sensor_control_Rev2.0-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 5 8
Title "Pancreas EMI Conductivity Meter "
Date ""
Rev "1.02"
Comp "Kansas State University "
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2150 9700 0    50   Input ~ 0
BxFiltered
Text GLabel 7100 9800 2    50   Input ~ 0
Pin20b
Text GLabel 7100 9400 2    50   Input ~ 0
Pin19b
Text GLabel 7700 9950 2    50   Input ~ 0
Pin22b+
Text GLabel 7700 9250 2    50   Input ~ 0
Pin21b-
Text GLabel 6050 9250 1    50   Input ~ 0
BxFiltered
$Comp
L Device:R R?
U 1 1 5D8AD6E4
P 6350 9800
AR Path="/5D3E2E6F/5D43B010/5D8AD6E4" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD6E4" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD6E4" Ref="R27"  Part="1" 
F 0 "R27" V 6350 9800 50  0000 C CNN
F 1 "R 1k" V 6234 9800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 9800 50  0001 C CNN
F 3 "~" H 6350 9800 50  0001 C CNN
	1    6350 9800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8AD6EA
P 2550 9700
AR Path="/5D3E2E6F/5D43B010/5D8AD6EA" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD6EA" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD6EA" Ref="R17"  Part="1" 
F 0 "R17" V 2550 9700 50  0000 C CNN
F 1 "R 2k" V 2434 9700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 9700 50  0001 C CNN
F 3 "~" H 2550 9700 50  0001 C CNN
	1    2550 9700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8AD6F0
P 4450 9100
AR Path="/5D3E2E6F/5D43B010/5D8AD6F0" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD6F0" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD6F0" Ref="R23"  Part="1" 
F 0 "R23" V 4450 9100 50  0000 C CNN
F 1 "R 2k" V 4334 9100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 9100 50  0001 C CNN
F 3 "~" H 4450 9100 50  0001 C CNN
	1    4450 9100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8AD6F6
P 2850 10050
AR Path="/5D3E2E6F/5D43B010/5D8AD6F6" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD6F6" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD6F6" Ref="R19"  Part="1" 
F 0 "R19" V 2850 10100 50  0000 R CNN
F 1 "R 1k" H 2780 10095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2780 10050 50  0001 C CNN
F 3 "~" H 2850 10050 50  0001 C CNN
	1    2850 10050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2850 9800 2850 9900
Wire Wire Line
	3350 9700 3050 9700
Wire Wire Line
	3050 9700 3050 9100
Wire Wire Line
	3050 9100 4300 9100
Connection ~ 3050 9700
Wire Wire Line
	3050 9700 2700 9700
Wire Wire Line
	5950 9100 5950 9800
$Comp
L power:GND #PWR?
U 1 1 5D8AD703
P 2850 10450
AR Path="/5D3E2E6F/5D43B010/5D8AD703" Ref="#PWR?"  Part="1" 
AR Path="/5DB20FE4/5D8AD703" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD703" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 2850 10200 50  0001 C CNN
F 1 "GND" H 2855 10277 50  0000 C CNN
F 2 "" H 2850 10450 50  0001 C CNN
F 3 "" H 2850 10450 50  0001 C CNN
	1    2850 10450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 10200 2850 10450
Wire Wire Line
	2150 9700 2400 9700
Wire Wire Line
	5800 9600 5800 9700
Wire Wire Line
	3350 9600 3200 9600
Wire Wire Line
	3200 9600 3200 9450
Wire Wire Line
	5800 9700 5650 9700
Wire Wire Line
	5650 9600 5800 9600
Wire Wire Line
	5650 9800 5950 9800
$Comp
L 2019-07-11_16-02-03:AD8021ARZ U?
U 1 1 5D8AD712
P 2650 9650
AR Path="/5D3E2E6F/5D43B010/5D8AD712" Ref="U?"  Part="1" 
AR Path="/5DB20FE4/5D8AD712" Ref="U?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD712" Ref="U8"  Part="1" 
F 0 "U8" H 4500 9987 60  0000 C CNN
F 1 "AD8021ARZ" H 4500 9881 60  0000 C CNN
F 2 "footprints:AD8021ARZ" H 4450 9900 60  0001 C CNN
F 3 "" H 3350 9700 60  0000 C CNN
	1    2650 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5D8AD718
P 4450 10250
AR Path="/5D3E2E6F/5D43B010/5D8AD718" Ref="C?"  Part="1" 
AR Path="/5DB20FE4/5D8AD718" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD718" Ref="C20"  Part="1" 
F 0 "C20" V 4300 10250 50  0000 C CNN
F 1 "C 10p" V 4600 10250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4488 10100 50  0001 C CNN
F 3 "~" H 4450 10250 50  0001 C CNN
	1    4450 10250
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 9900 5800 9900
Wire Wire Line
	5800 9900 5800 10250
Wire Wire Line
	5800 10250 4600 10250
Wire Wire Line
	3350 9900 3150 9900
Wire Wire Line
	3150 9900 3150 10250
Wire Wire Line
	3150 10250 4300 10250
Wire Wire Line
	2850 9800 3350 9800
Wire Wire Line
	3150 10250 3150 10400
Connection ~ 3150 10250
Wire Wire Line
	5800 9600 5800 9500
Connection ~ 5800 9600
$Comp
L Device:C C?
U 1 1 5D8AD729
P 6750 9600
AR Path="/5D3E2E6F/5D43B010/5D8AD729" Ref="C?"  Part="1" 
AR Path="/5DB20FE4/5D8AD729" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD729" Ref="C22"  Part="1" 
F 0 "C22" H 6865 9646 50  0000 L CNN
F 1 "C 5.6p" H 6800 9500 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6788 9450 50  0001 C CNN
F 3 "~" H 6750 9600 50  0001 C CNN
	1    6750 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 9450 6750 9400
$Comp
L Device:R R?
U 1 1 5D8AD730
P 6350 9400
AR Path="/5D3E2E6F/5D43B010/5D8AD730" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD730" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD730" Ref="R26"  Part="1" 
F 0 "R26" V 6350 9400 50  0000 C CNN
F 1 "R 1k" V 6234 9400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6280 9400 50  0001 C CNN
F 3 "~" H 6350 9400 50  0001 C CNN
	1    6350 9400
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 9800 6750 9800
Wire Wire Line
	6500 9400 6750 9400
Wire Wire Line
	6750 9800 6750 9750
Wire Wire Line
	6750 9800 7100 9800
Connection ~ 6750 9800
Wire Wire Line
	6750 9400 7100 9400
Connection ~ 6750 9400
Connection ~ 5950 9800
Wire Wire Line
	5950 9800 6200 9800
Wire Wire Line
	4600 9100 5950 9100
$Comp
L Device:R R?
U 1 1 5D8AD74A
P 7050 10100
AR Path="/5D3E2E6F/5D43B010/5D8AD74A" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD74A" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD74A" Ref="R29"  Part="1" 
F 0 "R29" V 7050 10100 50  0000 C CNN
F 1 "R 649" V 6934 10100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6980 10100 50  0001 C CNN
F 3 "~" H 7050 10100 50  0001 C CNN
	1    7050 10100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5D8AD750
P 7050 9150
AR Path="/5D3E2E6F/5D43B010/5D8AD750" Ref="R?"  Part="1" 
AR Path="/5DB20FE4/5D8AD750" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD750" Ref="R28"  Part="1" 
F 0 "R28" V 7050 9150 50  0000 C CNN
F 1 "R 649" V 6934 9150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6980 9150 50  0001 C CNN
F 3 "~" H 7050 9150 50  0001 C CNN
	1    7050 9150
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D8AD756
P 7050 10300
AR Path="/5D3E2E6F/5D43B010/5D8AD756" Ref="C?"  Part="1" 
AR Path="/5DB20FE4/5D8AD756" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD756" Ref="C24"  Part="1" 
F 0 "C24" V 7300 10250 50  0000 L CNN
F 1 "C 33p" V 7200 10150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7088 10150 50  0001 C CNN
F 3 "~" H 7050 10300 50  0001 C CNN
	1    7050 10300
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5D8AD75C
P 7050 8800
AR Path="/5D3E2E6F/5D43B010/5D8AD75C" Ref="C?"  Part="1" 
AR Path="/5DB20FE4/5D8AD75C" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD75C" Ref="C23"  Part="1" 
F 0 "C23" V 6800 8750 50  0000 L CNN
F 1 "C 33p" V 6900 8700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7088 8650 50  0001 C CNN
F 3 "~" H 7050 8800 50  0001 C CNN
	1    7050 8800
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 9400 6750 9150
Wire Wire Line
	6750 8800 6900 8800
Wire Wire Line
	6900 9150 6750 9150
Connection ~ 6750 9150
Wire Wire Line
	6750 9150 6750 8800
Wire Wire Line
	7200 9150 7550 9150
Wire Wire Line
	7550 9150 7550 9250
Wire Wire Line
	7550 9250 7700 9250
Wire Wire Line
	7200 8800 7550 8800
Wire Wire Line
	7550 8800 7550 9150
Connection ~ 7550 9150
Wire Wire Line
	6750 9800 6750 10100
Wire Wire Line
	6750 10100 6900 10100
Wire Wire Line
	6750 10100 6750 10300
Wire Wire Line
	6750 10300 6900 10300
Connection ~ 6750 10100
Wire Wire Line
	7200 10300 7550 10300
Wire Wire Line
	7550 10300 7550 10100
Wire Wire Line
	7550 9950 7700 9950
Wire Wire Line
	7200 10100 7550 10100
Connection ~ 7550 10100
Wire Wire Line
	7550 10100 7550 9950
Wire Wire Line
	6050 9250 6050 9400
Wire Wire Line
	6050 9400 6200 9400
$Comp
L power:GND #PWR?
U 1 1 5D8AD7BE
P 3200 9450
AR Path="/5D3E2E6F/5D43B010/5D8AD7BE" Ref="#PWR?"  Part="1" 
AR Path="/5DB20FE4/5D8AD7BE" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD7BE" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 3200 9200 50  0001 C CNN
F 1 "GND" H 3205 9277 50  0000 C CNN
F 2 "" H 3200 9450 50  0001 C CNN
F 3 "" H 3200 9450 50  0001 C CNN
	1    3200 9450
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5D8AD7C4
P 3150 10400
AR Path="/5D3E2E6F/5D43B010/5D8AD7C4" Ref="#PWR?"  Part="1" 
AR Path="/5DB20FE4/5D8AD7C4" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD7C4" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 3150 10500 50  0001 C CNN
F 1 "-5V" H 3165 10573 50  0000 C CNN
F 2 "" H 3150 10400 50  0001 C CNN
F 3 "" H 3150 10400 50  0001 C CNN
	1    3150 10400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D8AD7CA
P 5800 9500
AR Path="/5D3E2E6F/5D43B010/5D8AD7CA" Ref="#PWR?"  Part="1" 
AR Path="/5DB20FE4/5D8AD7CA" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5D8AD7CA" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 5800 9350 50  0001 C CNN
F 1 "+5V" H 5815 9673 50  0000 C CNN
F 2 "" H 5800 9500 50  0001 C CNN
F 3 "" H 5800 9500 50  0001 C CNN
	1    5800 9500
	1    0    0    -1  
$EndComp
$EndSCHEMATC
