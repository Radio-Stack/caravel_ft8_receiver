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
lab=gnd}
N 140 -20 820 -20 {
lab=gnd}
N 220 -240 220 -210 {
lab=gnd}
N 400 -240 400 -210 {
lab=gnd}
N 580 -240 580 -210 {
lab=gnd}
N 760 -240 760 -210 {
lab=gnd}
N 160 -240 840 -240 {
lab=gnd}
N 820 -20 840 -20 {
lab=gnd}
N 140 -240 160 -240 {
lab=gnd}
N 100 -160 140 -160 {
lab=in}
N 820 -160 860 -160 {
lab=out}
N 640 -160 680 -160 {
lab=#net3}
N 200 -50 200 -20 {
lab=gnd}
N 220 -80 220 -20 {
lab=gnd}
N 400 -110 400 -80 {
lab=gnd}
N 380 -50 380 -20 {
lab=gnd}
N 400 -80 400 -20 {
lab=gnd}
N 580 -110 580 -80 {
lab=gnd}
N 560 -50 560 -20 {
lab=gnd}
N 580 -80 580 -20 {
lab=gnd}
N 760 -110 760 -80 {
lab=gnd}
N 740 -50 740 -20 {
lab=gnd}
N 760 -80 760 -20 {
lab=gnd}
N 840 -240 880 -240 {
lab=gnd}
N 965 -240 980 -240 {
lab=gnd}
N 980 -240 980 -20 {
lab=gnd}
N 840 -20 980 -20 {
lab=gnd}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} -20 -30 0 0 {name=XAMP1}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 160 -30 0 0 {name=XAMP2}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/foldedcascode.sym} 340 -30 0 0 {name=XAMP3}
C {opin.sym} 860 -160 0 0 {name=out lab=out}
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
C {/foss/designs/caravel_ft8_receiver/xschem/lna/decap.sym} 700 -107.5 0 0 {name=XDECAP1}
C {ipin.sym} 100 -160 0 0 {name=in lab=in}
C {ipin.sym} 140 -20 0 0 {name=gnd lab=gnd}
C {ipin.sym} 140 -240 0 0 {name=vdd lab=vdd}
