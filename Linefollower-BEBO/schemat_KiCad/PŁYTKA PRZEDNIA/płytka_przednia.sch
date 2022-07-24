EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:edulib
LIBS:stm32
LIBS:warsztaty
LIBS:stm32 (2)
LIBS:płytka_przednia-cache
EELAYER 25 0
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
L KTIR0711S T1
U 1 1 58232FBC
P 1650 2000
F 0 "T1" H 1550 2200 50  0000 L CNN
F 1 "KTIR0711S" H 1650 2200 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 1450 1800 50  0001 L CIN
F 3 "" H 1650 2000 50  0000 L CNN
	1    1650 2000
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5823309C
P 1350 1600
F 0 "R11" V 1430 1600 50  0000 C CNN
F 1 "200" V 1350 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 1600 50  0001 C CNN
F 3 "" H 1350 1600 50  0000 C CNN
	1    1350 1600
	1    0    0    -1  
$EndComp
$Comp
L R R12
U 1 1 582356E1
P 2100 1600
F 0 "R12" V 2180 1600 50  0000 C CNN
F 1 "10K" V 2100 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 1600 50  0001 C CNN
F 3 "" H 2100 1600 50  0000 C CNN
	1    2100 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 58235780
P 1950 2300
F 0 "#PWR01" H 1950 2050 50  0001 C CNN
F 1 "GND" H 1950 2150 50  0000 C CNN
F 2 "" H 1950 2300 50  0000 C CNN
F 3 "" H 1950 2300 50  0000 C CNN
	1    1950 2300
	1    0    0    -1  
$EndComp
Text Label 7650 2900 2    60   ~ 0
T1
Text Label 7650 3000 2    60   ~ 0
T2
Text Label 7650 3100 2    60   ~ 0
T3
Text Label 7650 3200 2    60   ~ 0
T4
Text Label 7650 3300 2    60   ~ 0
T5
Text Label 7650 3400 2    60   ~ 0
T6
Text Label 7650 3500 2    60   ~ 0
T7
Text Label 7650 3600 2    60   ~ 0
T8
$Comp
L VCC #PWR02
U 1 1 58283D85
P 1350 1450
F 0 "#PWR02" H 1350 1300 50  0001 C CNN
F 1 "VCC" H 1350 1600 50  0000 C CNN
F 2 "" H 1350 1450 50  0000 C CNN
F 3 "" H 1350 1450 50  0000 C CNN
	1    1350 1450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR03
U 1 1 58283DDF
P 2100 1400
F 0 "#PWR03" H 2100 1250 50  0001 C CNN
F 1 "VCC" H 2100 1550 50  0000 C CNN
F 2 "" H 2100 1400 50  0000 C CNN
F 3 "" H 2100 1400 50  0000 C CNN
	1    2100 1400
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T3
U 1 1 58286AC4
P 1650 3400
F 0 "T3" H 1550 3600 50  0000 L CNN
F 1 "KTIR0711S" H 1650 3600 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 1450 3200 50  0001 L CIN
F 3 "" H 1650 3400 50  0000 L CNN
	1    1650 3400
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 58286ACA
P 1350 3000
F 0 "R31" V 1430 3000 50  0000 C CNN
F 1 "200" V 1350 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 3000 50  0001 C CNN
F 3 "" H 1350 3000 50  0000 C CNN
	1    1350 3000
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 58286AD6
P 2100 3000
F 0 "R32" V 2180 3000 50  0000 C CNN
F 1 "10k" V 2100 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 3000 50  0001 C CNN
F 3 "" H 2100 3000 50  0000 C CNN
	1    2100 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58286ADC
P 1950 3700
F 0 "#PWR04" H 1950 3450 50  0001 C CNN
F 1 "GND" H 1950 3550 50  0000 C CNN
F 2 "" H 1950 3700 50  0000 C CNN
F 3 "" H 1950 3700 50  0000 C CNN
	1    1950 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 58286AF5
