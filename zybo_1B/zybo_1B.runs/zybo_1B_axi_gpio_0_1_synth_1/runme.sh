#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx_2020.2/Vitis/2020.2/bin:/tools/Xilinx_2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx_2020.2/Vivado/2020.2/bin
else
  PATH=/tools/Xilinx_2020.2/Vitis/2020.2/bin:/tools/Xilinx_2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/tools/Xilinx_2020.2/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/trevin/Documents/Soc_Projects/zybo_excrises/zybo_1B/zybo_1B.runs/zybo_1B_axi_gpio_0_1_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log zybo_1B_axi_gpio_0_1.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source zybo_1B_axi_gpio_0_1.tcl
