EESchema Schematic File Version 1
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,microchip,analog_switches,motorola,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib
EELAYER 23  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title "LCScan interface"
Date "10 nov 2006"
Rev "0.1"
Comp "Pozsar Zsolt"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1600 2850 2100 2850
Wire Wire Line
	1600 2950 2000 2950
Wire Wire Line
	1600 3050 1900 3050
Wire Wire Line
	1600 3150 1800 3150
Wire Wire Line
	1600 2750 2250 2750
Wire Wire Line
	1600 2650 2100 2650
Wire Wire Line
	1600 2550 2000 2550
Wire Wire Line
	1600 2450 1900 2450
Wire Wire Line
	1600 2350 2000 2350
Text Notes 1650 2450 0    60   ~
GND
Wire Wire Line
	1600 5050 2400 5050
Wire Wire Line
	1600 4950 2400 4950
Wire Wire Line
	1600 4850 2400 4850
Wire Wire Line
	1600 4750 2400 4750
Wire Wire Line
	1600 4650 2400 4650
Wire Wire Line
	1600 4550 2400 4550
Wire Wire Line
	1600 4450 2400 4450
Wire Wire Line
	1600 4350 1900 4350
Wire Wire Line
	1600 4250 2000 4250
Text Notes 1650 4350 0    60   ~
GND
Text Notes 10550 5850 1    60   ~
+Ups
Text Notes 10350 5800 1    60   ~
GND
Text Notes 9450 5800 1    60   ~
PE
Text Notes 9550 5850 1    60   ~
-ACK
Text Notes 9650 5800 1    60   ~
SLCT
Text Notes 9750 5800 1    60   ~
BUSY
Wire Wire Line
	10550 6150 10550 5200
Wire Wire Line
	10350 6300 10350 5350
Wire Wire Line
	10050 5850 10050 5350
Wire Wire Line
	9950 5850 9950 4250
Wire Wire Line
	9850 5850 9850 4150
Wire Wire Line
	9750 5850 9750 2650
Wire Wire Line
	9650 5850 9650 4050
Wire Wire Line
	9550 5850 9550 3950
Wire Wire Line
	9450 5850 9450 3850
Wire Wire Line
	9350 5850 9350 4350
Wire Wire Line
	9250 5850 9250 4450
Wire Wire Line
	9150 5850 9150 4550
Wire Wire Line
	9050 5850 9050 4650
Wire Wire Line
	8950 5850 8950 4750
Wire Wire Line
	8850 5850 8850 4850
Wire Wire Line
	8750 5850 8750 4950
Wire Wire Line
	8650 5850 8650 5050
Text Notes 9850 5850 1    60   ~
-AUTOFD
Text Notes 9950 5800 1    60   ~
GND
Text Notes 10050 5800 1    60   ~
GND
Text Notes 9150 5800 1    60   ~
D7
Text Notes 8950 5800 1    60   ~
D6
Text Notes 8750 5800 1    60   ~
D5
Text Notes 9350 5800 1    60   ~
D4
Text Notes 9250 5800 1    60   ~
D3
Text Notes 9050 5800 1    60   ~
D2
Text Notes 8850 5800 1    60   ~
D1
Text Notes 8650 5800 1    60   ~
D0
Text Notes 1650 2650 0    60   ~
DI7
Text Notes 1650 2850 0    60   ~
DI6
Text Notes 1650 3050 0    60   ~
DI5
Text Notes 1650 2350 0    60   ~
DI4
Text Notes 1650 2550 0    60   ~
DI3
Text Notes 1650 2750 0    60   ~
DI2
Text Notes 1650 2950 0    60   ~
DI1
Text Notes 1650 3150 0    60   ~
DI0
Text Notes 1650 4550 0    60   ~
DO7
Text Notes 1650 4750 0    60   ~
DO6
Text Notes 1650 4950 0    60   ~
DO5
Text Notes 1650 4250 0    60   ~
DO4
Text Notes 1650 4450 0    60   ~
DO3
Text Notes 1650 4650 0    60   ~
DO2
Text Notes 1650 4850 0    60   ~
DO1
Text Notes 1650 5050 0    60   ~
DO0
Text Notes 4350 5300 0    60   ~
Gnd
Text Notes 4600 5300 0    60   ~
+5V
Connection ~ 4450 6400
Wire Wire Line
	4450 5650 4450 6400
