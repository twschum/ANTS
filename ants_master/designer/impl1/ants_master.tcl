# Created by Microsemi Libero Software 11.5.3.10
# Sat Apr 16 10:16:14 2016

# (OPEN DESIGN)

open_design "ants_master.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "ants_master_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\collmae\Documents\GitHub\373\ants_master\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
