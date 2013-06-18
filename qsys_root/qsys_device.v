module qsys_device#(
		parameter address_size=5)(
	   // Qsys bus interface	
		input					rsi_MRST_reset,
		input					csi_MCLK_clk,
		input		[31:0]	avs_ctrl_writedata,
		output	[31:0]	avs_ctrl_readdata,
		input		[3:0]		avs_ctrl_byteenable,
		input		[address_size:0]		avs_ctrl_address,
		input					avs_ctrl_write,
		input					avs_ctrl_read,
		output				avs_ctrl_waitrequest,
		// Qsys device interface
		output				device_reset,
		output				device_clk,
		output	[15:0]	device_writedata,
		input 	[15:0]	device_readdata,
		output	[1:0]		device_byteenable,
		output   [address_size:0]		device_address,
		output				device_write,
		output				device_read,
		input 				device_waitrequest
		);
		assign device_reset   = rsi_MRST_reset;
		assign device_clk     = csi_MCLK_clk;
		assign device_address = avs_ctrl_address;
		assign avs_ctrl_waitrequest = avs_ctrl_waitrequest;
		assign device_write   = avs_ctrl_write;
		assign device_read    = avs_ctrl_read;
		assign device_byteenable = avs_ctrl_byteenable[1:0];
		assign device_writedata = ((avs_ctrl_byteenable[3] == 1'b1) || (avs_ctrl_byteenable[2] == 1'b1))
				? avs_ctrl_writedata[31:16]:avs_ctrl_writedata[15:0];
		assign avs_ctrl_readdata = {device_readdata[15:0],device_readdata[15:0]};
		
endmodule