EESchema Schematic File Version 4
LIBS:EMI_sensor_control_Rev1.0-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L 2019-07-11_15-43-26:AD7763BSVZ U?
U 1 1 5DAD9B7C
P 2900 1200
AR Path="/5D3E2E6F/5D43B010/5DAD9B7C" Ref="U?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9B7C" Ref="U?"  Part="1" 
F 0 "U?" H 3900 1687 60  0000 C CNN
F 1 "AD7763BSVZ" H 3900 1581 60  0000 C CNN
F 2 "SV_64_2" H 3900 1540 60  0001 C CNN
F 3 "" H 2900 1200 60  0000 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9B82
P 650 3650
AR Path="/5D3E2E6F/5D43B010/5DAD9B82" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9B82" Ref="C?"  Part="1" 
F 0 "C?" H 650 3750 50  0000 L CNN
F 1 "C 100n" H 650 3550 50  0000 L CNN
F 2 "" H 688 3500 50  0001 C CNN
F 3 "~" H 650 3650 50  0001 C CNN
	1    650  3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9B88
P 950 3650
AR Path="/5D3E2E6F/5D43B010/5DAD9B88" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9B88" Ref="C?"  Part="1" 
F 0 "C?" H 950 3750 50  0000 L CNN
F 1 "C 33p" H 950 3550 50  0000 L CNN
F 2 "" H 988 3500 50  0001 C CNN
F 3 "~" H 950 3650 50  0001 C CNN
	1    950  3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3400 950  3500
$Comp
L power:GND #PWR?
U 1 1 5DAD9B8F
P 800 4050
AR Path="/5D3E2E6F/5D43B010/5DAD9B8F" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9B8F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 800 3800 50  0001 C CNN
F 1 "GND" H 805 3877 50  0000 C CNN
F 2 "" H 800 4050 50  0001 C CNN
F 3 "" H 800 4050 50  0001 C CNN
	1    800  4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  3900 950  3800
Wire Wire Line
	800  3900 800  4050
$Comp
L power:GND #PWR?
U 1 1 5DAD9B97
P 6000 1300
AR Path="/5D3E2E6F/5D43B010/5DAD9B97" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9B97" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 1050 50  0001 C CNN
F 1 "GND" H 6005 1127 50  0000 C CNN
F 2 "" H 6000 1300 50  0001 C CNN
F 3 "" H 6000 1300 50  0001 C CNN
	1    6000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9BA1
P 1350 4050
AR Path="/5D3E2E6F/5D43B010/5DAD9BA1" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BA1" Ref="R?"  Part="1" 
F 0 "R?" H 1200 4100 50  0000 L CNN
F 1 "R 160k" H 1050 3900 50  0000 L CNN
F 2 "" V 1280 4050 50  0001 C CNN
F 3 "~" H 1350 4050 50  0001 C CNN
	1    1350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3800 1350 3900
Wire Wire Line
	1350 4200 1350 4350
Wire Wire Line
	1350 4350 1000 4350
Wire Wire Line
	1000 4350 1000 3900
Wire Wire Line
	1000 3900 950  3900
Connection ~ 950  3900
Wire Wire Line
	8300 900  8300 1050
Wire Wire Line
	7700 1050 7700 900 
Wire Wire Line
	10450 1050 10450 900 
$Comp
L Device:C C?
U 1 1 5DAD9BB0
P 7100 1700
AR Path="/5D3E2E6F/5D43B010/5DAD9BB0" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BB0" Ref="C?"  Part="1" 
F 0 "C?" H 6950 1800 50  0000 L CNN
F 1 "C 100n" H 6800 1600 50  0000 L CNN
F 2 "" H 7138 1550 50  0001 C CNN
F 3 "~" H 7100 1700 50  0001 C CNN
	1    7100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9BB6
P 7700 1700
AR Path="/5D3E2E6F/5D43B010/5DAD9BB6" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BB6" Ref="C?"  Part="1" 
F 0 "C?" H 7800 1800 50  0000 L CNN
F 1 "C 100n" H 7750 1600 50  0000 L CNN
F 2 "" H 7738 1550 50  0001 C CNN
F 3 "~" H 7700 1700 50  0001 C CNN
	1    7700 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9BBC
P 8300 1700
AR Path="/5D3E2E6F/5D43B010/5DAD9BBC" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BBC" Ref="C?"  Part="1" 
F 0 "C?" H 8400 1800 50  0000 L CNN
F 1 "C 100n" H 8350 1600 50  0000 L CNN
F 2 "" H 8338 1550 50  0001 C CNN
F 3 "~" H 8300 1700 50  0001 C CNN
	1    8300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1350 7100 1450
Wire Wire Line
	7700 1350 7700 1450
Wire Wire Line
	8300 1350 8300 1450
Wire Wire Line
	8300 1850 8300 2000
Wire Wire Line
	7100 2000 7100 1850
Wire Wire Line
	7700 1850 7700 2000
Connection ~ 7700 2000
Wire Wire Line
	7700 2000 7700 2150
Wire Wire Line
	8500 1450 8300 1450
Connection ~ 8300 1450
Wire Wire Line
	8300 1450 8300 1550
Text GLabel 9000 1450 2    50   Input ~ 0
Pin27b
Wire Wire Line
	9000 1450 8800 1450
Text GLabel 8050 1450 0    50   Input ~ 0
Pin14b
Wire Wire Line
	8300 1450 8050 1450
Text GLabel 7450 1450 0    50   Input ~ 0
Pin15b
Text GLabel 6800 1450 0    50   Input ~ 0
Pin4b
Wire Wire Line
	7700 900  8300 900 
Wire Wire Line
	7100 2000 7700 2000
Wire Wire Line
	7700 2000 8300 2000
Wire Wire Line
	7700 1450 7450 1450
Connection ~ 7700 1450
Wire Wire Line
	7700 1450 7700 1550
Wire Wire Line
	7100 1450 6800 1450
Connection ~ 7100 1450
Wire Wire Line
	7100 1450 7100 1550
