v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {/foss/designs/caravel_ft8_receiver/xschem/lna/lna4stage.sym} 160 -90 0 0 {name=XFLNA1}
C {code.sym} -210 -320 0 0 {name=s1 only_toplevel=false value="
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
C {code.sym} -350 -200 0 0 {name=sT_MODELS
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
