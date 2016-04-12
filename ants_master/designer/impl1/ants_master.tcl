# Created by Microsemi Libero Software 11.5.3.10
# Tue Apr 12 13:00:04 2016

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


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/ants_master.edn} \
-format "pdc"  {..\..\component\work\ants_master\ants_master.pdc} -merge_physical "yes" -merge_timing "yes"
compile
report -type "status" {ants_master_compile_report.txt}
report -type "pin" -listby "name" {ants_master_report_pin_byname.txt}
report -type "pin" -listby "number" {ants_master_report_pin_bynumber.txt}

save_design
