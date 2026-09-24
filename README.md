# Prerequsite Task before Labwork 4 EL2102 Digital Systems – ASCII & Binary Converter

## Brief Intro
This repository contains the VHDL implementation of bidirectional conversion modules between 5-bit binary values and 5-bit ASCII characters. Designed as part of the EL2102 Digital Systems labwork preparation, these combinational modules handle seamless translation between raw numerical data and ASCII-encoded representation for alphanumeric display or transmission.

## Architecture
The system consists of two standalone combinational modules:

1. **`bin_to_ascii` (Binary to ASCII Encoder):** 
   - Translates a 5-bit binary vector into its corresponding 5-bit ASCII character representation (`unsigned(7 downto 0)`).

2. **`ascii_to_bin` (ASCII to Binary Decoder):** 
   - Translates an 5-bit ASCII character (`unsigned(5 downto 0)`) back into a 5-bit binary vector (`std_logic_vector(4 downto 0)`).

## Specs
- **Input/Output Data Widths:**
  - Binary Data: 5-bit (`std_logic_vector(4 downto 0)`)
  - ASCII Data: 5-bit (`unsigned(4 downto 0)`)
- **Logic Type:** Purely combinational (zero-latency propagation delay)
- **Target Toolchain:** Standard IEEE VHDL 1993/2008 compliant (compatible with GHDL)

## Prerequisites
1. ghdl
2. GTKWave

## How to test
```shell
# 1. Analyze VHDL source files and testbenches
ghdl -a src/bin_to_ascii.vhd src/ascii_to_bin.vhd test/tb/tb_bin_to_ascii.vhd test/tb/tb_ascii_to_bin.vhd

# 2. Elaborate testbench entities
ghdl -e tb_bin_to_ascii
ghdl -e tb_ascii_to_bin

# 3. Run simulation and dump waveforms to VCD files
ghdl -r tb_bin_to_ascii --vcd=test/wave/tb_bin_to_ascii.vcd
ghdl -r tb_ascii_to_bin --vcd=test/wave/tb_ascii_to_bin.vcd

# 4. View waveform output in GTKWave
gtkwave test/wave/tb_bin_to_ascii.vcd
gtkwave test/wave/tb_ascii_to_bin.vcd
```

## Testbenches
> See further in the test/tb/ folder

## Author
1. Brian A. Hadian (A final-year undergraduate computer science student at Bandung Institute of Technology)