P 1350 2850
F 0 "#PWR05" H 1350 2700 50  0001 C CNN
F 1 "VCC" H 1350 3000 50  0000 C CNN
F 2 "" H 1350 2850 50  0000 C CNN
F 3 "" H 1350 2850 50  0000 C CNN
	1    1350 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR06
U 1 1 58286AFB
P 2100 2850
F 0 "#PWR06" H 2100 2700 50  0001 C CNN
F 1 "VCC" H 2100 3000 50  0000 C CNN
F 2 "" H 2100 2850 50  0000 C CNN
F 3 "" H 2100 2850 50  0000 C CNN
	1    2100 2850
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T5
U 1 1 58286D7B
P 1650 4800
F 0 "T5" H 1550 5000 50  0000 L CNN
F 1 "KTIR0711S" H 1650 5000 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 1450 4600 50  0001 L CIN
F 3 "" H 1650 4800 50  0000 L CNN
	1    1650 4800
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 58286D81
P 1350 4400
F 0 "R51" V 1430 4400 50  0000 C CNN
F 1 "200" V 1350 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 4400 50  0001 C CNN
F 3 "" H 1350 4400 50  0000 C CNN
	1    1350 4400
	1    0    0    -1  
$EndComp
$Comp
L R R52
U 1 1 58286D8D
P 2100 4400
F 0 "R52" V 2180 4400 50  0000 C CNN
F 1 "10k" V 2100 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 4400 50  0001 C CNN
F 3 "" H 2100 4400 50  0000 C CNN
	1    2100 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 58286D93
P 1950 5100
F 0 "#PWR07" H 1950 4850 50  0001 C CNN
F 1 "GND" H 1950 4950 50  0000 C CNN
F 2 "" H 1950 5100 50  0000 C CNN
F 3 "" H 1950 5100 50  0000 C CNN
	1    1950 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 58286DAC
P 1350 4250
F 0 "#PWR08" H 1350 4100 50  0001 C CNN
F 1 "VCC" H 1350 4400 50  0000 C CNN
F 2 "" H 1350 4250 50  0000 C CNN
F 3 "" H 1350 4250 50  0000 C CNN
	1    1350 4250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR09
U 1 1 58286DB2
P 2100 4250
F 0 "#PWR09" H 2100 4100 50  0001 C CNN
F 1 "VCC" H 2100 4400 50  0000 C CNN
F 2 "" H 2100 4250 50  0000 C CNN
F 3 "" H 2100 4250 50  0000 C CNN
	1    2100 4250
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T7
U 1 1 58286DC0
P 1650 6200
F 0 "T7" H 1550 6400 50  0000 L CNN
F 1 "KTIR0711S" H 1650 6400 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 1450 6000 50  0001 L CIN
F 3 "" H 1650 6200 50  0000 L CNN
	1    1650 6200
	1    0    0    -1  
$EndComp
$Comp
L R R71
U 1 1 58286DC6
P 1350 5800
F 0 "R71" V 1430 5800 50  0000 C CNN
F 1 "200" V 1350 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1280 5800 50  0001 C CNN
F 3 "" H 1350 5800 50  0000 C CNN
	1    1350 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 58286DCC
P 1350 6500
F 0 "#PWR010" H 1350 6250 50  0001 C CNN
F 1 "GND" H 1350 6350 50  0000 C CNN
F 2 "" H 1350 6500 50  0000 C CNN
F 3 "" H 1350 6500 50  0000 C CNN
	1    1350 6500
	1    0    0    -1  
$EndComp
$Comp
L R R72
U 1 1 58286DD2
P 2100 5800
F 0 "R72" V 2180 5800 50  0000 C CNN
F 1 "10k" V 2100 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2030 5800 50  0001 C CNN
F 3 "" H 2100 5800 50  0000 C CNN
	1    2100 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58286DD8
P 1950 6500
F 0 "#PWR011" H 1950 6250 50  0001 C CNN
F 1 "GND" H 1950 6350 50  0000 C CNN
F 2 "" H 1950 6500 50  0000 C CNN
F 3 "" H 1950 6500 50  0000 C CNN
	1    1950 6500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 58286DF1