Wire Wire Line
	4650 5650 4650 5900
$Comp
L CONN_1 J5
U 1 1 454AE350
P 4650 5500
F 0 "J5" H 4750 5500 40  0000 C C
F 1 "CONN_1" H 4600 5540 30  0001 C C
	1    4650 5500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_1 J6
U 1 1 454AE34B
P 4450 5500
F 0 "J6" H 4550 5500 40  0000 C C
F 1 "CONN_1" H 4400 5540 30  0001 C C
	1    4450 5500
	0    -1   -1   0   
$EndComp
Text Notes 3600 6600 0    60   ~
On
Text Notes 5500 5500 0    60   ~
Power
Text Notes 10400 6650 0    60   ~
Power
Connection ~ 10050 5350
Wire Wire Line
	10350 5350 8450 5350
Connection ~ 7850 5800
Wire Wire Line
	7850 5700 7850 5900
Wire Wire Line
	7850 5300 7850 5200
Wire Wire Line
	7850 5200 10550 5200
$Comp
L BNC J4
U 1 1 454AE264
P 10550 6300
F 0 "J4" H 10560 6420 60  0000 C C
F 1 "BNC" H 10660 6240 40  0001 C C
	1    10550 6300
	0    1    1    0   
$EndComp
Connection ~ 3950 4100
Wire Wire Line
	3950 4100 3950 5900
Wire Wire Line
	5700 1650 5700 4100
Wire Wire Line
	3850 5800 5150 5800
Wire Wire Line
	3450 5800 3400 5800
Wire Wire Line
	3400 5800 3400 5850
Connection ~ 3400 6400
Wire Wire Line
	3400 6350 3400 6400
Connection ~ 7550 5800
Wire Wire Line
	7550 5900 7550 5800
Wire Wire Line
	7850 5800 7450 5800
Connection ~ 6250 5800
Wire Wire Line
	6250 5800 6250 5900
Connection ~ 6550 5800
Wire Wire Line
	6550 5900 6550 5800
Wire Wire Line
	6150 5800 6650 5800
Connection ~ 6250 6400
Wire Wire Line
	6250 6300 6250 6400
Connection ~ 6550 6400
Wire Wire Line
	6550 6400 6550 6300
Connection ~ 7050 6400
Wire Wire Line
	7050 6100 7050 6400
Connection ~ 7550 6400
Wire Wire Line
	7550 6300 7550 6400
Wire Wire Line
	7850 6300 7850 6400
Wire Wire Line
	7850 6400 3100 6400
$Comp
L C C15
U 1 1 454AE145
P 7550 6100
F 0 "C15" H 7600 6200 50  0000 L C
F 1 "1n" H 7600 6000 50  0000 L C
	1    7550 6100
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 454AE142
P 6550 6100
F 0 "C14" H 6600 6200 50  0000 L C
F 1 "1n" H 6600 6000 50  0000 L C
	1    6550 6100
	1    0    0    -1  
$EndComp
$Comp
L 7805 U5
U 1 1 454AE13B
P 7050 5850
F 0 "U5" H 7200 5654 60  0000 C C
F 1 "7805" H 7050 6050 60  0000 C C
	1    7050 5850
	-1   0    0    -1  
$EndComp
$Comp
L DIODE D18
U 1 1 454AE131
P 7850 5500
F 0 "D18" H 7850 5600 40  0000 C C
F 1 "BY135" H 7850 5400 40  0000 C C
	1    7850 5500
	0    1    1    0   
$EndComp
$Comp
L CAPAPOL C16
U 1 1 454AE12A
P 7850 6100
F 0 "C16" H 7900 6200 50  0000 L C
F 1 "1000u" H 7900 6000 50  0000 L C
	1    7850 6100
	1    0    0    -1  
