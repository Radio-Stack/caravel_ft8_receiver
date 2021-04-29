v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
T {Testbench for simple POR} -350 -240 0 0 0.6 0.6 {}
N -280 60 -10 60 { lab=GND}
N -330 0 -330 60 { lab=GND}
N -210 -0 -210 60 { lab=GND}
N -210 -100 -210 -60 { lab=vdd3v3}
N -210 -110 -210 -100 { lab=vdd3v3}
N -210 -110 -40 -110 { lab=vdd3v3}
N -40 -110 -40 -100 { lab=vdd3v3}
N -330 -130 -330 -60 { lab=vdd1v8}
N -280 -130 20 -130 { lab=vdd1v8}
N 20 -130 20 -100 { lab=vdd1v8}
N 140 -50 180 -50 { lab=porb_h}
N 140 -20 180 -20 { lab=porb_l}
N 140 10 180 10 { lab=por_l}
N -220 -110 -210 -110 { lab=vdd3v3}
N -290 -130 -280 -130 { lab=vdd1v8}
N -330 -130 -290 -130 { lab=vdd1v8}
N -350 -130 -330 -130 { lab=vdd1v8}
N -330 60 -280 60 { lab=GND}
C {example_por.sym} -10 -20 0 0 {name=x1}
C {devices/gnd.sym} -100 60 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} -210 -30 0 0 {name=V1 value="PWL(0.0 0 100u 0 5m 3.3)"}
C {devices/vsource.sym} -330 -30 0 0 {name=V2 value="PWL(0.0 0 300u 0 5.3m 1.8)"}
C {devices/opin.sym} -220 -110 0 1 {name=p1 lab=vdd3v3}
C {devices/opin.sym} -350 -130 0 1 {name=p2 lab=vdd1v8}
C {devices/opin.sym} 180 -50 0 0 {name=p3 lab=porb_h}
C {devices/opin.sym} 180 -20 0 0 {name=p4 lab=porb_l}
C {devices/opin.sym} 180 10 0 0 {name=p5 lab=por_l}
C {devices/code.sym} 140 -270 0 0 {name=s1 only_toplevel=false value=".lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code.sym} 260 -270 0 0 {name=s2 only_toplevel=false value=".include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice"}
