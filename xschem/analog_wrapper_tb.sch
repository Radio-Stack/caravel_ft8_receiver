v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 300 -290 510 -290 { lab=#net1}
N 590 -290 590 -250 { lab=#net1}
N 300 -250 430 -250 { lab=GND}
N 510 -250 510 -150 { lab=GND}
N 510 -150 780 -150 { lab=GND}
N 780 -190 780 -150 { lab=GND}
N 690 -190 690 -150 { lab=GND}
N 590 -190 590 -150 { lab=GND}
N 300 -210 400 -210 { lab=#net2}
N 480 -270 480 -210 { lab=#net2}
N 480 -270 690 -270 { lab=#net2}
N 690 -270 690 -250 { lab=#net2}
N 300 10 450 10 { lab=#net3}
N 850 -270 850 0 { lab=io_analog[7]}
N 780 -270 850 -270 { lab=io_analog[7]}
N 780 -270 780 -250 { lab=io_analog[7]}
N 300 30 470 30 { lab=io_clamp_high[2:0]}
N 300 50 410 50 { lab=GND}
N 550 30 630 30 { lab=io_clamp_high[2:0]}
N 630 30 630 90 { lab=io_clamp_high[2:0]}
N 500 160 810 160 { lab=GND}
N 810 -150 810 160 { lab=GND}
N 780 -150 810 -150 { lab=GND}
N 530 10 660 10 { lab=io_analog[10:0]}
N 510 -290 590 -290 { lab=#net1}
N 430 -250 510 -250 { lab=GND}
N 400 -210 480 -210 { lab=#net2}
N 470 30 550 30 { lab=io_clamp_high[2:0]}
N 460 10 530 10 { lab=io_analog[10:0]}
N 410 50 490 50 { lab=io_clamp_low[2:0]}
N 490 50 490 160 { lab=GND}
N 490 160 500 160 { lab=GND}
N 300 -50 620 -50 { lab=io_oeb[26:0]}
N 300 -70 480 -70 { lab=io_out[26:0]}
N 520 -150 520 -60 { lab=io_oeb[16:15]}
N 610 -150 610 -60 { lab=io_oeb[12:11]}
N 850 -0 850 40 { lab=io_analog[7]}
N 640 40 810 40 { lab=io_clamp_high[2:1]}
N 670 0 850 -0 { lab=io_analog[7]}
N 640 100 850 100 { lab=io_clamp_high[0]}
N 850 40 850 100 { lab=io_analog[7]}
C {user_analog_project_wrapper.sym} 150 -110 0 0 {name=x1}
C {devices/vsource.sym} 590 -220 0 0 {name=V1 value=3.3}
C {devices/vsource.sym} 690 -220 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 780 -220 0 0 {name=V3 value=3.3}
C {devices/bus_connect.sym} 660 10 1 1 {name=l1 lab=io_analog[7]}
C {devices/gnd.sym} 730 -150 0 0 {name=l2 lab=GND}
C {devices/bus_connect.sym} 630 30 1 0 {name=l3 lab=io_clamp_high[2:1]}
C {devices/bus_connect.sym} 630 90 1 0 {name=l8 lab=io_clamp_high[0]}
C {devices/lab_pin.sym} 570 30 0 0 {name=l11 sig_type=std_logic lab=io_clamp_high[2:0]}
C {devices/lab_pin.sym} 570 10 0 0 {name=l12 sig_type=std_logic lab=io_analog[10:0]}
C {devices/lab_pin.sym} 480 50 0 0 {name=l9 sig_type=std_logic lab=io_clamp_low[2:0]}
C {devices/lab_pin.sym} 450 -50 0 0 {name=l4 sig_type=std_logic lab=io_oeb[26:0]}
C {devices/lab_pin.sym} 450 -70 0 0 {name=l5 sig_type=std_logic lab=io_out[26:0]}
C {devices/bus_connect.sym} 510 -50 0 0 {name=l6 lab=io_oeb[16:15]}
C {devices/bus_connect.sym} 600 -50 0 0 {name=l7 lab=io_oeb[12:11]}
