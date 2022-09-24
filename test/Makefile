SIM = icarus
TOPLEVEL_LANG = verilog

VERILOG_SOURCES += $(PWD)/../src/hello_world.sv

# TOPLEVEL is the name of the toplevel module in your Verilog or VHDL file
TOPLEVEL = hello_world

# MODULE is the basename of the Python test file
MODULE = test_hello_world

# include cocotb's make rules to take care of the simulator setup
include $(shell cocotb-config --makefiles)/Makefile.sim