P 1350 5650
F 0 "#PWR012" H 1350 5500 50  0001 C CNN
F 1 "VCC" H 1350 5800 50  0000 C CNN
F 2 "" H 1350 5650 50  0000 C CNN
F 3 "" H 1350 5650 50  0000 C CNN
	1    1350 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 58286DF7
P 2100 5650
F 0 "#PWR013" H 2100 5500 50  0001 C CNN
F 1 "VCC" H 2100 5800 50  0000 C CNN
F 2 "" H 2100 5650 50  0000 C CNN
F 3 "" H 2100 5650 50  0000 C CNN
	1    2100 5650
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T2
U 1 1 58287216
P 4850 2000
F 0 "T2" H 4750 2200 50  0000 L CNN
F 1 "KTIR0711S" H 4850 2200 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 4650 1800 50  0001 L CIN
F 3 "" H 4850 2000 50  0000 L CNN
	1    4850 2000
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 5828721C
P 4550 1600
F 0 "R21" V 4630 1600 50  0000 C CNN
F 1 "200" V 4550 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 1600 50  0001 C CNN
F 3 "" H 4550 1600 50  0000 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58287222
P 4550 2300
F 0 "#PWR014" H 4550 2050 50  0001 C CNN
F 1 "GND" H 4550 2150 50  0000 C CNN
F 2 "" H 4550 2300 50  0000 C CNN
F 3 "" H 4550 2300 50  0000 C CNN
	1    4550 2300
	1    0    0    -1  
$EndComp
$Comp
L R R22
U 1 1 58287228
P 5300 1600
F 0 "R22" V 5380 1600 50  0000 C CNN
F 1 "10k" V 5300 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 1600 50  0001 C CNN
F 3 "" H 5300 1600 50  0000 C CNN
	1    5300 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5828722E
P 5150 2300
F 0 "#PWR015" H 5150 2050 50  0001 C CNN
F 1 "GND" H 5150 2150 50  0000 C CNN
F 2 "" H 5150 2300 50  0000 C CNN
F 3 "" H 5150 2300 50  0000 C CNN
	1    5150 2300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 58287247
P 4550 1450
F 0 "#PWR016" H 4550 1300 50  0001 C CNN
F 1 "VCC" H 4550 1600 50  0000 C CNN
F 2 "" H 4550 1450 50  0000 C CNN
F 3 "" H 4550 1450 50  0000 C CNN
	1    4550 1450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR017
U 1 1 5828724D
P 5300 1450
F 0 "#PWR017" H 5300 1300 50  0001 C CNN
F 1 "VCC" H 5300 1600 50  0000 C CNN
F 2 "" H 5300 1450 50  0000 C CNN
F 3 "" H 5300 1450 50  0000 C CNN
	1    5300 1450
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T4
U 1 1 5828725B
P 4850 3400
F 0 "T4" H 4750 3600 50  0000 L CNN
F 1 "KTIR0711S" H 4850 3600 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 4650 3200 50  0001 L CIN
F 3 "" H 4850 3400 50  0000 L CNN
	1    4850 3400
	1    0    0    -1  
$EndComp
$Comp
L R R41
U 1 1 58287261
P 4550 3000
F 0 "R41" V 4630 3000 50  0000 C CNN
F 1 "200" V 4550 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 3000 50  0001 C CNN
F 3 "" H 4550 3000 50  0000 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
$Comp
L R R42
U 1 1 5828726D
P 5300 3000
F 0 "R42" V 5380 3000 50  0000 C CNN
F 1 "10k" V 5300 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 3000 50  0001 C CNN
F 3 "" H 5300 3000 50  0000 C CNN
	1    5300 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 58287273
P 5150 3700
F 0 "#PWR018" H 5150 3450 50  0001 C CNN
F 1 "GND" H 5150 3550 50  0000 C CNN
F 2 "" H 5150 3700 50  0000 C CNN
F 3 "" H 5150 3700 50  0000 C CNN
	1    5150 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 5828728C