Text GLabel 10200 1450 0    50   Input ~ 0
Pin12b
Text GLabel 7100 3150 0    50   Input ~ 0
Pin6b
Text GLabel 7750 3150 0    50   Input ~ 0
Pin33b
Text GLabel 9600 3150 0    50   Input ~ 0
Pin24b
Text GLabel 7100 5000 0    50   Input ~ 0
Pin44b
Text GLabel 7750 5000 0    50   Input ~ 0
Pin63b
Text GLabel 9600 5000 0    50   Input ~ 0
Pin41b
$Comp
L Device:C C?
U 1 1 5DAD9BE3
P 10450 2200
AR Path="/5D3E2E6F/5D43B010/5DAD9BE3" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BE3" Ref="C?"  Part="1" 
F 0 "C?" H 10300 2300 50  0000 L CNN
F 1 "C 10n" H 10150 2100 50  0000 L CNN
F 2 "" H 10488 2050 50  0001 C CNN
F 3 "~" H 10450 2200 50  0001 C CNN
	1    10450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 900  7100 1050
Wire Wire Line
	7100 900  7700 900 
Connection ~ 7700 900 
Wire Wire Line
	10200 900  10450 900 
Wire Wire Line
	10450 1350 10450 1450
$Comp
L Device:R R?
U 1 1 5DAD9BEE
P 10450 1700
AR Path="/5D3E2E6F/5D43B010/5DAD9BEE" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BEE" Ref="R?"  Part="1" 
F 0 "R?" H 10520 1746 50  0000 L CNN
F 1 "R 10" H 10520 1655 50  0000 L CNN
F 2 "" V 10380 1700 50  0001 C CNN
F 3 "~" H 10450 1700 50  0001 C CNN
	1    10450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1450 10450 1450
Connection ~ 10450 1450
Wire Wire Line
	10450 1450 10450 1550
Wire Wire Line
	10450 1850 10450 2050
Wire Wire Line
	10450 2600 10450 2350
Connection ~ 7100 900 
Wire Wire Line
	6800 900  7100 900 
Wire Wire Line
	8000 2750 8000 2600
$Comp
L Device:C C?
U 1 1 5DAD9BFC
P 7400 3400
AR Path="/5D3E2E6F/5D43B010/5DAD9BFC" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9BFC" Ref="C?"  Part="1" 
F 0 "C?" H 7250 3500 50  0000 L CNN
F 1 "C 100n" H 7100 3300 50  0000 L CNN
F 2 "" H 7438 3250 50  0001 C CNN
F 3 "~" H 7400 3400 50  0001 C CNN
	1    7400 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9C02
P 8000 3400
AR Path="/5D3E2E6F/5D43B010/5DAD9C02" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C02" Ref="C?"  Part="1" 
F 0 "C?" H 8100 3500 50  0000 L CNN
F 1 "C 100n" H 8050 3300 50  0000 L CNN
F 2 "" H 8038 3250 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3050 7400 3150
Wire Wire Line
	8000 3050 8000 3150
Wire Wire Line
	7400 3700 7400 3550
Wire Wire Line
	8000 3550 8000 3700
Wire Wire Line
	7400 3700 7700 3700
Wire Wire Line
	8000 3150 7750 3150
Connection ~ 8000 3150
Wire Wire Line
	8000 3150 8000 3250
Wire Wire Line
	7400 3150 7100 3150
Connection ~ 7400 3150
Wire Wire Line
	7400 3150 7400 3250
Wire Wire Line
	7400 2600 7400 2750
Wire Wire Line
	7400 2600 8000 2600
Connection ~ 7400 2600
Wire Wire Line
	7100 2600 7400 2600
Wire Wire Line
	7700 3850 7700 3700
Connection ~ 7700 3700
Wire Wire Line
	7700 3700 8000 3700
Wire Wire Line
	8000 4600 8000 4450
$Comp
L Device:C C?
U 1 1 5DAD9C1B
P 7400 5250
AR Path="/5D3E2E6F/5D43B010/5DAD9C1B" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C1B" Ref="C?"  Part="1" 
F 0 "C?" H 7250 5350 50  0000 L CNN
F 1 "C 100n" H 7100 5150 50  0000 L CNN
F 2 "" H 7438 5100 50  0001 C CNN
F 3 "~" H 7400 5250 50  0001 C CNN
	1    7400 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9C21
P 8000 5250
AR Path="/5D3E2E6F/5D43B010/5DAD9C21" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C21" Ref="C?"  Part="1" 
F 0 "C?" H 8100 5350 50  0000 L CNN
F 1 "C 100n" H 8050 5150 50  0000 L CNN
F 2 "" H 8038 5100 50  0001 C CNN
F 3 "~" H 8000 5250 50  0001 C CNN
	1    8000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4900 7400 5000
Wire Wire Line
	8000 4900 8000 5000
Wire Wire Line
	7400 5550 7400 5400
Wire Wire Line
	8000 5400 8000 5550
Wire Wire Line
	7700 5550 7700 5700
Wire Wire Line
	7400 5550 7700 5550
Wire Wire Line
	8000 5000 7750 5000
Connection ~ 8000 5000
Wire Wire Line
	8000 5000 8000 5100
Wire Wire Line
	7400 5000 7100 5000
Connection ~ 7400 5000
Wire Wire Line
	7400 5000 7400 5100
Wire Wire Line
	7400 4450 7400 4600
Wire Wire Line
	7400 4450 8000 4450
Connection ~ 7400 4450
Wire Wire Line
	7100 4450 7400 4450
Connection ~ 7700 5550
Wire Wire Line
	7700 5550 8000 5550
$Comp
L Device:C C?
U 1 1 5DAD9C39
P 9900 3400
AR Path="/5D3E2E6F/5D43B010/5DAD9C39" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C39" Ref="C?"  Part="1" 
F 0 "C?" H 9750 3500 50  0000 L CNN
F 1 "C 100n" H 9600 3300 50  0000 L CNN
F 2 "" H 9938 3250 50  0001 C CNN
F 3 "~" H 9900 3400 50  0001 C CNN
	1    9900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3050 9900 3150
Wire Wire Line
	9900 3150 9600 3150
Connection ~ 9900 3150
Wire Wire Line
	9900 3150 9900 3250
Wire Wire Line
	9900 2600 9900 2750
Wire Wire Line
	9600 2600 9900 2600
Wire Wire Line
	9900 3550 9900 3800