$EndComp
Connection ~ 8450 3950
Wire Wire Line
	8450 5350 8450 3750
Wire Wire Line
	8050 3700 8050 4250
Wire Wire Line
	8450 3950 1900 3950
Wire Wire Line
	6650 1650 6650 2800
Wire Wire Line
	6600 3950 6600 2700
Wire Wire Line
	3100 6400 3100 5400
Connection ~ 6600 3950
Wire Wire Line
	3100 4300 3100 4100
Wire Wire Line
	8450 1650 4150 1650
Wire Wire Line
	8450 1650 8450 2550
Connection ~ 5700 1650
Wire Wire Line
	3100 4100 5700 4100
Connection ~ 6650 1650
Connection ~ 5550 1650
Text Notes 9300 6650 0    60   ~
PC
Text Notes 1100 5400 0    60   ~
Out
Text Notes 1150 3500 0    60   ~
In
Connection ~ 6650 2500
Wire Wire Line
	6200 2500 6650 2500
Wire Wire Line
	6650 2800 6200 2800
Connection ~ 6600 3000
Wire Wire Line
	6200 3000 6600 3000
Wire Wire Line
	6600 2700 6200 2700
Connection ~ 3950 6400
Wire Wire Line
	3950 6300 3950 6400
Connection ~ 4300 6400
Wire Wire Line
	4300 6300 4300 6400
Connection ~ 4650 6400
Wire Wire Line
	4650 6300 4650 6400
Connection ~ 5000 6400
Wire Wire Line
	5000 6300 5000 6400
Connection ~ 3950 5800
Connection ~ 4300 5800
Wire Wire Line
	4300 5900 4300 5800
Connection ~ 4650 5800
Connection ~ 5000 5800
Wire Wire Line
	5000 5900 5000 5800
$Comp
L R R9
U 1 1 448AA796
P 3400 6100
F 0 "R9" V 3480 6100 50  0000 C C
F 1 "470" V 3321 6100 50  0000 C C
	1    3400 6100
	1    0    0    -1  
$EndComp
$Comp
L LED D17
U 1 1 448AA791
P 3650 5800
F 0 "D17" H 3650 5900 50  0000 C C
F 1 "LED" H 3650 5700 50  0000 C C
	1    3650 5800
	-1   0    0    1   
$EndComp
$Comp
L SPST SW1
U 1 1 448AA789
P 5650 5800
F 0 "SW1" H 5650 5957 70  0000 C C
F 1 "Power" H 5650 5643 70  0000 C C
	1    5650 5800
	-1   0    0    -1  
$EndComp
$Comp
L CAPAPOL C9
U 1 1 448AA6D2
P 6250 6100
F 0 "C9" H 6300 6200 50  0000 L C
F 1 "1u" H 6300 6000 50  0000 L C
	1    6250 6100
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 448AA68F
P 5000 6100
F 0 "C10" H 5050 6200 50  0000 L C
F 1 "33n" H 5050 6000 50  0000 L C
	1    5000 6100
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 448AA68C
P 4650 6100
F 0 "C11" H 4700 6200 50  0000 L C
F 1 "33n" H 4700 6000 50  0000 L C
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 448AA689
P 4300 6100
F 0 "C12" H 4200 6500 50  0000 L C
F 1 "33n" H 4250 5700 50  0000 L C
	1    4300 6100
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 448AA685
P 3950 6100
F 0 "C13" H 4000 6200 50  0000 L C
F 1 "33n" H 4000 6000 50  0000 L C
	1    3950 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5050 3800 5050
Wire Wire Line
	8750 4950 3800 4950
Wire Wire Line
	8850 4850 3800 4850
Wire Wire Line
	8950 4750 3800 4750
Wire Wire Line
	9050 4650 3800 4650
Wire Wire Line
	9150 4550 3800 4550
Wire Wire Line
	9250 4450 3800 4450
Wire Wire Line
	9350 4350 3800 4350
Wire Wire Line
	2000 4250 2000 4350
Wire Wire Line
	1900 3950 1900 5350
Wire Wire Line
	9650 4050 9950 4050
Wire Wire Line
	8050 4250 9950 4250
