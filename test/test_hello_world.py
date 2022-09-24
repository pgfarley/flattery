import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def test_counter_increments(dut):

    dut.rst.value = 1
    await Timer(1, units="ns")
    dut.rst.value = 0
    await Timer(1, units="ns")

    for cycle in range(10):
        dut.clk.value = 0
        await Timer(1, units="ns")
        dut.clk.value = 1
        await Timer(1, units="ns")

        dut._log.info(f"counter value is {dut.counter.value}")
        assert dut.counter.value.integer == (cycle + 1) % 8