$Comp
L Device:C C?
U 1 1 5DAD9C46
P 9900 5250
AR Path="/5D3E2E6F/5D43B010/5DAD9C46" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C46" Ref="C?"  Part="1" 
F 0 "C?" H 9750 5350 50  0000 L CNN
F 1 "C 100n" H 9600 5150 50  0000 L CNN
F 2 "" H 9938 5100 50  0001 C CNN
F 3 "~" H 9900 5250 50  0001 C CNN
	1    9900 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4900 9900 5000
Wire Wire Line
	9900 5000 9600 5000
Connection ~ 9900 5000
Wire Wire Line
	9900 5000 9900 5100
Wire Wire Line
	9900 4450 9900 4600
Wire Wire Line
	9600 4450 9900 4450
Wire Wire Line
	9900 5400 9900 5650
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C53
P 9900 4750
AR Path="/5D3E2E6F/5D43B010/5DAD9C53" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C53" Ref="FB?"  Part="1" 
F 0 "FB?" H 10037 4796 50  0000 L CNN
F 1 "Ferrite_Bead" H 10000 4650 50  0000 L CNN
F 2 "" V 9830 4750 50  0001 C CNN
F 3 "~" H 9900 4750 50  0001 C CNN
	1    9900 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C59
P 8000 4750
AR Path="/5D3E2E6F/5D43B010/5DAD9C59" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C59" Ref="FB?"  Part="1" 
F 0 "FB?" H 8137 4796 50  0000 L CNN
F 1 "Ferrite_Bead" H 8100 4650 50  0000 L CNN
F 2 "" V 7930 4750 50  0001 C CNN
F 3 "~" H 8000 4750 50  0001 C CNN
	1    8000 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C5F
P 7400 4750
AR Path="/5D3E2E6F/5D43B010/5DAD9C5F" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C5F" Ref="FB?"  Part="1" 
F 0 "FB?" H 7537 4796 50  0000 L CNN
F 1 "Ferrite_Bead" H 7500 4650 50  0000 L CNN
F 2 "" V 7330 4750 50  0001 C CNN
F 3 "~" H 7400 4750 50  0001 C CNN
	1    7400 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C65
P 7400 2900
AR Path="/5D3E2E6F/5D43B010/5DAD9C65" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C65" Ref="FB?"  Part="1" 
F 0 "FB?" H 7537 2946 50  0000 L CNN
F 1 "Ferrite_Bead" H 7500 2800 50  0000 L CNN
F 2 "" V 7330 2900 50  0001 C CNN
F 3 "~" H 7400 2900 50  0001 C CNN
	1    7400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C6B
P 8000 2900
AR Path="/5D3E2E6F/5D43B010/5DAD9C6B" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C6B" Ref="FB?"  Part="1" 
F 0 "FB?" H 8137 2946 50  0000 L CNN
F 1 "Ferrite_Bead" H 8100 2800 50  0000 L CNN
F 2 "" V 7930 2900 50  0001 C CNN
F 3 "~" H 8000 2900 50  0001 C CNN
	1    8000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C71
P 9900 2900
AR Path="/5D3E2E6F/5D43B010/5DAD9C71" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C71" Ref="FB?"  Part="1" 
F 0 "FB?" H 10037 2946 50  0000 L CNN
F 1 "Ferrite_Bead" H 10000 2800 50  0000 L CNN
F 2 "" V 9830 2900 50  0001 C CNN
F 3 "~" H 9900 2900 50  0001 C CNN
	1    9900 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C77
P 10450 1200
AR Path="/5D3E2E6F/5D43B010/5DAD9C77" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C77" Ref="FB?"  Part="1" 
F 0 "FB?" H 10587 1246 50  0000 L CNN
F 1 "Ferrite_Bead" H 10550 1100 50  0000 L CNN
F 2 "" V 10380 1200 50  0001 C CNN
F 3 "~" H 10450 1200 50  0001 C CNN
	1    10450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C7D
P 8300 1200
AR Path="/5D3E2E6F/5D43B010/5DAD9C7D" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C7D" Ref="FB?"  Part="1" 
F 0 "FB?" H 8437 1246 50  0000 L CNN
F 1 "Ferrite_Bead" H 8400 1100 50  0000 L CNN
F 2 "" V 8230 1200 50  0001 C CNN
F 3 "~" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C83
P 7700 1200
AR Path="/5D3E2E6F/5D43B010/5DAD9C83" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C83" Ref="FB?"  Part="1" 
F 0 "FB?" H 7837 1246 50  0000 L CNN
F 1 "Ferrite_Bead" H 7800 1100 50  0000 L CNN
F 2 "" V 7630 1200 50  0001 C CNN
F 3 "~" H 7700 1200 50  0001 C CNN
	1    7700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead FB?
U 1 1 5DAD9C89
P 7100 1200
AR Path="/5D3E2E6F/5D43B010/5DAD9C89" Ref="FB?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C89" Ref="FB?"  Part="1" 
F 0 "FB?" H 7237 1246 50  0000 L CNN
F 1 "Ferrite_Bead" H 7200 1100 50  0000 L CNN
F 2 "" V 7030 1200 50  0001 C CNN
F 3 "~" H 7100 1200 50  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 5DAD9C8F
P 8650 1450
AR Path="/5D3E2E6F/5D43B010/5DAD9C8F" Ref="L?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9C8F" Ref="L?"  Part="1" 
F 0 "L?" V 8700 1600 50  0000 C CNN
F 1 "L 8.2n" V 8750 1450 50  0000 C CNN
F 2 "" H 8650 1450 50  0001 C CNN
F 3 "~" H 8650 1450 50  0001 C CNN
	1    8650 1450
	0    1    1    0   
$EndComp
Text GLabel 2650 1200 0    50   Input ~ 0
Pin6b
Text GLabel 2650 1300 0    50   Input ~ 0
Pin33b
Text GLabel 2650 1400 0    50   Input ~ 0
Pin4b
Text GLabel 2650 1500 0    50   Input ~ 0
Pin14b
Text GLabel 2650 1600 0    50   Input ~ 0
Pin15b
Text GLabel 2650 1700 0    50   Input ~ 0
Pin27b
Text GLabel 2650 1800 0    50   Input ~ 0
Pin24b
Text GLabel 2650 1900 0    50   Input ~ 0
Pin12b
Text GLabel 2650 2000 0    50   Input ~ 0
Pin41b
Text GLabel 2650 2200 0    50   Input ~ 0
Pin44b
Text GLabel 2650 2300 0    50   Input ~ 0
Pin63b
Wire Wire Line
	2650 1200 2900 1200
