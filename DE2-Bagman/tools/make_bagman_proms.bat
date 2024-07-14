
copy /B bagman_unzip\e9_b05.bin + bagman_unzip\f9_b06.bin + bagman_unzip\f9_b07.bin + bagman_unzip\k9_b08.bin + bagman_unzip\m9_b09s.bin + bagman_unzip\n9_b10.bin prog.bin

copy /B gap_8192.bin + gap_8192.bin + gap_8192.bin + gap_8192.bin + gap_8192.bin gap_49152.bin

copy /B bagman_unzip\p3.bin + bagman_unzip\r3.bin bagman_palette.bin

copy /B bagman_unzip\e1_b02.bin + bagman_unzip\c1_b01.bin  bagman_tile0.bin
copy /B bagman_unzip\j1_b04.bin + bagman_unzip\f1_b03s.bin bagman_tile1.bin

copy /B prog.bin + gap_49152.bin + bagman_tile0.bin + bagman_tile1.bin bagman_sram_8bits.bin

duplicate_byte.exe bagman_sram_8bits.bin bagman_sram_16bits.bin

make_vhdl_prom prog.bin bagman_program.vhd
make_vhdl_prom bagman_tile0.bin bagman_tile_bit0.vhd
make_vhdl_prom bagman_tile1.bin bagman_tile_bit1.vhd
make_vhdl_prom bagman_palette.bin bagman_palette.vhd
make_vhdl_prom bagman_unzip\r9_b11.bin bagman_speech1.vhd
make_vhdl_prom bagman_unzip\t9_b12.bin bagman_speech2.vhd

del prog.bin gap_49152.bin bagman_palette.bin bagman_tile0.bin bagman_tile1.bin




