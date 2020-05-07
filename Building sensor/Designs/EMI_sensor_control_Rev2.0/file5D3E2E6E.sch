EESchema Schematic File Version 4
LIBS:EMI_sensor_control_Rev2.0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
Title "Pancreas EMI Conductivity Meter "
Date ""
Rev "1.02"
Comp "Kansas State University "
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5800 1300 3050 1950
U 5D43B07B
F0 "ADC Bx" 50
F1 "file5D43B07A.sch" 50
$EndSheet
$Sheet
S 5800 3550 3050 1950
U 5DAF1841
F0 "Receiver Amp and Filter" 50
F1 "file5DAF1840.sch" 50
$EndSheet
$Sheet
S 2500 1300 3050 1950
U 5D43B010
F0 "ADC Rx" 50
F1 "file5D43B00F.sch" 50
$EndSheet
$Comp
L Oscillator:ASV-xxxMHz X1
U 1 1 5E7D7BFA
P 3600 4700
F 0 "X1" H 3700 4950 50  0000 L CNN
F 1 "ASV-xxxMHz" H 3850 4500 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASV-4Pin_7.0x5.1mm" H 4300 4350 50  0001 C CNN
F 3 "http://www.abracon.com/Oscillators/ASV.pdf" H 3500 4700 50  0001 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
NoConn ~ 3300 4700
$Comp
L power:+3.3VADC #PWR072
U 1 1 5E7D80ED
P 3600 4050
F 0 "#PWR072" H 3750 4000 50  0001 C CNN
F 1 "+3.3VADC" H 3620 4193 50  0000 C CNN
F 2 "" H 3600 4050 50  0001 C CNN
F 3 "" H 3600 4050 50  0001 C CNN
	1    3600 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR073
U 1 1 5E7D8489
P 3600 5250
F 0 "#PWR073" H 3600 5000 50  0001 C CNN
F 1 "GND" H 3605 5077 50  0000 C CNN
F 2 "" H 3600 5250 50  0001 C CNN
F 3 "" H 3600 5250 50  0001 C CNN
	1    3600 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C48
U 1 1 5E7D896F
P 2850 4700
F 0 "C48" H 2965 4746 50  0000 L CNN
F 1 "C 100n" H 2965 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 4550 50  0001 C CNN
F 3 "~" H 2850 4700 50  0001 C CNN
	1    2850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4850 2850 5150
Wire Wire Line
	2850 5150 3600 5150
Wire Wire Line
	3600 5150 3600 5000
Wire Wire Line
	3600 5150 3600 5250
Connection ~ 3600 5150
Wire Wire Line
	2850 4550 2850 4200
Wire Wire Line
	2850 4200 3600 4200
Wire Wire Line
	3600 4200 3600 4400
Wire Wire Line
	3600 4200 3600 4050
Connection ~ 3600 4200
Text GLabel 4250 4700 2    50   Input ~ 0
ADC_CLK
Wire Wire Line
	4250 4700 3900 4700
$EndSCHEMATC