Wire Wire Line
	2900 1300 2650 1300
Wire Wire Line
	2900 1400 2650 1400
Wire Wire Line
	2900 1500 2650 1500
Wire Wire Line
	2900 1600 2650 1600
Wire Wire Line
	2900 1700 2650 1700
Wire Wire Line
	2900 1800 2650 1800
Wire Wire Line
	2900 1900 2650 1900
Wire Wire Line
	2900 2000 2650 2000
Wire Wire Line
	2900 2200 2650 2200
Wire Wire Line
	2900 2300 2650 2300
$Comp
L power:+2V5 #PWR?
U 1 1 5DAD9CAB
P 7100 2600
AR Path="/5D3E2E6F/5D43B010/5DAD9CAB" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CAB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 2450 50  0001 C CNN
F 1 "+2V5" V 7115 2728 50  0000 L CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0001 C CNN
	1    7100 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DAD9CB1
P 6800 900
AR Path="/5D3E2E6F/5D43B010/5DAD9CB1" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CB1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 750 50  0001 C CNN
F 1 "+5V" V 6815 1028 50  0000 L CNN
F 2 "" H 6800 900 50  0001 C CNN
F 3 "" H 6800 900 50  0001 C CNN
	1    6800 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DAD9CB7
P 9600 2600
AR Path="/5D3E2E6F/5D43B010/5DAD9CB7" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CB7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9600 2450 50  0001 C CNN
F 1 "+5V" V 9615 2728 50  0000 L CNN
F 2 "" H 9600 2600 50  0001 C CNN
F 3 "" H 9600 2600 50  0001 C CNN
	1    9600 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DAD9CBD
P 10200 900
AR Path="/5D3E2E6F/5D43B010/5DAD9CBD" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CBD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10200 750 50  0001 C CNN
F 1 "+5V" V 10215 1028 50  0000 L CNN
F 2 "" H 10200 900 50  0001 C CNN
F 3 "" H 10200 900 50  0001 C CNN
	1    10200 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DAD9CC3
P 7100 4450
AR Path="/5D3E2E6F/5D43B010/5DAD9CC3" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CC3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7100 4300 50  0001 C CNN
F 1 "+2V5" V 7115 4578 50  0000 L CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	1    7100 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:+2V5 #PWR?
U 1 1 5DAD9CC9
P 9600 4450
AR Path="/5D3E2E6F/5D43B010/5DAD9CC9" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CC9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9600 4300 50  0001 C CNN
F 1 "+2V5" V 9615 4578 50  0000 L CNN
F 2 "" H 9600 4450 50  0001 C CNN
F 3 "" H 9600 4450 50  0001 C CNN
	1    9600 4450
	0    -1   -1   0   
$EndComp
Text GLabel 2650 4800 0    50   Input ~ 0
ADCReset
Wire Wire Line
	2650 4800 2900 4800
Text GLabel 2650 5000 0    50   Input ~ 0
ADCSync
Wire Wire Line
	2900 5000 2650 5000
$Comp
L Device:R R?
U 1 1 5DAD9CD3
P 5200 6800
AR Path="/5D3E2E6F/5D43B010/5DAD9CD3" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CD3" Ref="R?"  Part="1" 
F 0 "R?" V 4993 6800 50  0000 C CNN
F 1 "R 1k" V 5084 6800 50  0000 C CNN
F 2 "" V 5130 6800 50  0001 C CNN
F 3 "~" H 5200 6800 50  0001 C CNN
	1    5200 6800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9CD9
P 1400 6700
AR Path="/5D3E2E6F/5D43B010/5DAD9CD9" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CD9" Ref="R?"  Part="1" 
F 0 "R?" V 1193 6700 50  0000 C CNN
F 1 "R 2k" V 1284 6700 50  0000 C CNN
F 2 "" V 1330 6700 50  0001 C CNN
F 3 "~" H 1400 6700 50  0001 C CNN
	1    1400 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9CDF
P 3300 6100
AR Path="/5D3E2E6F/5D43B010/5DAD9CDF" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CDF" Ref="R?"  Part="1" 
F 0 "R?" V 3093 6100 50  0000 C CNN
F 1 "R 2k" V 3184 6100 50  0000 C CNN
F 2 "" V 3230 6100 50  0001 C CNN
F 3 "~" H 3300 6100 50  0001 C CNN
	1    3300 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9CE5
P 1700 7050
AR Path="/5D3E2E6F/5D43B010/5DAD9CE5" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CE5" Ref="R?"  Part="1" 
F 0 "R?" H 1630 7004 50  0000 R CNN
F 1 "R 1k" H 1630 7095 50  0000 R CNN
F 2 "" V 1630 7050 50  0001 C CNN
F 3 "~" H 1700 7050 50  0001 C CNN
	1    1700 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 6800 1700 6900
Wire Wire Line
	2200 6700 1900 6700
Wire Wire Line
	1900 6700 1900 6100
Wire Wire Line
	1900 6100 3150 6100
Connection ~ 1900 6700
Wire Wire Line
	1900 6700 1550 6700
Wire Wire Line
	4800 6100 4800 6800
$Comp
L power:GND #PWR?
U 1 1 5DAD9CF2
P 1700 7450
AR Path="/5D3E2E6F/5D43B010/5DAD9CF2" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9CF2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 7200 50  0001 C CNN
F 1 "GND" H 1705 7277 50  0000 C CNN
F 2 "" H 1700 7450 50  0001 C CNN
F 3 "" H 1700 7450 50  0001 C CNN
	1    1700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 7200 1700 7450
Text GLabel 1000 6700 0    50   Input ~ 0
BxFiltered
Wire Wire Line
	1000 6700 1250 6700
Wire Wire Line
	4650 6600 4650 6700
Wire Wire Line
	2200 6600 2050 6600
Wire Wire Line
	2050 6600 2050 6450
Wire Wire Line
	4650 6700 4500 6700
