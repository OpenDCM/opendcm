Kicad project for Hamon 1:10 Resistive Divider.

Resistor values can be calculated with the Hamon_calc.ods file.

The first prototype will use :
- S102K 5K resistors for R1-3 
- RCK02 for R4 - 1K8 and R5 - 22K
- Accutrim 1280G 1K trimmer
- 2 SA404 banana plugs for direct connection to the 10V LTZ1000 Voltage Reference Standard
- 2 Pomona 3750 binding posts for cable connection to the DMM
- DPST switch M2021SS1W01 with low contact resistance

Files:<br>
hamon.kicad\_pcb - hamon divider PCB with 2 banana plugs (SA404) and 2 binding posts.<br>
hamon\_bp.kicad\_pcb - hamon divider PCB with 4 binding posts.<br>
Hamon\_calc.ods - spreadsheet for resistor calculation.<br>

Images of the prototype:
<img src="images/hamon_front.JPG" alt="Front image"/>
<img src="images/hamon_back.JPG" alt="Back image"/>
<img src="images/hamon-3d.JPG" alt=""/>


Preliminary test:

Input 10V LTZ1000 based voltage reference.
Output 1V
Ratio 1:10 -> 0.1

Setup with Advantest R6581T:
<img src="images/r6581t_setup.png" alt="Setup with R6581T"/>

Setup with HP 34401A:
<img src="images/hp34401_ratio.JPG" alt="Setup with HP 34401A"/>

Test with 50 samples (50 samples x 8 sec = 400 sec.) for noise:

STDEV = 0.000 000 012
<img src="images/50_samples_stdev.JPG" alt="stdev 50 samples"/>
Min-Max value = 0.000 000 061
<img src="images/50_samples_p2p.JPG" alt="p2p 50 samples"/>
Average value = 0.100 000 014
<img src="images/50_samples_average.JPG" alt="average 50 samples"/>

Test with 450 samples for stability:

450 samples - 1 hour. Temp 21.6 - 22.1 C, 39-42 % RH
<img src="images/450_samples.JPG" alt="450 samples"/>
STDEV = 0.000 000 015
<img src="images/450_samples_stdev.JPG" alt="stdev 450 samples"/>
Min-Max value = 0.000 000 086
<img src="images/450_samples_p2p.JPG" alt="p2p 50 samples"/>
Average value = 0.100 000 035
<img src="images/450_samples_average.JPG" alt="average 50 samples"/>

