# SPDX-FileCopyrightText: © 2021 Uri Shaked <uri@wokwi.com>
# SPDX-License-Identifier: MIT

export COCOTB_REDUCED_LOG_FMT=1
export LIBPYTHON_LOC=$(shell cocotb-config --libpython)

all: test_dffsr

test_dffsr:
	iverilog -g2005 -I src -s test_dffsr -o dffsr_tb.out test/dffsr_tb.v src/user_module_348378194290672212.v src/cells.v
	MODULE=test.test_dffsr vvp -M $$(cocotb-config --prefix)/cocotb/libs -m libcocotbvpi_icarus ./dffsr_tb.out

test_dffsr_show: test_dffsr
	gtkwave dffsr_tb.vcd test/dffsr_tb.gtkw

format:
	verible-verilog-format --inplace test/*.v
