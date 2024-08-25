# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/trevin/workspace/zybo_1B_wrapper_updated/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/trevin/workspace/zybo_1B_wrapper_updated/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zybo_1B_wrapper_updated}\
-hw {/home/trevin/Documents/Soc_Projects/zybo_excrises/zybo_1B/zybo_1B_wrapper_updated.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/home/trevin/workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {zybo_1B_wrapper_updated}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform generate
