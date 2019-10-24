// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Oct 15 2019 14:40:28

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "Toggle_Pin_Test" view "INTERFACE"

module Toggle_Pin_Test (
    i_Tx_On,
    SS);

    output i_Tx_On;
    input SS;

    wire N__68;
    wire N__67;
    wire N__66;
    wire N__59;
    wire N__58;
    wire N__57;
    wire N__40;
    wire N__37;
    wire N__34;
    wire N__31;
    wire VCCG0;
    wire SS_c;
    wire GNDG0;
    wire _gnd_net_;

    IO_PAD SS_ibuf_iopad (
            .OE(N__68),
            .DIN(N__67),
            .DOUT(N__66),
            .PACKAGEPIN(SS));
    defparam SS_ibuf_preio.NEG_TRIGGER=1'b0;
    defparam SS_ibuf_preio.PIN_TYPE=6'b000001;
    PRE_IO SS_ibuf_preio (
            .PADOEN(N__68),
            .PADOUT(N__67),
            .PADIN(N__66),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(SS_c),
            .DOUT0(),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IO_PAD i_Tx_On_obuf_iopad (
            .OE(N__59),
            .DIN(N__58),
            .DOUT(N__57),
            .PACKAGEPIN(i_Tx_On));
    defparam i_Tx_On_obuf_preio.NEG_TRIGGER=1'b0;
    defparam i_Tx_On_obuf_preio.PIN_TYPE=6'b011001;
    PRE_IO i_Tx_On_obuf_preio (
            .PADOEN(N__59),
            .PADOUT(N__58),
            .PADIN(N__57),
            .CLOCKENABLE(),
            .DOUT1(),
            .OUTPUTENABLE(),
            .DIN0(),
            .DOUT0(N__40),
            .INPUTCLK(),
            .LATCHINPUTVALUE(),
            .DIN1(),
            .OUTPUTCLK());
    IoInMux I__8 (
            .O(N__40),
            .I(N__37));
    LocalMux I__7 (
            .O(N__37),
            .I(N__34));
    IoSpan4Mux I__6 (
            .O(N__34),
            .I(N__31));
    Odrv4 I__5 (
            .O(N__31),
            .I(SS_c));
    VCC VCC (
            .Y(VCCG0));
    GND GND (
            .Y(GNDG0));
    GND GND_Inst (
            .Y(_gnd_net_));
endmodule // Toggle_Pin_Test
