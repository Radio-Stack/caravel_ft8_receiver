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
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} -20 -30 0 0 {name=XAMP1}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 160 -30 0 0 {name=XAMP2}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 340 -30 0 0 {name=XAMP3}
C {code.sym} -140 -250 0 0 {name=s1 only_toplevel=false value="
.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.control
	** dc V1 0.769 3.769 0.01
	** dc V2 0 3 0.01
        ** SIN(0.9 0.00001 700000000)
	tran 0.0000000001 0.000001
	** ac lin 500 1K 100MEG
	** plot vdb(out1) xlog
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
C {vsource.sym} 80 -110 0 1 {name=V1 value="SIN(0.8 0.00005 7000000)"}
C {vsource.sym} 110 -240 1 0 {name=V2 value=1.8}
C {gnd.sym} 80 -240 1 0 {name=l1 lab=GND}
C {gnd.sym} 80 -80 0 0 {name=l2 lab=GND}
C {gnd.sym} 140 -20 0 0 {name=l3 lab=GND}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 520 -30 0 0 {name=XAMP4}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 200 -80 0 1 {name=R1
W=0.35
L=5.4
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 380 -80 0 1 {name=R2
W=0.35
L=5.2
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 560 -80 0 1 {name=R3
W=0.35
L=4.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {/foss/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_high_po_0p35.sym} 740 -80 0 1 {name=R4
W=0.35
L=4.5
model=res_high_po_0p35
spiceprefix=X
mult=1}
