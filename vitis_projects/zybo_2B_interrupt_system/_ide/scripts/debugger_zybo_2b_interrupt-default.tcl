# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/trevin/workspace/zybo_2B_interrupt_system/_ide/scripts/debugger_zybo_2b_interrupt-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/trevin/workspace/zybo_2B_interrupt_system/_ide/scripts/debugger_zybo_2b_interrupt-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B7BA00A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B7BA00A-23727093-0"}
fpga -file /home/trevin/workspace/zybo_2B_interrupt/_ide/bitstream/zybo_2B_interrupt_pf.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/trevin/workspace/zybo_2B_interrupt_pf/export/zybo_2B_interrupt_pf/hw/zybo_2B_interrupt_pf.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/trevin/workspace/zybo_2B_interrupt/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/trevin/workspace/zybo_2B_interrupt/Debug/zybo_2B_interrupt.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
