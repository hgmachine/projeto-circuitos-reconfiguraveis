#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/henrique/SDK/2018.3/bin:/home/henrique/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/henrique/Vivado/2018.3/bin
else
  PATH=/home/henrique/SDK/2018.3/bin:/home/henrique/Vivado/2018.3/ids_lite/ISE/bin/lin64:/home/henrique/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/henrique/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/henrique/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/henrique/Documentos/projeto-circuitos-reconfiguraveis/Exercicios/Combinacional/project_1_voto_ABC/project_1_voto_ABC.runs/synth_2'
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

EAStep vivado -log topmodule.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source topmodule.tcl