P 4550 2850
F 0 "#PWR019" H 4550 2700 50  0001 C CNN
F 1 "VCC" H 4550 3000 50  0000 C CNN
F 2 "" H 4550 2850 50  0000 C CNN
F 3 "" H 4550 2850 50  0000 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 58287292
P 5300 2850
F 0 "#PWR020" H 5300 2700 50  0001 C CNN
F 1 "VCC" H 5300 3000 50  0000 C CNN
F 2 "" H 5300 2850 50  0000 C CNN
F 3 "" H 5300 2850 50  0000 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T6
U 1 1 582872A0
P 4850 4800
F 0 "T6" H 4750 5000 50  0000 L CNN
F 1 "KTIR0711S" H 4850 5000 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 4650 4600 50  0001 L CIN
F 3 "" H 4850 4800 50  0000 L CNN
	1    4850 4800
	1    0    0    -1  
$EndComp
$Comp
L R R61
U 1 1 582872A6
P 4550 4400
F 0 "R61" V 4630 4400 50  0000 C CNN
F 1 "200" V 4550 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 4400 50  0001 C CNN
F 3 "" H 4550 4400 50  0000 C CNN
	1    4550 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 582872AC
P 4550 5100
F 0 "#PWR021" H 4550 4850 50  0001 C CNN
F 1 "GND" H 4550 4950 50  0000 C CNN
F 2 "" H 4550 5100 50  0000 C CNN
F 3 "" H 4550 5100 50  0000 C CNN
	1    4550 5100
	1    0    0    -1  
$EndComp
$Comp
L R R62
U 1 1 582872B2
P 5300 4400
F 0 "R62" V 5380 4400 50  0000 C CNN
F 1 "10k" V 5300 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 4400 50  0001 C CNN
F 3 "" H 5300 4400 50  0000 C CNN
	1    5300 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 582872B8
P 5150 5100
F 0 "#PWR022" H 5150 4850 50  0001 C CNN
F 1 "GND" H 5150 4950 50  0000 C CNN
F 2 "" H 5150 5100 50  0000 C CNN
F 3 "" H 5150 5100 50  0000 C CNN
	1    5150 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR023
U 1 1 582872D1
P 4550 4250
F 0 "#PWR023" H 4550 4100 50  0001 C CNN
F 1 "VCC" H 4550 4400 50  0000 C CNN
F 2 "" H 4550 4250 50  0000 C CNN
F 3 "" H 4550 4250 50  0000 C CNN
	1    4550 4250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR024
U 1 1 582872D7
P 5300 4250
F 0 "#PWR024" H 5300 4100 50  0001 C CNN
F 1 "VCC" H 5300 4400 50  0000 C CNN
F 2 "" H 5300 4250 50  0000 C CNN
F 3 "" H 5300 4250 50  0000 C CNN
	1    5300 4250
	1    0    0    -1  
$EndComp
$Comp
L KTIR0711S T8
U 1 1 582872E5
P 4850 6200
F 0 "T8" H 4750 6400 50  0000 L CNN
F 1 "KTIR0711S" H 4850 6400 50  0000 L CNN
F 2 "warsztaty:KTIR0711S" H 4650 6000 50  0001 L CIN
F 3 "" H 4850 6200 50  0000 L CNN
	1    4850 6200
	1    0    0    -1  
$EndComp
$Comp
L R R81
U 1 1 582872EB
P 4550 5800
F 0 "R81" V 4630 5800 50  0000 C CNN
F 1 "200" V 4550 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 5800 50  0001 C CNN
F 3 "" H 4550 5800 50  0000 C CNN
	1    4550 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 582872F1
P 4550 6500
F 0 "#PWR025" H 4550 6250 50  0001 C CNN
F 1 "GND" H 4550 6350 50  0000 C CNN
F 2 "" H 4550 6500 50  0000 C CNN
F 3 "" H 4550 6500 50  0000 C CNN
	1    4550 6500
	1    0    0    -1  
