-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Oct 15 2019 14:40:29

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "Toggle_Pin_Test" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of Toggle_Pin_Test
entity Toggle_Pin_Test is
port (
    i_Tx_On : out std_logic;
    SS : in std_logic);
end Toggle_Pin_Test;

-- Architecture of Toggle_Pin_Test
-- View name is \INTERFACE\
architecture \INTERFACE\ of Toggle_Pin_Test is

signal \N__68\ : std_logic;
signal \N__67\ : std_logic;
signal \N__66\ : std_logic;
signal \N__59\ : std_logic;
signal \N__58\ : std_logic;
signal \N__57\ : std_logic;
signal \N__40\ : std_logic;
signal \N__37\ : std_logic;
signal \N__34\ : std_logic;
signal \N__31\ : std_logic;
signal \VCCG0\ : std_logic;
signal \SS_c\ : std_logic;
signal \GNDG0\ : std_logic;
signal \_gnd_net_\ : std_logic;

signal \SS_wire\ : std_logic;
signal \i_Tx_On_wire\ : std_logic;

begin
    \SS_wire\ <= SS;
    i_Tx_On <= \i_Tx_On_wire\;

    \SS_ibuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__68\,
            DIN => \N__67\,
            DOUT => \N__66\,
            PACKAGEPIN => \SS_wire\
        );

    \SS_ibuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "000001"
        )
    port map (
            PADOEN => \N__68\,
            PADOUT => \N__67\,
            PADIN => \N__66\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => \SS_c\,
            DOUT0 => '0',
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \i_Tx_On_obuf_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__59\,
            DIN => \N__58\,
            DOUT => \N__57\,
            PACKAGEPIN => \i_Tx_On_wire\
        );

    \i_Tx_On_obuf_preio\ : PRE_IO
    generic map (
            NEG_TRIGGER => '0',
            PIN_TYPE => "011001"
        )
    port map (
            PADOEN => \N__59\,
            PADOUT => \N__58\,
            PADIN => \N__57\,
            CLOCKENABLE => 'H',
            DOUT1 => '0',
            OUTPUTENABLE => '0',
            DIN0 => OPEN,
            DOUT0 => \N__40\,
            INPUTCLK => '0',
            LATCHINPUTVALUE => '0',
            DIN1 => OPEN,
            OUTPUTCLK => '0'
        );

    \I__8\ : IoInMux
    port map (
            O => \N__40\,
            I => \N__37\
        );

    \I__7\ : LocalMux
    port map (
            O => \N__37\,
            I => \N__34\
        );

    \I__6\ : IoSpan4Mux
    port map (
            O => \N__34\,
            I => \N__31\
        );

    \I__5\ : Odrv4
    port map (
            O => \N__31\,
            I => \SS_c\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );
end \INTERFACE\;