Wire Wire Line
	4500 6600 4650 6600
Wire Wire Line
	4500 6800 4800 6800
$Comp
L 2019-07-11_16-02-03:AD8021ARZ U?
U 1 1 5DAD9D01
P 1500 6650
AR Path="/5D3E2E6F/5D43B010/5DAD9D01" Ref="U?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D01" Ref="U?"  Part="1" 
F 0 "U?" H 3350 6987 60  0000 C CNN
F 1 "AD8021ARZ" H 3350 6881 60  0000 C CNN
F 2 "R_8" H 3300 6900 60  0001 C CNN
F 3 "" H 2200 6700 60  0000 C CNN
	1    1500 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9D07
P 3300 7250
AR Path="/5D3E2E6F/5D43B010/5DAD9D07" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D07" Ref="C?"  Part="1" 
F 0 "C?" V 3150 7250 50  0000 C CNN
F 1 "C 10p" V 3450 7250 50  0000 C CNN
F 2 "" H 3338 7100 50  0001 C CNN
F 3 "~" H 3300 7250 50  0001 C CNN
	1    3300 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6900 4650 6900
Wire Wire Line
	4650 6900 4650 7250
Wire Wire Line
	4650 7250 3450 7250
Wire Wire Line
	2200 6900 2000 6900
Wire Wire Line
	2000 6900 2000 7250
Wire Wire Line
	2000 7250 3150 7250
Wire Wire Line
	1700 6800 2200 6800
Wire Wire Line
	2000 7250 2000 7400
Connection ~ 2000 7250
Wire Wire Line
	4650 6600 4650 6500
Connection ~ 4650 6600
$Comp
L Device:C C?
U 1 1 5DAD9D18
P 5600 6600
AR Path="/5D3E2E6F/5D43B010/5DAD9D18" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D18" Ref="C?"  Part="1" 
F 0 "C?" H 5715 6646 50  0000 L CNN
F 1 "C 5.6p" H 5650 6500 50  0000 L CNN
F 2 "" H 5638 6450 50  0001 C CNN
F 3 "~" H 5600 6600 50  0001 C CNN
	1    5600 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6450 5600 6400
$Comp
L Device:R R?
U 1 1 5DAD9D1F
P 5200 6400
AR Path="/5D3E2E6F/5D43B010/5DAD9D1F" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D1F" Ref="R?"  Part="1" 
F 0 "R?" V 4993 6400 50  0000 C CNN
F 1 "R 1k" V 5084 6400 50  0000 C CNN
F 2 "" V 5130 6400 50  0001 C CNN
F 3 "~" H 5200 6400 50  0001 C CNN
	1    5200 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 6800 5600 6800
Wire Wire Line
	5350 6400 5600 6400
Wire Wire Line
	5600 6800 5600 6750
Text GLabel 2650 3100 0    50   Input ~ 0
Pin19b
Wire Wire Line
	2900 3100 2650 3100
Wire Wire Line
	2900 3000 2650 3000
Text GLabel 5950 6800 2    50   Input ~ 0
Pin20b
Text GLabel 5950 6400 2    50   Input ~ 0
Pin19b
Wire Wire Line
	5600 6800 5950 6800
Connection ~ 5600 6800
Wire Wire Line
	5600 6400 5950 6400
Connection ~ 5600 6400
Text GLabel 2250 2800 3    50   Input ~ 0
Pin22b+
Text GLabel 2100 2700 3    50   Input ~ 0
Pin21b-
Text GLabel 6550 6950 2    50   Input ~ 0
Pin22b+
Text GLabel 6550 6250 2    50   Input ~ 0
Pin21b-
Connection ~ 4800 6800
Wire Wire Line
	4800 6800 5050 6800
Wire Wire Line
	3450 6100 4800 6100
$Comp
L Device:R R?
U 1 1 5DAD9D39
P 5900 7100
AR Path="/5D3E2E6F/5D43B010/5DAD9D39" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D39" Ref="R?"  Part="1" 
F 0 "R?" V 5693 7100 50  0000 C CNN
F 1 "R 655" V 5784 7100 50  0000 C CNN
F 2 "" V 5830 7100 50  0001 C CNN
F 3 "~" H 5900 7100 50  0001 C CNN
	1    5900 7100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9D3F
P 5900 6150
AR Path="/5D3E2E6F/5D43B010/5DAD9D3F" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D3F" Ref="R?"  Part="1" 
F 0 "R?" V 6000 6150 50  0000 C CNN
F 1 "R 655" V 5784 6150 50  0000 C CNN
F 2 "" V 5830 6150 50  0001 C CNN
F 3 "~" H 5900 6150 50  0001 C CNN
	1    5900 6150
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9D45
P 5900 7300
AR Path="/5D3E2E6F/5D43B010/5DAD9D45" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D45" Ref="C?"  Part="1" 
F 0 "C?" V 6150 7250 50  0000 L CNN
F 1 "C 33p" V 6050 7150 50  0000 L CNN
F 2 "" H 5938 7150 50  0001 C CNN
F 3 "~" H 5900 7300 50  0001 C CNN
	1    5900 7300
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9D4B
P 5900 5800
AR Path="/5D3E2E6F/5D43B010/5DAD9D4B" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D4B" Ref="C?"  Part="1" 
F 0 "C?" V 5650 5750 50  0000 L CNN
F 1 "C 33p" V 5750 5700 50  0000 L CNN
F 2 "" H 5938 5650 50  0001 C CNN
F 3 "~" H 5900 5800 50  0001 C CNN
	1    5900 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 6400 5600 6150
Wire Wire Line
	5600 5800 5750 5800
Wire Wire Line
	5750 6150 5600 6150
Connection ~ 5600 6150
Wire Wire Line
	5600 6150 5600 5800
Wire Wire Line
	6050 6150 6400 6150
Wire Wire Line
	6400 6150 6400 6250
Wire Wire Line
	6400 6250 6550 6250
Wire Wire Line
	6050 5800 6400 5800
Wire Wire Line
	6400 5800 6400 6150
Connection ~ 6400 6150
Wire Wire Line
	5600 6800 5600 7100
Wire Wire Line
	5600 7100 5750 7100
Wire Wire Line
	5600 7100 5600 7300
Wire Wire Line
	5600 7300 5750 7300
