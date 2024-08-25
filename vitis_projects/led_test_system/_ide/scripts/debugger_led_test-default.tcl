# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/trevin/workspace/led_test_system/_ide/scripts/debugger_led_test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/trevin/workspace/led_test_system/_ide/scripts/debugger_led_test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B7BA00A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B7BA00A-23727093-0"}
fpga -file /home/trevin/workspace/led_test/_ide/bitstream/zybo_1B_wrapper_updated.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/trevin/workspace/zybo_1B_wrapper_updated/export/zybo_1B_wrapper_updated/hw/zybo_1B_wrapper_updated.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/trevin/workspace/led_test/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/trevin/workspace/led_test/Debug/led_test.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
