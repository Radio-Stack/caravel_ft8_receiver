# FT8 Receiver Documentation
#### By Ryan Wans for Orbit Group 2022
--- 
## Table of Contents
1. Introduction
\1.1. Introduction to FT8
\1.2. Architecture Overview
\1.3. Toolchain / Technology
2. PDK Characterization
3. Architecture Refinement
4. Circuit Design and Simulation
5. Layout and Verification
6. Tapeout
7. Sources

## 1. Introduction
### 1.1 &nbsp;&nbsp; Introduction to FT8
FT8 is digital communication protocol used in amateur radio bands, most prominently from 7 to 70 MHz. It's use is rising in popularity due to its reliability in weak-signal conditions, low bandwidth, and simplicity. A minimum amount of hardware is needed to get an FT8 transceiver working, and this makes it appealing to application such as military and maritime usage. 

### 1.2 &nbsp;&nbsp; Architecture Overview
FT8 relies on a primarily digitally-driven architecture due to it's modulation scheme; 8-GFSK. However, due to its robust technical specification, a strong analog front-end is needed for successful operation. 

[image of frontend]
[caption]

blahblah finish this

### 1.3 &nbsp;&nbsp; Toolchain / Technology
blah

## 2. PDK Characterization
Proper characterization of the PDK devices is paramount for accurate circuit design in future steps. Once values such as $g_{m}$ and $V_{TH}$ are obtained, processes like gm/Id design can be utilized to derive circuit topologies and values. 

### Characterization of `nfet_01v8`

#### 1. Sweep of $V_{GS}$
[image of circuit]
Start by placing a `sky130_fd_pr__nfet_01v8` device with the default parameter values into a new schematic in Xschem. Attach a voltage source V1 to the gate and another V2 to the drain. Ensure that the bulk and source are grounded. Also ensure that V2 or $V_{DS}$ is held at $V_{DD}/2$ or 0.9V. Create a new code block and run a dc sweep of V1.
```spice 
.control
	dc V1 0 3 0.01
.endc
.saveall
```
Once the simulation has finished, run `plot -i(v2)` to view the drain current vs. $V_{GS}$ graph. This graph helps to give us the transconductance $g_m$ of the MOSFET, which indicates how efficiently the device can convert a voltage to a current. To derive this value from the simulation, you can either run the command `print @m.xm1.msky130_fd_pr__nfet_01v8[gm]` or use the typical analytical expression:
$$g_{m} \ = \ \frac{\partial{I_D}}{\partial{}V_{GS}} \ = \ \mu_{n}C_{OX}\frac{W}{L}(V_{GS}-V_{TH}) \ = \ \frac{2I_D}{V_{GS}-V_{TH}}$$

To find the threshold voltage $V_{TH}$ of the device, you can simply run the same command as above for the parameter: `print @m.xm1.msky130_fd_pr__nfet_01v8[vth]`

#### 2. Sweep of $V_{DS}$
[image of circuit]
Using the same circuit as before, sweep V2 instead of V1 at varying V1 values. This aids in finding the saturation point for a given $V_{GS}$ and the behavior of $I_D$ beyond $V_{DSAT}$. The code for this may look like this:
```spice
.control
	alter @V1[value] = 0.7 % start at Vth
	dc V2 0 5 0.01
	plot -i(v2)
	alter @V1[value] = 1   % step to new Vgs value
	...                    % continue changing Vgs
	alter @V1[value] = 3
	dc V2 0 5 0.01
	plot -i(v2)
.endc
.saveall
```
For a given DC sweep, one can obtain the $V_{DSAT}$ value by running `print @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]`. Or, use the expression $V_{DSAT}=V_{GS}-V_{TH}$. Now that the key values of the device have been extracted, one can now determine some other Figures of Merit, such as on resistance:
$$R_{on} \ = \ [\mu_{n}C_{OX}\frac{W}{L}(V_{GS}-V_{TH})]^{-1}$$
And to determine the behavior of drain current past saturation:
$$\int_0^LI_D\mathrm dx \ = \ \mu_{n}C_{OX}\int_0^{V_{GS}-V_{TH}}[V_{GS}-V_{TH}-V(x)]\mathrm dV$$

$$
\therefore \ I_D \ = \ \frac{1}{2}\mu_nC_{OX}\frac{W}{L}(V_{GS}-V_{TH})^2(1+\lambda V_{DS}) \ \ \ \ \forall \ V_{DS}>V_{DSAT}
$$