Connection ~ 5600 7100
Wire Wire Line
	6050 7300 6400 7300
Wire Wire Line
	6400 7300 6400 7100
Wire Wire Line
	6400 6950 6550 6950
Wire Wire Line
	6050 7100 6400 7100
Connection ~ 6400 7100
Wire Wire Line
	6400 7100 6400 6950
Text GLabel 4900 6250 1    50   Input ~ 0
BxFiltered
Wire Wire Line
	4900 6250 4900 6400
Wire Wire Line
	4900 6400 5050 6400
$Comp
L Device:R R?
U 1 1 5DAD9D6A
P 2600 2500
AR Path="/5D3E2E6F/5D43B010/5DAD9D6A" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D6A" Ref="R?"  Part="1" 
F 0 "R?" V 2550 2350 50  0000 C CNN
F 1 "R 18" V 2550 2750 50  0000 C CNN
F 2 "" V 2530 2500 50  0001 C CNN
F 3 "~" H 2600 2500 50  0001 C CNN
	1    2600 2500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9D70
P 2600 2600
AR Path="/5D3E2E6F/5D43B010/5DAD9D70" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D70" Ref="R?"  Part="1" 
F 0 "R?" V 2650 2450 50  0000 C CNN
F 1 "R 18" V 2650 2850 50  0000 C CNN
F 2 "" V 2530 2600 50  0001 C CNN
F 3 "~" H 2600 2600 50  0001 C CNN
	1    2600 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2500 2750 2500
Wire Wire Line
	2900 2600 2750 2600
Wire Wire Line
	2250 2800 2900 2800
Wire Wire Line
	2100 2700 2900 2700
Wire Wire Line
	2250 2800 2250 2500
Wire Wire Line
	2250 2500 2450 2500
Wire Wire Line
	2100 2700 2100 2600
Wire Wire Line
	2100 2600 2450 2600
$Comp
L Device:R R?
U 1 1 5DAD9D7E
P 1050 4600
AR Path="/5D3E2E6F/5D43B010/5DAD9D7E" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D7E" Ref="R?"  Part="1" 
F 0 "R?" V 843 4600 50  0000 C CNN
F 1 "R 100" V 934 4600 50  0000 C CNN
F 2 "" V 980 4600 50  0001 C CNN
F 3 "~" H 1050 4600 50  0001 C CNN
	1    1050 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DAD9D84
P 1600 4600
AR Path="/5D3E2E6F/5D43B010/5DAD9D84" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D84" Ref="R?"  Part="1" 
F 0 "R?" V 1393 4600 50  0000 C CNN
F 1 "R 10" V 1484 4600 50  0000 C CNN
F 2 "" V 1530 4600 50  0001 C CNN
F 3 "~" H 1600 4600 50  0001 C CNN
	1    1600 4600
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9D8A
P 1300 4800
AR Path="/5D3E2E6F/5D43B010/5DAD9D8A" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D8A" Ref="C?"  Part="1" 
F 0 "C?" H 1415 4846 50  0000 L CNN
F 1 "C 100u" H 1415 4755 50  0000 L CNN
F 2 "" H 1338 4650 50  0001 C CNN
F 3 "~" H 1300 4800 50  0001 C CNN
	1    1300 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5DAD9D90
P 2000 4200
AR Path="/5D3E2E6F/5D43B010/5DAD9D90" Ref="C?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D90" Ref="C?"  Part="1" 
F 0 "C?" H 2050 4300 50  0000 L CNN
F 1 "C 10n" H 2000 4100 50  0000 L CNN
F 2 "" H 2038 4050 50  0001 C CNN
F 3 "~" H 2000 4200 50  0001 C CNN
	1    2000 4200
	1    0    0    -1  
$EndComp
Text GLabel 800  4600 0    50   Input ~ 0
Vref
Wire Wire Line
	1850 4600 1850 4000
Wire Wire Line
	2000 4000 2000 4050
$Comp
L power:GND #PWR?
U 1 1 5DAD9D99
P 1300 5100
AR Path="/5D3E2E6F/5D43B010/5DAD9D99" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D99" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1300 4850 50  0001 C CNN
F 1 "GND" H 1305 4927 50  0000 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAD9D9F
P 2000 4500
AR Path="/5D3E2E6F/5D43B010/5DAD9D9F" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9D9F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 4250 50  0001 C CNN
F 1 "GND" H 2005 4327 50  0000 C CNN
F 2 "" H 2000 4500 50  0001 C CNN
F 3 "" H 2000 4500 50  0001 C CNN
	1    2000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 2000 4500
$Comp
L power:GNDREF #PWR?
U 1 1 5DAD9DA6
P 5700 1500
AR Path="/5D3E2E6F/5D43B010/5DAD9DA6" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9DA6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 1250 50  0001 C CNN
F 1 "GNDREF" H 5705 1327 50  0000 C CNN
F 2 "" H 5700 1500 50  0001 C CNN
F 3 "" H 5700 1500 50  0001 C CNN
	1    5700 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 1500 5700 1400
$Comp
L power:GND #PWR?
U 1 1 5DAD9DAD
P 2050 6450
AR Path="/5D3E2E6F/5D43B010/5DAD9DAD" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9DAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2050 6200 50  0001 C CNN
F 1 "GND" H 2055 6277 50  0000 C CNN
F 2 "" H 2050 6450 50  0001 C CNN
F 3 "" H 2050 6450 50  0001 C CNN
	1    2050 6450
	-1   0    0    1   
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5DAD9DB3
P 2000 7400
AR Path="/5D3E2E6F/5D43B010/5DAD9DB3" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9DB3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 7500 50  0001 C CNN
F 1 "-5V" H 2015 7573 50  0000 C CNN
F 2 "" H 2000 7400 50  0001 C CNN
F 3 "" H 2000 7400 50  0001 C CNN
	1    2000 7400
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DAD9DB9
P 4650 6500
AR Path="/5D3E2E6F/5D43B010/5DAD9DB9" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9DB9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 6350 50  0001 C CNN
F 1 "+5V" H 4665 6673 50  0000 C CNN
F 2 "" H 4650 6500 50  0001 C CNN
F 3 "" H 4650 6500 50  0001 C CNN
	1    4650 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1400 4900 1400
