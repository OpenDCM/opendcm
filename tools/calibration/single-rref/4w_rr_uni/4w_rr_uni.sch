EESchema Schematic File Version 4
LIBS:4w_rr_uni-cache
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
L power:GND #PWR01
U 1 1 5B0F1A2B
P 6745 3575
F 0 "#PWR01" H 6745 3325 50  0001 C CNN
F 1 "GND" H 6750 3402 50  0000 C CNN
F 2 "" H 6745 3575 50  0001 C CNN
F 3 "" H 6745 3575 50  0001 C CNN
	1    6745 3575
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:24LC512 U9
U 1 1 5CB19541
P 6745 3205
F 0 "U9" H 6745 3686 50  0000 C CNN
F 1 "24LC512" H 6745 3595 50  0000 C CNN
F 2 "4w_rr_uni:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6745 3205 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21754M.pdf" H 6745 3205 50  0001 C CNN
	1    6745 3205
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:DB9 J1
U 1 1 5CB30959
P 7940 3205
F 0 "J1" H 7992 3622 50  0000 C CNN
F 1 "DB9" H 7992 3531 50  0000 C CNN
F 2 "4w_rr_uni:DB9_horizontal" H 7940 3205 50  0001 C CNN
F 3 "~" H 7940 3205 50  0001 C CNN
	1    7940 3205
	1    0    0    -1  
$EndComp
Wire Wire Line
	6345 3105 6225 3105
Wire Wire Line
	6225 3105 6225 3205
Wire Wire Line
	6345 3205 6225 3205
Connection ~ 6225 3205
Wire Wire Line
	6225 3205 6225 3305
Wire Wire Line
	6345 3305 6225 3305
Connection ~ 6225 3305
Wire Wire Line
	6225 3305 6225 3540
Wire Wire Line
	6745 2860 6745 2905
Wire Wire Line
	7145 3305 7690 3305
$Comp
L 4w_rr_uni:R R2
U 1 1 5CB488B6
P 8635 3200
F 0 "R2" H 8705 3246 50  0000 L CNN
F 1 "R" H 8705 3155 50  0000 L CNN
F 2 "4w_rr_uni:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 8565 3200 50  0001 C CNN
F 3 "~" H 8635 3200 50  0001 C CNN
	1    8635 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8240 3350 8570 3350
Wire Wire Line
	8240 3050 8570 3050
Wire Wire Line
	8245 3150 8570 3150
Wire Wire Line
	8570 3150 8570 3050
Connection ~ 8570 3050
Wire Wire Line
	8240 3250 8570 3250
Wire Wire Line
	8570 3250 8570 3350
Connection ~ 8570 3350
Wire Wire Line
	6745 3505 6745 3540
Wire Wire Line
	6225 3540 6745 3540
Connection ~ 6745 3540
Wire Wire Line
	6745 3540 6745 3575
Wire Wire Line
	6745 3540 7240 3540
Wire Wire Line
	7575 3540 7575 3405
Wire Wire Line
	7575 3405 7740 3405
$Comp
L 4w_rr_uni:R R1
U 1 1 5CB1A248
P 3910 3145
F 0 "R1" H 3980 3191 50  0000 L CNN
F 1 "R" H 3980 3100 50  0000 L CNN
F 2 "4w_rr_uni:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3840 3145 50  0001 C CNN
F 3 "~" H 3910 3145 50  0001 C CNN
	1    3910 3145
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U1
U 1 1 5D703457
P 3365 2305
F 0 "U1" H 3310 2385 50  0000 L CNN
F 1 "SA404" V 3185 1885 50  0000 L CNN
F 2 "4w_rr_uni:VIA" H 3365 2305 50  0001 C CNN
F 3 "" H 3365 2305 50  0001 C CNN
	1    3365 2305
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U2
U 1 1 5D704731
P 3365 3995
F 0 "U2" H 3310 4075 50  0000 L CNN
F 1 "SA404" V 3545 3515 50  0000 L CNN
F 2 "4w_rr_uni:VIA" H 3365 3995 50  0001 C CNN
F 3 "" H 3365 3995 50  0001 C CNN
	1    3365 3995
	-1   0    0    1   
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U3
U 1 1 5D707289
P 3650 2310
F 0 "U3" H 3728 2194 50  0000 L CNN
F 1 "SA404" V 3720 1855 50  0000 L CNN
F 2 "4w_rr_uni:VIA_oval" H 3650 2310 50  0001 C CNN
F 3 "" H 3650 2310 50  0001 C CNN
	1    3650 2310
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U4
U 1 1 5D707870
P 3650 3995
F 0 "U4" H 3562 3786 50  0000 R CNN
F 1 "SA404" V 3780 3765 50  0000 R CNN
F 2 "4w_rr_uni:VIA_oval" H 3650 3995 50  0001 C CNN
F 3 "" H 3650 3995 50  0001 C CNN
	1    3650 3995
	-1   0    0    1   
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U6
U 1 1 5D70830C
P 4145 2320
F 0 "U6" H 4223 2204 50  0000 L CNN
F 1 "Banana" V 4370 1845 50  0000 L CNN
F 2 "4w_rr_uni:Binding_Post_4mm" H 4145 2320 50  0001 C CNN
F 3 "" H 4145 2320 50  0001 C CNN
	1    4145 2320
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U8
U 1 1 5D708684
P 4560 2315
F 0 "U8" H 4638 2199 50  0000 L CNN
F 1 "Banana" V 4740 1795 50  0000 L CNN
F 2 "4w_rr_uni:Binding_Post_4mm" H 4560 2315 50  0001 C CNN
F 3 "" H 4560 2315 50  0001 C CNN
	1    4560 2315
	1    0    0    -1  
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U5
U 1 1 5D7089A2
P 4140 4025
F 0 "U5" H 4052 3816 50  0000 R CNN
F 1 "Banana" V 4280 4065 50  0000 R CNN
F 2 "4w_rr_uni:Binding_Post_4mm" H 4140 4025 50  0001 C CNN
F 3 "" H 4140 4025 50  0001 C CNN
	1    4140 4025
	-1   0    0    1   
