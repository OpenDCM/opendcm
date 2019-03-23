EESchema Schematic File Version 4
EELAYER 29 0
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
L cal_zero_uni:VIA U1
U 1 1 5AE36678
P 4230 3385
F 0 "U1" H 4308 3225 50  0000 L CNN
F 1 "VIA" H 4308 3134 50  0000 L CNN
F 2 "cal_zero_uni:VIA_oval" H 4230 3385 50  0001 C CNN
F 3 "" H 4230 3385 50  0001 C CNN
	1    4230 3385
	1    0    0    -1  
$EndComp
$Comp
L cal_zero_uni:VIA U2
U 1 1 5AE366F5
P 4695 3385
F 0 "U2" H 4773 3225 50  0000 L CNN
F 1 "VIA" H 4773 3134 50  0000 L CNN
F 2 "cal_zero_uni:VIA" H 4695 3385 50  0001 C CNN
F 3 "" H 4695 3385 50  0001 C CNN
	1    4695 3385
	1    0    0    -1  
$EndComp
$Comp
L cal_zero_uni:VIA U3
U 1 1 5AE367CF
P 5105 3385
F 0 "U3" H 5183 3225 50  0000 L CNN
F 1 "VIA" H 5183 3134 50  0000 L CNN
F 2 "cal_zero_uni:VIA_oval" H 5105 3385 50  0001 C CNN
F 3 "" H 5105 3385 50  0001 C CNN
	1    5105 3385
	1    0    0    -1  
$EndComp
$Comp
L cal_zero_uni:VIA U4
U 1 1 5AE3685D
P 5500 3385
F 0 "U4" H 5578 3225 50  0000 L CNN
F 1 "VIA" H 5578 3134 50  0000 L CNN
F 2 "cal_zero_uni:VIA" H 5500 3385 50  0001 C CNN
F 3 "" H 5500 3385 50  0001 C CNN
	1    5500 3385
	1    0    0    -1  
$EndComp
Wire Wire Line
	4230 3735 4695 3735
Wire Wire Line
	4695 3735 4895 3735
Connection ~ 4695 3735
Wire Wire Line
	5105 3735 5500 3735
Connection ~ 5105 3735
$Comp
L power:GND #PWR0101
U 1 1 5B0F1A2B
P 4895 3820
F 0 "#PWR0101" H 4895 3570 50  0001 C CNN
F 1 "GND" H 4900 3647 50  0000 C CNN
F 2 "" H 4895 3820 50  0001 C CNN
F 3 "" H 4895 3820 50  0001 C CNN
	1    4895 3820
	1    0    0    -1  
$EndComp
Wire Wire Line
	4895 3820 4895 3735
Connection ~ 4895 3735
Wire Wire Line
	4895 3735 5105 3735
$EndSCHEMATC