Wire Wire Line
	9850 4150 7950 4150
Wire Wire Line
	7950 4150 7950 3600
Wire Wire Line
	7950 3600 8050 3600
Wire Wire Line
	9950 4050 9950 3150
Wire Wire Line
	9950 3150 9550 3150
Wire Wire Line
	9550 3400 9550 3850
Wire Wire Line
	9550 3850 9450 3850
Wire Wire Line
	9550 2900 9850 2900
Wire Wire Line
	9850 2900 9850 3950
Wire Wire Line
	9850 3950 9550 3950
Wire Wire Line
	9750 2650 9550 2650
Connection ~ 5550 3950
Wire Wire Line
	8050 3450 7850 3450
Wire Wire Line
	7850 3450 7850 3550
Wire Wire Line
	7850 3550 6750 3550
Wire Wire Line
	6750 3550 6750 3200
Wire Wire Line
	6750 3200 6700 3200
Wire Wire Line
	8050 3350 7950 3350
Wire Wire Line
	7950 3350 7950 2900
Wire Wire Line
	7950 2900 6700 2900
Wire Wire Line
	8050 2950 7850 2950
Wire Wire Line
	7850 2950 7850 3350
Wire Wire Line
	7850 3350 7600 3350
Wire Wire Line
	7600 2450 7700 2450
Wire Wire Line
	7700 2450 7700 3200
Wire Wire Line
	7700 3200 8050 3200
Wire Wire Line
	8050 3100 7800 3100
Wire Wire Line
	7800 3100 7800 3050
Wire Wire Line
	7800 3050 7600 3050
Wire Wire Line
	8050 2700 7900 2700
Wire Wire Line
	7900 2700 7900 2300
Wire Wire Line
	7900 2300 6700 2300
Wire Wire Line
	8050 2850 7800 2850
Wire Wire Line
	7800 2850 7800 2750
Wire Wire Line
	7800 2750 7600 2750
Wire Wire Line
	8050 2600 6700 2600
Connection ~ 2950 3950
Connection ~ 1900 4350
$Comp
L DB15 J1
U 1 1 448A815C
P 9350 6300
F 0 "J1" H 9370 7150 70  0000 C C
F 1 "DB15" H 9300 5450 70  0000 C C
	1    9350 6300
	0    -1   1    0   
$EndComp
$Comp
L 74LS157 U4
U 1 1 448A814C
P 8800 3150
F 0 "U4" H 8850 3300 60  0000 C C
F 1 "74LS157" H 8850 3000 60  0000 C C
	1    8800 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2750 2750 2750
Wire Wire Line
	5800 3200 2750 3200
Wire Wire Line
	6700 3350 2750 3350
Wire Wire Line
	6700 3050 2750 3050
Wire Wire Line
	5800 2900 2750 2900
Wire Wire Line
	5800 2600 2750 2600
Wire Wire Line
	6700 2450 2750 2450
Wire Wire Line
	5800 2300 2750 2300
$Comp
L 74LS14 U1
U 4 1 448A80E1
P 7150 3350
F 0 "U1" H 7300 3450 40  0000 C C
F 1 "74LS14" H 7350 3250 40  0000 C C
	4    7150 3350
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U1
U 6 1 448A80DE
P 7150 3050
F 0 "U1" H 7300 3150 40  0000 C C
F 1 "74LS14" H 7350 2950 40  0000 C C
	6    7150 3050
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U2
U 3 1 448A80DA
P 7150 2750
F 0 "U2" H 7300 2850 40  0000 C C
F 1 "74LS14" H 7350 2650 40  0000 C C
	3    7150 2750
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U2
U 1 1 448A80D5
P 7150 2450
F 0 "U2" H 7300 2550 40  0000 C C
F 1 "74LS14" H 7350 2350 40  0000 C C
	1    7150 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U1
