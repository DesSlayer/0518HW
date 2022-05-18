VERILOG = iverilog
TARGET = PRPG.vcd
TEMP = temp.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): PRPG.v TestBench.v
	$(VERILOG) -o $(TEMP) PRPG.v TestBench.v  
clean:
	-del $(TARGET)
	-del $(TEMP)