$EndComp
$Comp
L 4w_rr_uni:VIA_Binding_Posts U7
U 1 1 5D708E47
P 4550 3990
F 0 "U7" H 4462 3781 50  0000 R CNN
F 1 "Banana" V 4680 4050 50  0000 R CNN
F 2 "4w_rr_uni:Binding_Post_4mm" H 4550 3990 50  0001 C CNN
F 3 "" H 4550 3990 50  0001 C CNN
	1    4550 3990
	-1   0    0    1   
$EndComp
Wire Wire Line
	3910 2995 3910 2840
Wire Wire Line
	3910 2840 3650 2840
Wire Wire Line
	3365 2840 3365 2655
Wire Wire Line
	3650 2660 3650 2840
Connection ~ 3650 2840
Wire Wire Line
	3650 2840 3365 2840
Wire Wire Line
	3910 2840 4145 2840
Wire Wire Line
	4145 2840 4145 2670
Connection ~ 3910 2840
Wire Wire Line
	4145 2840 4560 2840
Wire Wire Line
	4560 2840 4560 2665
Connection ~ 4145 2840
Wire Wire Line
	3910 3295 3910 3415
Wire Wire Line
	3910 3415 3650 3415
Wire Wire Line
	3365 3415 3365 3645
Wire Wire Line
	3650 3645 3650 3415
Connection ~ 3650 3415
Wire Wire Line
	3650 3415 3365 3415
Wire Wire Line
	3910 3415 4140 3415
Wire Wire Line
	4140 3415 4140 3675
Connection ~ 3910 3415
Wire Wire Line
	4550 3640 4550 3415
Wire Wire Line
	4550 3415 4140 3415
Connection ~ 4140 3415
$Comp
L 4w_rr_uni:Conn_01x03 J2
U 1 1 5D721A0C
P 7480 3035
F 0 "J2" H 7435 3250 50  0000 L CNN
F 1 "Conn_01x03" H 7260 3315 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7480 3035 50  0001 C CNN
F 3 "~" H 7480 3035 50  0001 C CNN
	1    7480 3035
	1    0    0    -1  
$EndComp
Wire Wire Line
	6745 2860 7025 2860
Wire Wire Line
	7280 2935 7170 2935
Wire Wire Line
	7170 2935 7170 2860
Connection ~ 7170 2860
Wire Wire Line
	7170 2860 7570 2860
Wire Wire Line
	7280 3035 7205 3035
Wire Wire Line
	7205 3035 7205 3105
Wire Wire Line
	7205 3105 7145 3105
Wire Wire Line
	7280 3135 7240 3135
Wire Wire Line
	7240 3135 7240 3540
Connection ~ 7240 3540
Wire Wire Line
	7240 3540 7575 3540
Wire Wire Line
	7740 3105 7630 3105
Wire Wire Line
	7630 3105 7630 3205
Wire Wire Line
	7630 3205 7145 3205
$Comp
L 4w_rr_uni:R R3
U 1 1 5D721A2E
P 7680 2370
F 0 "R3" H 7750 2416 50  0000 L CNN
F 1 "R" H 7750 2325 50  0000 L CNN
F 2 "4w_rr_uni:R_0805_HandSoldering" V 7610 2370 50  0001 C CNN
F 3 "~" H 7680 2370 50  0001 C CNN
	1    7680 2370
	1    0    0    -1  
$EndComp
Wire Wire Line
	8570 3050 8635 3050
Wire Wire Line
	8570 3350 8635 3350
$Comp
L 4w_rr_uni:R R4
U 1 1 5D715C3C
P 7900 2370
F 0 "R4" H 7970 2416 50  0000 L CNN
F 1 "R" H 7970 2325 50  0000 L CNN
F 2 "4w_rr_uni:R_0805_HandSoldering" V 7830 2370 50  0001 C CNN
F 3 "~" H 7900 2370 50  0001 C CNN
	1    7900 2370
	1    0    0    -1  
$EndComp
Text GLabel 7025 2755 1    50   Input ~ 0
VCC
Wire Wire Line
	7025 2755 7025 2860
Connection ~ 7025 2860
Wire Wire Line
	7025 2860 7170 2860
Text GLabel 7790 2110 1    50   Input ~ 0
VCC
Wire Wire Line
	7680 2220 7680 2160
Wire Wire Line
	7680 2160 7790 2160
Wire Wire Line
	7790 2160 7790 2110
Wire Wire Line
	7790 2160 7900 2160
Wire Wire Line
	7900 2160 7900 2220
Connection ~ 7790 2160
Wire Wire Line
	7570 2860 7570 3005
Wire Wire Line
	7570 3005 7740 3005
Wire Wire Line
	7630 3105 7630 2630
Wire Wire Line
	7630 2630 7680 2630
Wire Wire Line
	7680 2630 7680 2520
Connection ~ 7630 3105
Wire Wire Line
	7900 2520 7900 2705
Wire Wire Line
	7900 2705 7690 2705
Wire Wire Line
	7690 2705 7690 3305
Connection ~ 7690 3305
Wire Wire Line
	7690 3305 7740 3305
$EndSCHEMATC
