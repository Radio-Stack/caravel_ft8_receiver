v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {1} 2250 -90 0 0 0.4 0.4 {}
T {1} 2330 -90 0 0 0.4 0.4 {}
T {Folded Cascode LNA} 2770 -190 0 0 1 1 {}
N 460 -540 460 -490 {
lab=#net1}
N 460 -540 600 -540 {
lab=#net1}
N 600 -540 740 -540 {
lab=#net1}
N 600 -580 600 -540 {
lab=#net1}
N 740 -540 740 -490 {
lab=#net1}
N 600 -680 600 -640 {
lab=#net2}
N 600 -780 600 -740 {
lab=vdd}
N 600 -610 700 -610 {
lab=vdd}
N 600 -710 700 -710 {
lab=vdd}
N 700 -780 700 -610 {
lab=vdd}
N 520 -710 560 -710 {
lab=#net3}
N 520 -710 520 -610 {
lab=#net3}
N 520 -610 560 -610 {
lab=#net3}
N 460 -660 520 -660 {
lab=#net3}
N 460 -680 460 -640 {
lab=#net3}
N 460 -780 460 -740 {
lab=vdd}
N 360 -460 420 -460 {
lab=in}
N 460 -430 460 -280 {
lab=gnd}
N 460 -460 560 -460 {
lab=gnd}
N 560 -460 560 -280 {
lab=gnd}
N 700 -610 700 -460 {
lab=vdd}
N 700 -460 740 -460 {
lab=vdd}
N 740 -430 740 -360 {
lab=out}
N 740 -400 980 -400 {
lab=out}
N 740 -360 740 -340 {
lab=out}
N 740 -340 760 -340 {
lab=out}
N 790 -360 850 -360 {
lab=gnd}
N 850 -360 960 -360 {
lab=gnd}
N 960 -360 960 -280 {
lab=gnd}
N 940 -440 940 -400 {
lab=out}
N 940 -540 940 -500 {
lab=gnd}
N 940 -540 1060 -540 {
lab=gnd}
N 1060 -540 1060 -280 {
lab=gnd}
N 480 -710 480 -610 {
lab=gnd}
N 460 -580 520 -580 {
lab=gnd}
N 520 -580 520 -280 {
lab=gnd}
N 480 -610 480 -580 {
lab=gnd}
N 780 -460 820 -460 {
lab=#net4}
N 820 -580 820 -460 {
lab=#net4}
N 820 -780 820 -700 {
lab=vdd}
N 820 -640 820 -580 {
lab=#net4}
N 820 -580 880 -580 {
lab=#net4}
N 940 -580 1100 -580 {
lab=gnd}
N 1100 -570 1100 -280 {
lab=gnd}
N 840 -670 910 -670 {
lab=gnd}
N 910 -670 910 -600 {
lab=gnd}
N 360 -280 1160 -280 {
lab=gnd}
N 360 -780 1160 -780 {
lab=vdd}
N 1100 -580 1100 -570 {
lab=gnd}
N 960 -600 960 -580 {
lab=gnd}
N 910 -600 960 -600 {
lab=gnd}
N 820 -340 860 -340 {
lab=bias}
N 860 -340 860 -320 {
lab=bias}
N 860 -320 880 -320 {
lab=bias}
C {code.sym} 140 -690 0 0 {name=sT_MODELS
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
C {title-2.sym} 20 -40 0 0 {name=l1 author="Ryan Wans" rev=1.0}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 440 -460 0 0 {name=M2
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
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 760 -460 0 1 {name=M4
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
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 -610 0 0 {name=M7
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
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 580 -710 0 0 {name=M8
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
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 460 -610 0 1 {name=R7
W=0.69
L=0.35
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 460 -710 0 1 {name=R8
W=0.69
L=1.42
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 790 -340 1 0 {name=R9
W=0.35
L=1.0
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 940 -470 2 0 {name=C2 model=cap_mim_m3_1 W=12.2 L=12.2 MF=1 spiceprefix=X}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 820 -670 0 1 {name=R11
W=0.69
L=0.8
model=res_xhigh_po
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 910 -580 1 0 {name=R12
W=0.69
L=0.4
model=res_xhigh_po
spiceprefix=X
mult=1}
C {opin.sym} 980 -400 0 0 {name=out lab=out}
C {ipin.sym} 360 -780 0 0 {name=vdd lab=vdd}
C {ipin.sym} 360 -280 0 0 {name=gnd lab=gnd}
C {ipin.sym} 360 -460 0 0 {name=in lab=in}
C {ipin.sym} 880 -320 2 0 {name=bias lab=bias}