U 5 1 448A80D0
P 6250 3200
F 0 "U1" H 6400 3300 40  0000 C C
F 1 "74LS14" H 6450 3100 40  0000 C C
	5    6250 3200
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U1
U 1 1 448A80C8
P 6250 2900
F 0 "U1" H 5935 3000 40  0000 C C
F 1 "74LS14" H 5935 2800 40  0000 C C
	1    6250 2900
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U2
U 2 1 448A80C1
P 6250 2600
F 0 "U2" H 5935 2700 40  0000 C C
F 1 "74LS14" H 5935 2500 40  0000 C C
	2    6250 2600
	1    0    0    -1  
$EndComp
$Comp
L 74LS14 U2
U 6 1 448A80B4
P 6250 2300
F 0 "U2" H 6400 2400 40  0000 C C
F 1 "74LS14" H 6450 2200 40  0000 C C
	6    6250 2300
	1    0    0    -1  
$EndComp
Connection ~ 5350 1650
Wire Wire Line
	5350 1750 5350 1650
Connection ~ 5150 1650
Wire Wire Line
	5150 1650 5150 1750
Connection ~ 4950 1650
Wire Wire Line
	4950 1650 4950 1750
Connection ~ 4750 1650
Wire Wire Line
	4750 1650 4750 1750
Connection ~ 4550 1650
Wire Wire Line
	4550 1650 4550 1750
Connection ~ 4350 1650
Wire Wire Line
	4350 1650 4350 1750
Wire Wire Line
	5550 1650 5550 1750
Wire Wire Line
	4150 1650 4150 1750
Wire Wire Line
	4150 3850 4150 3950
Connection ~ 4150 3950
Connection ~ 4350 3950
Wire Wire Line
	4350 3950 4350 3850
Connection ~ 4550 3950
Wire Wire Line
	4550 3950 4550 3850
Connection ~ 4750 3950
Wire Wire Line
	4750 3950 4750 3850
Connection ~ 4950 3950
Wire Wire Line
	4950 3950 4950 3850
Connection ~ 5150 3950
Wire Wire Line
	5150 3950 5150 3850
Connection ~ 5350 3950
Wire Wire Line
	5350 3850 5350 3950
Connection ~ 3950 3950
Wire Wire Line
	5550 3950 5550 3850
Connection ~ 2950 3350
Connection ~ 5550 3350
Connection ~ 3200 3200
Connection ~ 5350 3200
Connection ~ 3450 3050
Connection ~ 5150 3050
Connection ~ 3700 2900
Connection ~ 4950 2900
Connection ~ 3700 2750
Connection ~ 4750 2750
Connection ~ 3450 2600
Connection ~ 4550 2600
Connection ~ 3200 2450
Connection ~ 4350 2450
Connection ~ 2950 2300
Connection ~ 4150 2300
Wire Wire Line
	5550 3450 5550 2150
Wire Wire Line
	5350 2150 5350 3450
Wire Wire Line
	5150 3450 5150 2150
Wire Wire Line
	4950 2150 4950 3450
Wire Wire Line
	4750 3450 4750 2150
Wire Wire Line
	4550 2150 4550 3450
Wire Wire Line
	4350 3450 4350 2150
Wire Wire Line
	4150 2150 4150 3450
$Comp
L DIODE D1
U 1 1 448A7EE0
P 5550 3650
F 0 "D1" H 5432 3750 40  0000 C C
F 1 "1N4148" H 5629 3750 40  0000 C C
	1    5550 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D6
U 1 1 448A7EDF
P 5350 3650
F 0 "D6" H 5232 3750 40  0000 C C
F 1 "1N4148" H 5429 3750 40  0000 C C
	1    5350 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 448A7EDE
P 5150 3650
F 0 "D2" H 5032 3750 40  0000 C C
F 1 "1N4148" H 5229 3750 40  0000 C C
	1    5150 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D7
U 1 1 448A7EDD
P 4950 3650
F 0 "D7" H 4832 3750 40  0000 C C
F 1 "1N4148" H 5029 3750 40  0000 C C
	1    4950 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D3
U 1 1 448A7EDC
P 4750 3650
F 0 "D3" H 4632 3750 40  0000 C C
F 1 "1N4148" H 4829 3750 40  0000 C C
	1    4750 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D8