Wire Wire Line
	4900 1500 5200 1500
Wire Wire Line
	5200 1500 5200 1600
Wire Wire Line
	5200 2100 5500 2100
Wire Wire Line
	5200 2100 4900 2100
Connection ~ 5200 2100
Wire Wire Line
	4900 2000 5200 2000
Connection ~ 5200 2000
Wire Wire Line
	5200 2000 5200 2100
Wire Wire Line
	4900 1900 5200 1900
Connection ~ 5200 1900
Wire Wire Line
	5200 1900 5200 2000
Wire Wire Line
	4900 1800 5200 1800
Connection ~ 5200 1800
Wire Wire Line
	5200 1800 5200 1900
Wire Wire Line
	4900 1700 5200 1700
Connection ~ 5200 1700
Wire Wire Line
	5200 1700 5200 1800
Wire Wire Line
	4900 1600 5200 1600
Connection ~ 5200 1600
Wire Wire Line
	5200 1600 5200 1700
Text GLabel 5500 2200 2    50   Input ~ 0
AGND4b
Text GLabel 5500 2600 2    50   Input ~ 0
AGND3b
Text GLabel 5500 3100 2    50   Input ~ 0
AGND2b
Text GLabel 5500 3300 2    50   Input ~ 0
AGND1b
Wire Wire Line
	4900 2200 5500 2200
Wire Wire Line
	4900 2300 5200 2300
Wire Wire Line
	5200 2300 5200 2400
Wire Wire Line
	5200 2600 5500 2600
Wire Wire Line
	4900 2600 5200 2600
Connection ~ 5200 2600
Wire Wire Line
	5200 2500 4900 2500
Connection ~ 5200 2500
Wire Wire Line
	5200 2500 5200 2600
Wire Wire Line
	4900 2400 5200 2400
Connection ~ 5200 2400
Wire Wire Line
	5200 2400 5200 2500
Wire Wire Line
	4900 2700 5200 2700
Wire Wire Line
	5200 3100 5500 3100
Wire Wire Line
	5200 3100 4900 3100
Connection ~ 5200 3100
Wire Wire Line
	4900 3000 5200 3000
Wire Wire Line
	5200 2700 5200 2800
Connection ~ 5200 3000
Wire Wire Line
	5200 3000 5200 3100
Wire Wire Line
	5200 2900 4900 2900
Connection ~ 5200 2900
Wire Wire Line
	5200 2900 5200 3000
Wire Wire Line
	4900 2800 5200 2800
Connection ~ 5200 2800
Wire Wire Line
	5200 2800 5200 2900
Wire Wire Line
	4900 3200 5200 3200
Wire Wire Line
	5200 3200 5200 3300
Wire Wire Line
	5200 3300 5500 3300
Wire Wire Line
	5200 3300 4900 3300
Connection ~ 5200 3300
Text GLabel 5850 950  1    50   Input ~ 0
AGND4b
Text GLabel 6000 950  1    50   Input ~ 0
AGND3b
Text GLabel 6150 950  1    50   Input ~ 0
AGND2b
Text GLabel 6300 950  1    50   Input ~ 0
AGND1b
Wire Wire Line
	5700 950  5700 1200
Wire Wire Line
	5700 1200 5850 1200
Wire Wire Line
	6000 1200 6000 1300
Wire Wire Line
	6300 950  6300 1200
Wire Wire Line
	6300 1200 6150 1200
Connection ~ 6000 1200
Wire Wire Line
	5850 950  5850 1200
Connection ~ 5850 1200
Wire Wire Line
	5850 1200 6000 1200
Wire Wire Line
	6000 950  6000 1200
Wire Wire Line
	6150 950  6150 1200
Connection ~ 6150 1200
Wire Wire Line
	6150 1200 6000 1200
Text GLabel 7700 3850 3    50   Input ~ 0
AGND1b
Text GLabel 7700 2150 3    50   Input ~ 0
AGND2b
Text GLabel 9900 3800 3    50   Input ~ 0
AGND3b
Text GLabel 10450 2600 3    50   Input ~ 0
AGND4b
Wire Wire Line
	900  4600 800  4600
Wire Wire Line
	1200 4600 1300 4600
Wire Wire Line
	1300 4650 1300 4600
Connection ~ 1300 4600
Wire Wire Line
	1300 4600 1450 4600
Wire Wire Line
	1300 4950 1300 5100
Wire Wire Line
	650  3500 650  3300
Wire Wire Line
	650  3800 650  3900
Connection ~ 800  3900
Wire Wire Line
	800  3900 950  3900
Wire Wire Line
	650  3900 800  3900
Wire Wire Line
	1850 4600 1750 4600
Wire Wire Line
	1350 3800 2900 3800
Wire Wire Line
	950  3400 2900 3400
Wire Wire Line
	650  3300 2900 3300
Text GLabel 1800 1900 2    50   Input ~ 0
ADR2b
Text GLabel 1800 1750 2    50   Input ~ 0
ADR1b
Text GLabel 1800 1600 2    50   Input ~ 0
ADR0b
$Comp
L Device:R R?
U 1 1 5DAD9E1E
P 1550 1150
AR Path="/5D3E2E6F/5D43B010/5DAD9E1E" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E1E" Ref="R?"  Part="1" 
F 0 "R?" V 1550 1150 50  0000 C CNN
F 1 "R 5k" V 1600 1350 50  0000 C CNN
F 2 "" V 1480 1150 50  0001 C CNN
F 3 "~" H 1550 1150 50  0001 C CNN
	1    1550 1150
	0    -1   -1   0   
$EndComp
Text GLabel 1800 1450 2    50   Input ~ 0
SH2
Text GLabel 1800 1300 2    50   Input ~ 0
SH1
Text GLabel 1800 1150 2    50   Input ~ 0
SH0
Wire Wire Line
	1800 1150 1700 1150
Wire Wire Line
	1050 1900 1050 1750
Connection ~ 1050 1450
Wire Wire Line
	1050 1450 1050 1300
Connection ~ 1050 1750
Wire Wire Line
	1050 1900 850  1900
