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

<img src="images/hamon_front.JPG" alt="Front image"/>
<img src="images/hamon_back.JPG" alt="Back image"/>
<img src="images/hamon-3d.JPG" alt=""/>


Preliminary test:
Setup with Advantest R6581T:
<img src="images/r6581t_setup.png" alt="Setup with R6581T"/>

Setup with HP 34401A:
<img src="images/hp34401_ratio.JPG" alt="Setup with HP 34401A"/>