U 1 1 448A7EDB
P 4550 3650
F 0 "D8" H 4432 3750 40  0000 C C
F 1 "1N4148" H 4629 3750 40  0000 C C
	1    4550 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D4
U 1 1 448A7EDA
P 4350 3650
F 0 "D4" H 4232 3750 40  0000 C C
F 1 "1N4148" H 4429 3750 40  0000 C C
	1    4350 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D5
U 1 1 448A7ED9
P 4150 3650
F 0 "D5" H 4032 3750 40  0000 C C
F 1 "1N4148" H 4229 3750 40  0000 C C
	1    4150 3650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D9
U 1 1 448A7EB2
P 5550 1950
F 0 "D9" H 5432 2050 40  0000 C C
F 1 "1N4148" H 5629 2050 40  0000 C C
	1    5550 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D14
U 1 1 448A7EB1
P 5350 1950
F 0 "D14" H 5232 2050 40  0000 C C
F 1 "1N4148" H 5468 2050 40  0000 C C
	1    5350 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D10
U 1 1 448A7EB0
P 5150 1950
F 0 "D10" H 5032 2050 40  0000 C C
F 1 "1N4148" H 5268 2050 40  0000 C C
	1    5150 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D15
U 1 1 448A7EAF
P 4950 1950
F 0 "D15" H 4832 2050 40  0000 C C
F 1 "1N4148" H 5068 2050 40  0000 C C
	1    4950 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D11
U 1 1 448A7E8C
P 4750 1950
F 0 "D11" H 4632 2050 40  0000 C C
F 1 "1N4148" H 4868 2050 40  0000 C C
	1    4750 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D16
U 1 1 448A7E88
P 4550 1950
F 0 "D16" H 4432 2050 40  0000 C C
F 1 "1N4148" H 4668 2050 40  0000 C C
	1    4550 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D12
U 1 1 448A7E83
P 4350 1950
F 0 "D12" H 4232 2050 40  0000 C C
F 1 "1N4148" H 4468 2050 40  0000 C C
	1    4350 1950
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D13
U 1 1 448A7DEF
P 4150 1950
F 0 "D13" H 4032 2050 40  0000 C C
F 1 "1N4148" H 4268 2050 40  0000 C C
	1    4150 1950
	0    -1   -1   0   
$EndComp
Connection ~ 3700 3950
Wire Wire Line
	3700 3850 3700 3950
Connection ~ 3450 3950
Wire Wire Line
	3450 3850 3450 3950
Connection ~ 3200 3950
Wire Wire Line
	3200 3850 3200 3950
Connection ~ 3700 1650
Wire Wire Line
	2950 3950 2950 3850
Wire Wire Line
	3950 3950 3950 1650
Wire Wire Line
	3950 1650 1900 1650
Connection ~ 2950 1650
Wire Wire Line
	1900 1650 1900 2450
Connection ~ 3450 1650
Wire Wire Line
	3450 1650 3450 1750
Connection ~ 3200 1650
Wire Wire Line
	3200 1650 3200 1750
Wire Wire Line
	2950 1650 2950 1750
Wire Wire Line
	3700 1650 3700 1750
Wire Wire Line
	3700 2900 3700 3450
Wire Wire Line
	3450 3050 3450 3450
Wire Wire Line
	3200 3200 3200 3450
Wire Wire Line
	2950 3350 2950 3450
Wire Wire Line
	3700 2750 3700 2150
Wire Wire Line
	3450 2600 3450 2150
Wire Wire Line
	3200 2450 3200 2150
Wire Wire Line
	2950 2300 2950 2150