$EndComp
$Comp
L R R82
U 1 1 582872F7
P 5300 5800
F 0 "R82" V 5380 5800 50  0000 C CNN
F 1 "10k" V 5300 5800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5230 5800 50  0001 C CNN
F 3 "" H 5300 5800 50  0000 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 582872FD
P 5150 6500
F 0 "#PWR026" H 5150 6250 50  0001 C CNN
F 1 "GND" H 5150 6350 50  0000 C CNN
F 2 "" H 5150 6500 50  0000 C CNN
F 3 "" H 5150 6500 50  0000 C CNN
	1    5150 6500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR027
U 1 1 58287316
P 4550 5650
F 0 "#PWR027" H 4550 5500 50  0001 C CNN
F 1 "VCC" H 4550 5800 50  0000 C CNN
F 2 "" H 4550 5650 50  0000 C CNN
F 3 "" H 4550 5650 50  0000 C CNN
	1    4550 5650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR028
U 1 1 5828731C
P 5300 5600
F 0 "#PWR028" H 5300 5450 50  0001 C CNN
F 1 "VCC" H 5300 5750 50  0000 C CNN
F 2 "" H 5300 5600 50  0000 C CNN
F 3 "" H 5300 5600 50  0000 C CNN
	1    5300 5600
	1    0    0    -1  
$EndComp
Text Label 2450 1900 0    60   ~ 0
T1
Text Label 5550 1900 0    60   ~ 0
T2
Text Label 5450 3300 0    60   ~ 0
T4
Text Label 2400 4700 0    60   ~ 0
T5
Text Label 5550 4700 0    60   ~ 0
T6
Text Label 2350 6100 0    60   ~ 0
T7
$Comp
L VCC #PWR029
U 1 1 58246295
P 7800 2700
F 0 "#PWR029" H 7800 2550 50  0001 C CNN
F 1 "VCC" H 7800 2850 50  0000 C CNN
F 2 "" H 7800 2700 50  0000 C CNN
F 3 "" H 7800 2700 50  0000 C CNN
	1    7800 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 582462D9
P 7600 2700
F 0 "#PWR030" H 7600 2450 50  0001 C CNN
F 1 "GND" H 7600 2550 50  0000 C CNN
F 2 "" H 7600 2700 50  0000 C CNN
F 3 "" H 7600 2700 50  0000 C CNN
	1    7600 2700
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X10 WYJŚCIE_PLYTKA_TYLNIA1
U 1 1 5826068D
P 8400 3150
F 0 "WYJŚCIE_PLYTKA_TYLNIA1" H 8400 3700 50  0000 C CNN
F 1 "PIN10" V 8500 3150 50  0000 C CNN
F 2 "warsztatymisc:fpc_10_pin" H 8400 3150 50  0001 C CNN
F 3 "" H 8400 3150 50  0000 C CNN
	1    8400 3150
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG031
U 1 1 582A6EB6
P 2100 1400
F 0 "#FLG031" H 2100 1495 50  0001 C CNN
F 1 "PWR_FLAG" H 2100 1580 50  0000 C CNN
F 2 "" H 2100 1400 50  0000 C CNN
F 3 "" H 2100 1400 50  0000 C CNN
	1    2100 1400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR032
U 1 1 58336E9E
P 1350 2300
F 0 "#PWR032" H 1350 2050 50  0001 C CNN
F 1 "GND" H 1350 2150 50  0000 C CNN
F 2 "" H 1350 2300 50  0000 C CNN
F 3 "" H 1350 2300 50  0000 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 58337631
P 1350 3700
F 0 "#PWR033" H 1350 3450 50  0001 C CNN
F 1 "GND" H 1350 3550 50  0000 C CNN
F 2 "" H 1350 3700 50  0000 C CNN
F 3 "" H 1350 3700 50  0000 C CNN
	1    1350 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 58337A91
P 1350 5100
F 0 "#PWR034" H 1350 4850 50  0001 C CNN
F 1 "GND" H 1350 4950 50  0000 C CNN
F 2 "" H 1350 5100 50  0000 C CNN
F 3 "" H 1350 5100 50  0000 C CNN
	1    1350 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 58337E8D