$Comp
L power:+2V5 #PWR?
U 1 1 5DAD9E30
P 850 1150
AR Path="/5D3E2E6F/5D43B010/5DAD9E30" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E30" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 850 1000 50  0001 C CNN
F 1 "+2V5" V 865 1278 50  0000 L CNN
F 2 "" H 850 1150 50  0001 C CNN
F 3 "" H 850 1150 50  0001 C CNN
	1    850  1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1400 1150 950  1150
Text GLabel 5500 3600 2    50   Input ~ 0
ADR2b
Text GLabel 5500 3700 2    50   Input ~ 0
ADR1b
Text GLabel 5500 3800 2    50   Input ~ 0
ADR0b
Text GLabel 2650 4600 0    50   Input ~ 0
SH2
Text GLabel 2650 4200 0    50   Input ~ 0
SH1
Text GLabel 5500 3500 2    50   Input ~ 0
SH0
Wire Wire Line
	5500 3800 4900 3800
Wire Wire Line
	5500 3700 4900 3700
Wire Wire Line
	4900 3600 5500 3600
Wire Wire Line
	4900 3500 5500 3500
Wire Wire Line
	2900 4600 2650 4600
Wire Wire Line
	2900 4200 2650 4200
Connection ~ 2000 4000
Wire Wire Line
	2000 4000 2900 4000
Wire Wire Line
	1850 4000 2000 4000
Text GLabel 2650 3600 0    50   Input ~ 0
MCLK
Wire Wire Line
	2650 3600 2900 3600
Text GLabel 5500 4300 2    50   Input ~ 0
SDO
Wire Wire Line
	5500 4300 4900 4300
Text GLabel 2650 4400 0    50   Input ~ 0
DRDY
Wire Wire Line
	2650 4400 2900 4400
Wire Wire Line
	4900 1100 5450 1100
$Comp
L power:GNDD #PWR?
U 1 1 5DAD9E4D
P 5500 2100
AR Path="/5D3E2E6F/5D43B010/5DAD9E4D" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E4D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 1850 50  0001 C CNN
F 1 "GNDD" V 5504 1990 50  0000 R CNN
F 2 "" H 5500 2100 50  0001 C CNN
F 3 "" H 5500 2100 50  0001 C CNN
	1    5500 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5DAD9E53
P 5700 950
AR Path="/5D3E2E6F/5D43B010/5DAD9E53" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5700 700 50  0001 C CNN
F 1 "GNDD" H 5704 795 50  0000 C CNN
F 2 "" H 5700 950 50  0001 C CNN
F 3 "" H 5700 950 50  0001 C CNN
	1    5700 950 
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5DAD9E59
P 9900 5650
AR Path="/5D3E2E6F/5D43B010/5DAD9E59" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E59" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9900 5400 50  0001 C CNN
F 1 "GNDD" H 9904 5495 50  0000 C CNN
F 2 "" H 9900 5650 50  0001 C CNN
F 3 "" H 9900 5650 50  0001 C CNN
	1    9900 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5DAD9E5F
P 7700 5700
AR Path="/5D3E2E6F/5D43B010/5DAD9E5F" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E5F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 5450 50  0001 C CNN
F 1 "GNDD" H 7704 5545 50  0000 C CNN
F 2 "" H 7700 5700 50  0001 C CNN
F 3 "" H 7700 5700 50  0001 C CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR?
U 1 1 5DAD9E65
P 850 1900
AR Path="/5D3E2E6F/5D43B010/5DAD9E65" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DAD9E65" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 850 1650 50  0001 C CNN
F 1 "GNDD" V 854 1790 50  0000 R CNN
F 2 "" H 850 1900 50  0001 C CNN
F 3 "" H 850 1900 50  0001 C CNN
	1    850  1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 1200 5450 1200
Wire Wire Line
	5450 1100 5450 1200
Connection ~ 5700 1200
Text GLabel 5500 4500 2    50   Input ~ 0
FSOb
Wire Wire Line
	5500 4500 4900 4500
Text GLabel 5500 4200 2    50   Input ~ 0
SDI
Text GLabel 5500 4100 2    50   Input ~ 0
FSI
Wire Wire Line
	4900 4100 5500 4100
Wire Wire Line
	5500 4200 4900 4200
Wire Wire Line
	1050 1900 1800 1900
Wire Wire Line
	1050 1750 1800 1750
Wire Wire Line
	1050 1450 1800 1450
Wire Wire Line
	1050 1300 1800 1300
Connection ~ 1050 1900
Wire Wire Line
	1050 1450 1050 1750
$Comp
L Device:R R?
U 1 1 5DB15B2C
P 1550 1600
AR Path="/5D3E2E6F/5D43B010/5DB15B2C" Ref="R?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DB15B2C" Ref="R?"  Part="1" 
F 0 "R?" V 1550 1600 50  0000 C CNN
F 1 "R 5k" V 1600 1800 50  0000 C CNN
F 2 "" V 1480 1600 50  0001 C CNN
F 3 "~" H 1550 1600 50  0001 C CNN
	1    1550 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1600 1800 1600
Wire Wire Line
	1400 1600 950  1600
Wire Wire Line
	950  1600 950  1150
Connection ~ 950  1150
Wire Wire Line
	950  1150 850  1150
Text GLabel 2650 3000 0    50   Input ~ 0
Pin20b
Wire Wire Line
	4900 4800 5200 4800
Wire Wire Line
	4900 4600 5200 4600
$Comp
L power:GNDD #PWR?
U 1 1 5DBB9BE9
P 5200 5150
AR Path="/5D3E2E6F/5D43B010/5DBB9BE9" Ref="#PWR?"  Part="1" 
AR Path="/5D3E2E6F/5D43B07B/5DBB9BE9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 4900 50  0001 C CNN
F 1 "GNDD" H 5204 4995 50  0000 C CNN
F 2 "" H 5200 5150 50  0001 C CNN
F 3 "" H 5200 5150 50  0001 C CNN
	1    5200 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5000 5200 5000
Wire Wire Line
	5200 5150 5200 5000
Connection ~ 5200 5000
Wire Wire Line
	5200 5000 5200 4800
Connection ~ 5200 4800
Wire Wire Line
	5200 4800 5200 4600
Text GLabel 5500 4000 2    50   Input ~ 0
SDLb
Wire Wire Line
	4900 4000 5500 4000
$EndSCHEMATC
