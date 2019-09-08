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
L hamon:R R1
U 1 1 5D72C352
P 3100 2670
F 0 "R1" H 3170 2716 50  0000 L CNN
F 1 "R" H 3170 2625 50  0000 L CNN
F 2 "hamon:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3030 2670 50  0001 C CNN
F 3 "~" H 3100 2670 50  0001 C CNN
	1    3100 2670
	1    0    0    -1  
$EndComp
$Comp
L hamon:R R2
U 1 1 5D72CA1B
P 3100 3150
F 0 "R2" H 3170 3196 50  0000 L CNN
F 1 "R" H 3170 3105 50  0000 L CNN
F 2 "hamon:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3030 3150 50  0001 C CNN
F 3 "~" H 3100 3150 50  0001 C CNN
	1    3100 3150
	1    0    0    -1  
$EndComp
$Comp
L hamon:R R3
U 1 1 5D72CBBC
P 3100 3675
F 0 "R3" H 3170 3721 50  0000 L CNN
F 1 "R" H 3170 3630 50  0000 L CNN
F 2 "hamon:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3030 3675 50  0001 C CNN
F 3 "~" H 3100 3675 50  0001 C CNN
	1    3100 3675
	1    0    0    -1  
$EndComp
$Comp
L hamon:R R4
U 1 1 5D72D04E
P 3100 4400
F 0 "R4" H 3170 4446 50  0000 L CNN
F 1 "R" H 3170 4355 50  0000 L CNN
F 2 "hamon:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3030 4400 50  0001 C CNN
F 3 "~" H 3100 4400 50  0001 C CNN
	1    3100 4400
	1    0    0    -1  
$EndComp
$Comp
L hamon:MountingHole_Pad H1
U 1 1 5D72D6BB
P 3100 2275
F 0 "H1" H 3200 2324 50  0000 L CNN
F 1 "Input" H 3200 2233 50  0000 L CNN
F 2 "hamon:Binding_Post_4mm" H 3100 2275 50  0001 C CNN
F 3 "~" H 3100 2275 50  0001 C CNN
	1    3100 2275
	1    0    0    -1  
$EndComp
$Comp
L hamon:MountingHole_Pad H2
U 1 1 5D72DE9E
P 3100 4975
F 0 "H2" H 3000 4932 50  0000 R CNN
F 1 "GND" H 3130 5235 50  0000 R CNN
F 2 "hamon:Binding_Post_4mm" H 3100 4975 50  0001 C CNN
F 3 "~" H 3100 4975 50  0001 C CNN
	1    3100 4975
	-1   0    0    1   
$EndComp
$Comp
L hamon:MountingHole_Pad H3
U 1 1 5D72E838
P 4005 3865
F 0 "H3" V 3959 4015 50  0000 L CNN
F 1 "Output" V 4050 4015 50  0000 L CNN
F 2 "hamon:Binding_Post_4mm" H 4005 3865 50  0001 C CNN
F 3 "~" H 4005 3865 50  0001 C CNN
	1    4005 3865
	0    1    1    0   
$EndComp
$Comp
L hamon:R R5
U 1 1 5D73057B
P 3475 4185
F 0 "R5" H 3545 4231 50  0000 L CNN
F 1 "R" H 3545 4140 50  0000 L CNN
F 2 "hamon:Vishay_L7.62mm_D2.67mm_P3.81mm_Horizontal" V 3405 4185 50  0001 C CNN
F 3 "~" H 3475 4185 50  0001 C CNN
	1    3475 4185
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3825 3100 3865
Wire Wire Line
	3475 4035 3475 3930
Wire Wire Line
	3475 3930 3100 3930
Connection ~ 3100 3930
Wire Wire Line
	3100 3930 3100 4250
Connection ~ 3100 3865
Wire Wire Line
	3100 3865 3100 3930
Wire Wire Line
	3100 4550 3100 4800
$Comp
L hamon:R_POT RV1
U 1 1 5D73835C
P 3475 4620
F 0 "RV1" H 3406 4666 50  0000 R CNN
F 1 "R_POT" H 3406 4575 50  0000 R CNN
F 2 "hamon:Accutrim_1280G_1285G" H 3475 4620 50  0001 C CNN
F 3 "~" H 3475 4620 50  0001 C CNN
	1    3475 4620
	1    0    0    -1  
$EndComp
Wire Wire Line
	3475 4335 3475 4470
Wire Wire Line
	3475 4770 3475 4800
Wire Wire Line
	3475 4800 3100 4800
Connection ~ 3100 4800
Wire Wire Line
	3100 4800 3100 4855
Wire Wire Line
	3625 4620 3655 4620
Wire Wire Line
	3655 4620 3655 4800
Wire Wire Line
	3655 4800 3475 4800
Connection ~ 3475 4800
$Comp
L hamon:MountingHole_Pad H4
U 1 1 5D73AE7F
P 4005 4985
F 0 "H4" H 3905 4942 50  0000 R CNN
F 1 "GND" H 4110 5220 50  0000 R CNN
F 2 "hamon:Binding_Post_4mm" H 4005 4985 50  0001 C CNN
F 3 "~" H 4005 4985 50  0001 C CNN
	1    4005 4985
	-1   0    0    1   
$EndComp
Connection ~ 3100 2455
Wire Wire Line
	3100 2455 3100 2520
Wire Wire Line
	3100 2375 3100 2455
Wire Wire Line
	4005 4885 4005 4855
Wire Wire Line
	4005 4855 3100 4855
Connection ~ 3100 4855
Wire Wire Line
	3100 4855 3100 4875
$Comp
L hamon:SW_DPST SW1
U 1 1 5D7564E4
P 3750 3060
F 0 "SW1" V 3704 3248 50  0000 L CNN
F 1 "SW_DPST" V 3795 3248 50  0000 L CNN
F 2 "hamon:M2021SS1W01" H 3750 3060 50  0001 C CNN
F 3 "~" H 3750 3060 50  0001 C CNN
	1    3750 3060
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3865 3850 3865
Wire Wire Line
	3100 3300 3100 3415
Wire Wire Line
	3100 2820 3100 2835
Wire Wire Line
	3650 2455 3650 2860
Wire Wire Line
	3100 2455 3650 2455
Wire Wire Line
	3100 3415 3650 3415
Wire Wire Line
	3650 3415 3650 3260
Connection ~ 3100 3415
Wire Wire Line
	3100 3415 3100 3525
Wire Wire Line
	3100 2835 3850 2835
Wire Wire Line
	3850 2835 3850 2860
Connection ~ 3100 2835
Wire Wire Line
	3100 2835 3100 3000
Connection ~ 3850 3865
Wire Wire Line
	3850 3865 3905 3865
Text GLabel 4085 4765 2    50   Input ~ 0
GND
Wire Wire Line
	4085 4765 4005 4765
Wire Wire Line
	4005 4765 4005 4855
Connection ~ 4005 4855
Text GLabel 2995 2455 0    50   Input ~ 0
IN
Wire Wire Line
	2995 2455 3100 2455
Wire Wire Line
	3100 2455 3105 2455
Text GLabel 3965 3635 2    50   Input ~ 0
OUT
Wire Wire Line
	3965 3635 3850 3635
Wire Wire Line
	3850 3260 3850 3635
Connection ~ 3850 3635
Wire Wire Line
	3850 3635 3850 3865
$EndSCHEMATC
