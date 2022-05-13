v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 -160 320 -160 {
lab=#net1}
N 460 -160 500 -160 {
lab=#net2}
N 220 -110 220 -80 {
lab=GND}
N 140 -20 820 -20 {
lab=GND}
N 220 -240 220 -210 {
lab=#net3}
N 400 -240 400 -210 {
lab=#net3}
N 580 -240 580 -210 {
lab=#net3}
N 760 -240 760 -210 {
lab=#net3}
N 160 -240 840 -240 {
lab=#net3}
N 820 -20 840 -20 {
lab=GND}
N 140 -240 160 -240 {
lab=#net3}
N 100 -160 140 -160 {
lab=#net4}
N 820 -160 860 -160 {
lab=out}
N 80 -140 100 -160 {
lab=#net4}
N 640 -160 680 -160 {
lab=#net5}
N 200 -50 200 -20 {
lab=GND}
N 220 -80 220 -20 {
lab=GND}
N 400 -110 400 -80 {
lab=GND}
N 380 -50 380 -20 {
lab=GND}
N 400 -80 400 -20 {
lab=GND}
N 580 -110 580 -80 {
lab=GND}
N 560 -50 560 -20 {
lab=GND}
N 580 -80 580 -20 {
lab=GND}
N 760 -110 760 -80 {
lab=GND}
N 740 -50 740 -20 {
lab=GND}
N 760 -80 760 -20 {
lab=GND}
N 270 -600 270 -550 {
lab=#net6}
N 270 -600 410 -600 {
lab=#net6}
N 410 -600 550 -600 {
lab=#net6}
N 410 -640 410 -600 {
lab=#net6}
N 550 -600 550 -550 {
lab=#net6}
N 410 -740 410 -700 {
lab=#net7}
N 410 -840 410 -800 {
lab=#net8}
N 410 -670 510 -670 {
lab=#net8}
N 410 -770 510 -770 {
lab=#net8}
N 510 -840 510 -670 {
lab=#net8}
N 330 -770 370 -770 {
lab=#net9}
N 330 -770 330 -670 {
lab=#net9}
N 330 -670 370 -670 {
lab=#net9}
N 270 -720 330 -720 {
lab=#net9}
N 270 -740 270 -700 {
lab=#net9}
N 270 -840 270 -800 {
lab=#net8}
N 170 -520 230 -520 {
lab=#net10}
N 270 -490 270 -340 {
lab=GND}
N 270 -520 370 -520 {
lab=GND}
N 370 -520 370 -340 {
lab=GND}
N 510 -670 510 -520 {
lab=#net8}
N 510 -520 550 -520 {
lab=#net8}
N 550 -490 550 -420 {
lab=out1}
N 550 -460 790 -460 {
lab=out1}
N 550 -420 550 -400 {
lab=out1}
N 550 -400 570 -400 {
lab=out1}
N 600 -420 660 -420 {
lab=GND}
N 660 -420 770 -420 {
lab=GND}
N 770 -420 770 -340 {
lab=GND}
N 750 -500 750 -460 {
lab=out1}
N 750 -600 750 -560 {
lab=GND}
N 750 -600 870 -600 {
lab=GND}
N 870 -600 870 -340 {
lab=GND}
N 290 -770 290 -670 {
lab=GND}
N 270 -640 330 -640 {
lab=GND}
N 330 -640 330 -340 {
lab=GND}
N 290 -670 290 -640 {
lab=GND}
N 590 -520 630 -520 {
lab=#net11}
N 630 -640 630 -520 {
lab=#net11}
N 630 -840 630 -760 {
lab=#net8}
N 630 -700 630 -640 {
lab=#net11}
N 630 -640 690 -640 {
lab=#net11}
N 750 -640 910 -640 {
lab=GND}
N 910 -630 910 -340 {
lab=GND}
N 650 -730 720 -730 {
lab=GND}
N 720 -730 720 -660 {
lab=GND}
N 170 -340 970 -340 {
lab=GND}
N 170 -840 970 -840 {
lab=#net8}
N 910 -640 910 -630 {
lab=GND}
N 770 -660 770 -640 {
lab=GND}
N 720 -660 770 -660 {
lab=GND}
N 630 -400 670 -400 {
lab=#net12}
N 670 -400 670 -380 {
lab=#net12}
N 670 -380 690 -380 {
lab=#net12}
N 750 -380 750 -340 {
lab=GND}
N 720 -360 720 -340 {
lab=GND}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} -20 -30 0 0 {name=XAMP1}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 160 -30 0 0 {name=XAMP2}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 340 -30 0 0 {name=XAMP3}
C {code.sym} -140 -250 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
	** dc V1 0.769 3.769 0.01
	** dc V2 0 3 0.01
        ** SIN(0.9 0.00001 70000000)
	tran 0.0000000001 0.0000001
.endc
.save all
"}
C {code.sym} -280 -130 0 0 {name=sT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="** manual skywater pdks install (with patches applied)
* .lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

** opencircuitdesign pdks install
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=0
"
spice_ignore=false}
C {opin.sym} 860 -160 0 0 {name=out lab=out}
C {vsource.sym} 80 -110 0 1 {name=V1 value="SIN(0.8 0.00005 70000000)"}
C {vsource.sym} 110 -240 1 0 {name=V2 value=1.8}
C {gnd.sym} 80 -240 1 0 {name=l1 lab=GND}
C {gnd.sym} 80 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 140 -20 0 0 {name=l3 lab=GND}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 520 -30 0 0 {name=XAMP4}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 -520 0 0 {name=M2
L=0.15
W=22
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 570 -520 0 1 {name=M4
L=0.15
W=22
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 390 -670 0 0 {name=M7
L=0.15
W=22
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 390 -770 0 0 {name=M8
L=0.15
W=22
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 270 -770 0 1 {name=R8
W=0.69
L=1.42
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 600 -400 1 0 {name=R9
W=0.35
L=1.9
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 750 -530 2 0 {name=C2 model=cap_mim_m3_1 W=12.5 L=12.5 MF=1 spiceprefix=X}
C {opin.sym} 790 -460 0 0 {name=out1 lab=out1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 270 -670 0 1 {name=R5
W=0.35
L=0.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 720 -380 3 0 {name=R6
W=0.69
L=0.75
model=res_xhigh_po
spiceprefix=X
mult=1}
C {vsource.sym} 140 -840 1 0 {name=V3 value=1.8}
C {gnd.sym} 110 -840 1 0 {name=l4 lab=GND}
C {gnd.sym} 170 -340 0 0 {name=l5 lab=GND}
C {vsource.sym} 180 -490 0 1 {name=V4 value="SIN(0.8 0.00005 70000000)"}
C {gnd.sym} 180 -460 0 0 {name=l6 lab=GND}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 720 -640 3 1 {name=R7
W=0.35
L=0.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 630 -730 0 1 {name=R10
W=0.35
L=1.95
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 200 -80 2 0 {name=R1
W=0.69
L=0.75
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 380 -80 2 0 {name=R2
W=0.69
L=0.75
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 560 -80 2 0 {name=R3
W=0.69
L=0.75
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 740 -80 2 0 {name=R4
W=0.69
L=0.75
model=res_xhigh_po
spiceprefix=X
mult=1}