$Comp
L C C3
U 1 1 448A7CFC
P 3700 1950
F 0 "C3" H 3750 2050 50  0000 L C
F 1 "100" H 3750 1850 50  0000 L C
	1    3700 1950
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 448A7CFB
P 3450 1950
F 0 "C8" H 3500 2050 50  0000 L C
F 1 "100" H 3500 1850 50  0000 L C
	1    3450 1950
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 448A7CFA
P 3200 1950
F 0 "C4" H 3250 2050 50  0000 L C
F 1 "100" H 3250 1850 50  0000 L C
	1    3200 1950
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 448A7CF9
P 2950 1950
F 0 "C5" H 3000 2050 50  0000 L C
F 1 "100" H 3000 1850 50  0000 L C
	1    2950 1950
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 448A7CD6
P 3700 3650
F 0 "C7" H 3750 3750 50  0000 L C
F 1 "100" H 3750 3550 50  0000 L C
	1    3700 3650
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 448A7CCD
P 3450 3650
F 0 "C2" H 3500 3750 50  0000 L C
F 1 "100" H 3500 3550 50  0000 L C
	1    3450 3650
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 448A7CC9
P 3200 3650
F 0 "C6" H 3250 3750 50  0000 L C
F 1 "100" H 3250 3550 50  0000 L C
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 448A7CB6
P 2950 3650
F 0 "C1" H 3000 3750 50  0000 L C
F 1 "100" H 3000 3550 50  0000 L C
	1    2950 3650
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 448A7C74
P 2500 3350
F 0 "R1" V 2580 3429 50  0000 C C
F 1 "470" V 2579 3232 50  0000 C C
	1    2500 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 448A7C72
P 2500 3200
F 0 "R6" V 2580 3279 50  0000 C C
F 1 "470" V 2579 3082 50  0000 C C
	1    2500 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 448A7C6E
P 2500 3050
F 0 "R2" V 2580 3129 50  0000 C C
F 1 "470" V 2579 2932 50  0000 C C
	1    2500 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 448A7C6C
P 2500 2900
F 0 "R7" V 2580 2979 50  0000 C C
F 1 "470" V 2579 2782 50  0000 C C
	1    2500 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 448A7C69
P 2500 2750
F 0 "R3" V 2580 2829 50  0000 C C
F 1 "470" V 2579 2632 50  0000 C C
	1    2500 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 448A7C67
P 2500 2600
F 0 "R8" V 2580 2679 50  0000 C C
F 1 "470" V 2579 2482 50  0000 C C
	1    2500 2600
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 448A7C32
P 2500 2450
F 0 "R4" V 2580 2529 50  0000 C C
F 1 "470" V 2579 2332 50  0000 C C
	1    2500 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 3150 1800 3350
Wire Wire Line
	1800 3350 2250 3350
Wire Wire Line
	2250 3200 1900 3200
Wire Wire Line
	1900 3200 1900 3050
Wire Wire Line
	2250 3050 2000 3050
Wire Wire Line
	2000 3050 2000 2950
Wire Wire Line
	2250 2900 2100 2900
Wire Wire Line
	2100 2900 2100 2850
Wire Wire Line
	2250 2600 2100 2600
Wire Wire Line
	2100 2600 2100 2650
Wire Wire Line
	2250 2450 2000 2450
Wire Wire Line
	2000 2450 2000 2550
Wire Wire Line
	2250 2300 2000 2300
Wire Wire Line
	2000 2300 2000 2350
Connection ~ 1900 5250
Wire Wire Line
	2400 5250 1900 5250
Wire Wire Line
	1900 5350 2400 5350
Wire Wire Line
	2000 4350 2400 4350
$Comp
L 74LS245 U3
U 1 1 448A7218
P 3100 4850
F 0 "U3" H 3200 5450 60  0000 L C
F 1 "74LS245" H 3200 4250 60  0000 L C
	1    3100 4850
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 448A71C8
P 2500 2300
F 0 "R5" V 2580 2379 50  0000 C C
F 1 "470" V 2579 2182 50  0000 C C
	1    2500 2300
	0    -1   -1   0   
$EndComp
$Comp
L DB9 J3
U 1 1 448A71A1
P 1150 4650
F 0 "J3" H 1150 5200 70  0000 C C
F 1 "DB9" H 1150 4100 70  0000 C C
	1    1150 4650
	-1   0    0    -1  
$EndComp
$Comp
L DB9 J2
U 1 1 448A7163
P 1150 2750
F 0 "J2" H 1150 3300 70  0000 C C
F 1 "DB9" H 1150 2200 70  0000 C C
	1    1150 2750
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