P 4550 3700
F 0 "#PWR035" H 4550 3450 50  0001 C CNN
F 1 "GND" H 4550 3550 50  0000 C CNN
F 2 "" H 4550 3700 50  0000 C CNN
F 3 "" H 4550 3700 50  0000 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG036
U 1 1 582A6F30
P 4550 5050
F 0 "#FLG036" H 4550 5145 50  0001 C CNN
F 1 "PWR_FLAG" H 4550 5230 50  0000 C CNN
F 2 "" H 4550 5050 50  0000 C CNN
F 3 "" H 4550 5050 50  0000 C CNN
	1    4550 5050
	0    -1   -1   0   
$EndComp
Connection ~ 2100 1900
Wire Wire Line
	1950 2100 1950 2300
Wire Wire Line
	2100 1750 2100 1900
Wire Wire Line
	1350 2100 1350 2300
Wire Wire Line
	1350 1750 1350 1900
Connection ~ 2100 3300
Wire Wire Line
	1950 3500 1950 3700
Wire Wire Line
	2100 3150 2100 3300
Wire Wire Line
	1350 3500 1350 3700
Wire Wire Line
	1350 3150 1350 3300
Connection ~ 2100 4700
Wire Wire Line
	1950 4900 1950 5100
Wire Wire Line
	2100 4550 2100 4700
Wire Wire Line
	1350 4900 1350 5100
Wire Wire Line
	1350 4550 1350 4700
Connection ~ 2100 6100
Wire Wire Line
	1950 6300 1950 6500
Wire Wire Line
	2100 5950 2100 6100
Wire Wire Line
	1350 6300 1350 6500
Wire Wire Line
	1350 5950 1350 6100
Connection ~ 5300 1900
Wire Wire Line
	5150 2100 5150 2300
Wire Wire Line
	5300 1750 5300 1900
Wire Wire Line
	4550 2100 4550 2300
Wire Wire Line
	4550 1750 4550 1900
Connection ~ 5300 3300
Wire Wire Line
	5150 3500 5150 3700
Wire Wire Line
	5300 3150 5300 3300
Wire Wire Line
	4550 3500 4550 3700
Wire Wire Line
	4550 3150 4550 3300
Connection ~ 5300 4700
Wire Wire Line
	5150 4900 5150 5100
Wire Wire Line
	5300 4550 5300 4700
Wire Wire Line
	4550 4900 4550 5100
Wire Wire Line
	4550 4550 4550 4700
Connection ~ 5300 6100
Wire Wire Line
	5150 6300 5150 6500
Wire Wire Line
	5300 6100 5300 5950
Wire Wire Line
	4550 6300 4550 6500
Wire Wire Line
	4550 5950 4550 6100
Wire Wire Line
	8200 2900 7650 2900
Wire Wire Line
	8200 3000 7650 3000
Wire Wire Line
	8200 3100 7650 3100
Wire Wire Line
	8200 3200 7650 3200
Wire Wire Line
	8200 3300 7650 3300
Wire Wire Line
	8200 3400 7650 3400
Wire Wire Line
	8200 3500 7650 3500
Wire Wire Line
	8200 3600 7650 3600
Wire Wire Line
	7600 2800 8200 2800
Wire Wire Line
	7600 2800 7600 2700
Wire Wire Line
	7800 2700 8200 2700
Wire Wire Line
	5300 5600 5300 5650
Wire Wire Line
	2100 1400 2100 1450
Wire Wire Line
	4550 5050 4500 5050
Connection ~ 4550 5050
Wire Wire Line
	1950 1900 2450 1900
Text Label 2600 3300 0    60   ~ 0
T3
Wire Wire Line
	1950 3300 2600 3300
Wire Wire Line
	1950 4700 2400 4700
Wire Wire Line
	2350 6100 2350 6150
Wire Wire Line
	1950 6100 2350 6100
Text Label 5550 6100 0    60   ~ 0
T8
Wire Wire Line
	5150 6100 5550 6100
Wire Wire Line
	5150 4700 5550 4700
Wire Wire Line
	5150 3300 5450 3300
Wire Wire Line
	5150 1900 5550 1900
$EndSCHEMATC
