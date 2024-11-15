#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sun Nov 10 22:50:45 KST 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim NxN_register_tb_behav -key {Behavioral:sim_1:Functional:NxN_register_tb} -tclbatch NxN_register_tb.tcl -view /home/aquistar/Verilog/NxN_register/NxN_register_tb_behav.wcfg -log simulate.log"
xsim NxN_register_tb_behav -key {Behavioral:sim_1:Functional:NxN_register_tb} -tclbatch NxN_register_tb.tcl -view /home/aquistar/Verilog/NxN_register/NxN_register_tb_behav.wcfg -log simulate.log

