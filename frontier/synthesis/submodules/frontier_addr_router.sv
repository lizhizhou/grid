// (C) 2001-2011 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License Subscription 
// Agreement, Altera MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/11.0/ip/merlin/altera_merlin_router/altera_merlin_router.sv.terp#2 $
// $Revision: #2 $
// $Date: 2011/03/23 $
// $Author: aferrucc $

// -------------------------------------------------------
// Merlin Router
//
// Asserts the appropriate one-hot encoded channel based on 
// either (a) the address or (b) the dest id. The DECODER_TYPE
// parameter controls this behaviour. 0 means address decoder,
// 1 means dest id decoder.
//
// In the case of (a), it also sets the destination id.
// -------------------------------------------------------

`timescale 1 ns / 1 ns

module frontier_addr_router_default_decode
  #(
     parameter DEFAULT_CHANNEL = 6,
               DEFAULT_DESTID = 7 
   )
  (output [89 - 85 : 0] default_destid,
   output [25-1 : 0] default_src_channel
  );

  assign default_destid = DEFAULT_DESTID;
  generate begin : default_decode
    if (DEFAULT_CHANNEL == -1)
      assign default_src_channel = 0;
    else
      assign default_src_channel = 1 << DEFAULT_CHANNEL;
  end endgenerate

endmodule


module frontier_addr_router
(
    // -------------------
    // Clock & Reset
    // -------------------
    input clk,
    input reset,

    // -------------------
    // Command Sink (Input)
    // -------------------
    input                       sink_valid,
    input  [91-1 : 0]    sink_data,
    input                       sink_startofpacket,
    input                       sink_endofpacket,
    output                      sink_ready,

    // -------------------
    // Command Source (Output)
    // -------------------
    output                          src_valid,
    output reg [91-1    : 0] src_data,
    output reg [25-1 : 0] src_channel,
    output                          src_startofpacket,
    output                          src_endofpacket,
    input                           src_ready
);

    // -------------------------------------------------------
    // Local parameters and variables
    // -------------------------------------------------------
    localparam PKT_ADDR_H = 67;
    localparam PKT_ADDR_L = 36;
    localparam PKT_DEST_ID_H = 89;
    localparam PKT_DEST_ID_L = 85;
    localparam ST_DATA_W = 91;
    localparam ST_CHANNEL_W = 25;
    localparam DECODER_TYPE = 0;

    localparam PKT_ADDR_W = PKT_ADDR_H-PKT_ADDR_L + 1;
    localparam PKT_DEST_ID_W = PKT_DEST_ID_H-PKT_DEST_ID_L + 1;

    // -------------------------------------------------------
    // Figure out the number of bits to mask off for each slave span
    // during address decoding
    // -------------------------------------------------------
    localparam PAD0 = log2ceil(32'h10000010 - 32'h10000000);
    localparam PAD1 = log2ceil(32'h10000104 - 32'h10000100);
    localparam PAD2 = log2ceil(32'h10000108 - 32'h10000104);
    localparam PAD3 = log2ceil(32'h1000010c - 32'h10000108);
    localparam PAD4 = log2ceil(32'h10000110 - 32'h1000010c);
    localparam PAD5 = log2ceil(32'h10000204 - 32'h10000200);
    localparam PAD6 = log2ceil(32'h20000080 - 32'h20000000);
    localparam PAD7 = log2ceil(32'h20000100 - 32'h20000080);
    localparam PAD8 = log2ceil(32'h20000120 - 32'h20000100);
    localparam PAD9 = log2ceil(32'h10000240 - 32'h10000220);
    localparam PAD10 = log2ceil(32'h10000280 - 32'h10000260);
    localparam PAD11 = log2ceil(32'h10000320 - 32'h10000300);
    localparam PAD12 = log2ceil(32'h100003a0 - 32'h10000380);
    localparam PAD13 = log2ceil(32'h10000420 - 32'h10000400);
    localparam PAD14 = log2ceil(32'h100002a0 - 32'h10000280);
    localparam PAD15 = log2ceil(32'h10000260 - 32'h10000240);
    localparam PAD16 = log2ceil(32'h100003c0 - 32'h100003a0);
    localparam PAD17 = log2ceil(32'h10000400 - 32'h100003e0);
    localparam PAD18 = log2ceil(32'h100003e0 - 32'h100003c0);
    localparam PAD19 = log2ceil(32'h100002c0 - 32'h100002a0);
    localparam PAD20 = log2ceil(32'h100002e0 - 32'h100002c0);
    localparam PAD21 = log2ceil(32'h10000300 - 32'h100002e0);
    localparam PAD22 = log2ceil(32'h10000340 - 32'h10000320);
    localparam PAD23 = log2ceil(32'h10000360 - 32'h10000340);
    localparam PAD24 = log2ceil(32'h10000380 - 32'h10000360);

    // -------------------------------------------------------
    // Work out which address bits are significant based on the
    // address range of the slaves. If the required width is too
    // large or too small, we use the address field width instead.
    // -------------------------------------------------------
    localparam ADDR_RANGE = 32'h20000120;
    localparam RANGE_ADDR_WIDTH = log2ceil(ADDR_RANGE);
    localparam OPTIMIZED_ADDR_H = (RANGE_ADDR_WIDTH > PKT_ADDR_W) ||
                                  (RANGE_ADDR_WIDTH == 0) ?
                                        PKT_ADDR_H :
                                        PKT_ADDR_L + RANGE_ADDR_WIDTH - 1;
    localparam RG = RANGE_ADDR_WIDTH-1;

    reg [PKT_ADDR_W-1 : 0] address;

    // -------------------------------------------------------
    // Pass almost everything through, untouched
    // -------------------------------------------------------
    assign sink_ready        = src_ready;
    assign src_valid         = sink_valid;
    assign src_startofpacket = sink_startofpacket;
    assign src_endofpacket   = sink_endofpacket;

    wire [PKT_DEST_ID_W-1:0] default_destid;
    wire [25-1 : 0] default_src_channel;

    frontier_addr_router_default_decode the_default_decode(
      .default_destid (default_destid),
      .default_src_channel (default_src_channel)
    );

    always @* begin
        src_data    = sink_data;
        src_channel = default_src_channel;

        src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = default_destid;
        // --------------------------------------------------
        // Address Decoder
        // Sets the channel and destination ID based on the address
        // --------------------------------------------------
        address     = sink_data[OPTIMIZED_ADDR_H : PKT_ADDR_L];

        // ( 0x10000000 .. 0x10000010 )
        if ( {address[RG:PAD0],{PAD0{1'b0}}} == 'h10000000 ) begin
            src_channel = 'b0000000000000000000000001;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 1;
        end

        // ( 0x10000100 .. 0x10000104 )
        if ( {address[RG:PAD1],{PAD1{1'b0}}} == 'h10000100 ) begin
            src_channel = 'b0000000000000000000000010;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 2;
        end

        // ( 0x10000104 .. 0x10000108 )
        if ( {address[RG:PAD2],{PAD2{1'b0}}} == 'h10000104 ) begin
            src_channel = 'b0000000000000000000000100;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 3;
        end

        // ( 0x10000108 .. 0x1000010c )
        if ( {address[RG:PAD3],{PAD3{1'b0}}} == 'h10000108 ) begin
            src_channel = 'b0000000000000000000001000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 4;
        end

        // ( 0x1000010c .. 0x10000110 )
        if ( {address[RG:PAD4],{PAD4{1'b0}}} == 'h1000010c ) begin
            src_channel = 'b0000000000000000000010000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 5;
        end

        // ( 0x10000200 .. 0x10000204 )
        if ( {address[RG:PAD5],{PAD5{1'b0}}} == 'h10000200 ) begin
            src_channel = 'b0000000000000000000100000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 6;
        end

        // ( 0x20000000 .. 0x20000080 )
        if ( {address[RG:PAD6],{PAD6{1'b0}}} == 'h20000000 ) begin
            src_channel = 'b0000000000000000001000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 7;
        end

        // ( 0x20000080 .. 0x20000100 )
        if ( {address[RG:PAD7],{PAD7{1'b0}}} == 'h20000080 ) begin
            src_channel = 'b0000000000000000010000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 8;
        end

        // ( 0x20000100 .. 0x20000120 )
        if ( {address[RG:PAD8],{PAD8{1'b0}}} == 'h20000100 ) begin
            src_channel = 'b0000000000000000100000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 9;
        end

        // ( 0x10000220 .. 0x10000240 )
        if ( {address[RG:PAD9],{PAD9{1'b0}}} == 'h10000220 ) begin
            src_channel = 'b0000000000000001000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 10;
        end

        // ( 0x10000260 .. 0x10000280 )
        if ( {address[RG:PAD10],{PAD10{1'b0}}} == 'h10000260 ) begin
            src_channel = 'b0000000000000010000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 11;
        end

        // ( 0x10000300 .. 0x10000320 )
        if ( {address[RG:PAD11],{PAD11{1'b0}}} == 'h10000300 ) begin
            src_channel = 'b0000000000000100000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 12;
        end

        // ( 0x10000380 .. 0x100003a0 )
        if ( {address[RG:PAD12],{PAD12{1'b0}}} == 'h10000380 ) begin
            src_channel = 'b0000000000001000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 13;
        end

        // ( 0x10000400 .. 0x10000420 )
        if ( {address[RG:PAD13],{PAD13{1'b0}}} == 'h10000400 ) begin
            src_channel = 'b0000000000010000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 14;
        end

        // ( 0x10000280 .. 0x100002a0 )
        if ( {address[RG:PAD14],{PAD14{1'b0}}} == 'h10000280 ) begin
            src_channel = 'b0000000000100000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 15;
        end

        // ( 0x10000240 .. 0x10000260 )
        if ( {address[RG:PAD15],{PAD15{1'b0}}} == 'h10000240 ) begin
            src_channel = 'b0000000001000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 16;
        end

        // ( 0x100003a0 .. 0x100003c0 )
        if ( {address[RG:PAD16],{PAD16{1'b0}}} == 'h100003a0 ) begin
            src_channel = 'b0000000010000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 17;
        end

        // ( 0x100003e0 .. 0x10000400 )
        if ( {address[RG:PAD17],{PAD17{1'b0}}} == 'h100003e0 ) begin
            src_channel = 'b0000000100000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 18;
        end

        // ( 0x100003c0 .. 0x100003e0 )
        if ( {address[RG:PAD18],{PAD18{1'b0}}} == 'h100003c0 ) begin
            src_channel = 'b0000001000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 19;
        end

        // ( 0x100002a0 .. 0x100002c0 )
        if ( {address[RG:PAD19],{PAD19{1'b0}}} == 'h100002a0 ) begin
            src_channel = 'b0000010000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 20;
        end

        // ( 0x100002c0 .. 0x100002e0 )
        if ( {address[RG:PAD20],{PAD20{1'b0}}} == 'h100002c0 ) begin
            src_channel = 'b0000100000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 21;
        end

        // ( 0x100002e0 .. 0x10000300 )
        if ( {address[RG:PAD21],{PAD21{1'b0}}} == 'h100002e0 ) begin
            src_channel = 'b0001000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 22;
        end

        // ( 0x10000320 .. 0x10000340 )
        if ( {address[RG:PAD22],{PAD22{1'b0}}} == 'h10000320 ) begin
            src_channel = 'b0010000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 23;
        end

        // ( 0x10000340 .. 0x10000360 )
        if ( {address[RG:PAD23],{PAD23{1'b0}}} == 'h10000340 ) begin
            src_channel = 'b0100000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 24;
        end

        // ( 0x10000360 .. 0x10000380 )
        if ( {address[RG:PAD24],{PAD24{1'b0}}} == 'h10000360 ) begin
            src_channel = 'b1000000000000000000000000;
            src_data[PKT_DEST_ID_H:PKT_DEST_ID_L] = 25;
        end

    end

    // --------------------------------------------------
    // Ceil(log2()) function
    // --------------------------------------------------
    function integer log2ceil;
        input reg[63:0] val;
        reg [63:0] i;

        begin
            i = 1;
            log2ceil = 0;

            while (i < val) begin
                log2ceil = log2ceil + 1;
                i = i << 1;
            end
        end
    endfunction

endmodule


