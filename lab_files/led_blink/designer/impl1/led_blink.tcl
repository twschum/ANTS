# Created by Microsemi Libero Software 11.5.3.10
# Tue Jan 12 14:56:55 2016

# (OPEN DESIGN)

open_design "led_blink.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "led_blink_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\Users\rpokeefe\led_blink\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"


# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/led_blink.edn} -merge_physical "no" -merge_timing "yes"
compile
report -type "status" {led_blink_compile_report.txt}
report -type "pin" -listby "name" {led_blink_report_pin_byname.txt}
report -type "pin" -listby "number" {led_blink_report_pin_bynumber.txt}

save_design
