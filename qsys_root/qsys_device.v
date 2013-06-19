module qsys_device#(
		parameter address_size=8)(
	   // Qsys bus interface	
		input					rsi_MRST_reset,
		input					csi_MCLK_clk,
		input		[31:0]	avs_ctrl_writedata,
		output	[31:0] 	avs_ctrl_readdata,
		input		[3:0]		avs_ctrl_byteenable,
		input		[address_size-1:0]		avs_ctrl_address,
		input					avs_ctrl_write,
		input					avs_ctrl_read,
		output				avs_ctrl_waitrequest,
		// Qsys device interface
		output				device_reset,
		output				device_clk,
		output   [7:0]	device_writedata,
		input 	[7:0]	device_readdata,
		output   [address_size-1:0]		device_address,
		output				device_write,
		output				device_read,
		input 				device_waitrequest
		);
		reg [7:0] device_writedata_r;
		assign device_reset   = rsi_MRST_reset;
		assign device_clk     = csi_MCLK_clk;
		assign device_address = avs_ctrl_address;
		assign avs_ctrl_waitrequest = avs_ctrl_waitrequest;
		assign device_write   = avs_ctrl_write;
		assign device_read    = avs_ctrl_read;
		assign avs_ctrl_readdata = {device_readdata[7:0],device_readdata[7:0],device_readdata[7:0],device_readdata[7:0]};
		assign device_writedata = device_writedata_r;
		always @ (avs_ctrl_byteenable)
		begin
			if(avs_ctrl_byteenable[0] == 0)
				device_writedata_r<= avs_ctrl_writedata[7:0];
			else if (avs_ctrl_byteenable[1] == 0)
				device_writedata_r<= avs_ctrl_writedata[15:8];
			else if (avs_ctrl_byteenable[2] == 0)
				device_writedata_r<= avs_ctrl_writedata[23:16];
			else if (avs_ctrl_byteenable[3] == 0)
				device_writedata_r<= avs_ctrl_writedata[31:24];
		end
		
endmodule