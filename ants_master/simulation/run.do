quietly set ACTELLIBNAME SmartFusion
quietly set PROJECT_DIR "C:/Users/rpokeefe/repos/373/ants_master"
source "${PROJECT_DIR}/simulation/CompileDssBfm.tcl";source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";

if {[file exists ../designer/impl1/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/impl1/simulation/postlayout already exists"
} else {
   file delete -force ../designer/impl1/simulation/postlayout 
   vlib ../designer/impl1/simulation/postlayout
}
vmap postlayout ../designer/impl1/simulation/postlayout
vmap smartfusion "C:/Microsemi/Libero_v11.5/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap MSS_BFM_LIB "../component/Actel/SmartFusionMSS/MSS/2.5.200/mti/user_verilog/MSS_BFM_LIB"
vcom -work MSS_BFM_LIB -force_refresh
vlog -work MSS_BFM_LIB -force_refresh
if {[file exists COREAPB3_LIB/_info]} {
   echo "INFO: Simulation library COREAPB3_LIB already exists"
} else {
   file delete -force COREAPB3_LIB 
   vlib COREAPB3_LIB
}
vmap COREAPB3_LIB "COREAPB3_LIB"

vlog  -work postlayout "${PROJECT_DIR}/designer/impl1/ants_master_ba.v"

vsim -L SmartFusion -L postlayout -L MSS_BFM_LIB -L COREAPB3_LIB  -t 1ps -sdfmax /ants_master=${PROJECT_DIR}/designer/impl1/ants_master_ba.sdf postlayout.ants_master
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
