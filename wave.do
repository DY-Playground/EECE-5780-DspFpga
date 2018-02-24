onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /func_gen_tb/func_gen_clk_in
add wave -noupdate /func_gen_tb/func_gen_rst_l_in
add wave -noupdate -format Analog-Step -height 50 -max 16381.000000000004 -min -16383.0 -radix sfixed /func_gen_tb/func_gen_sine_out
add wave -noupdate -format Analog-Step -height 50 -max 32767.0 -min -32767.0 -radix sfixed /func_gen_tb/uut/func_gen_int_sine_data
add wave -noupdate -format Analog-Step -height 50 -max 4095.0 -radix decimal /func_gen_tb/func_gen_pulse_out
add wave -noupdate -format Analog-Step -height 50 -max 31.0 -min -31.0 -radix sfixed /func_gen_tb/func_gen_triangle_out
add wave -noupdate -format Analog-Step -height 50 -max 62.0 -radix sfixed /func_gen_tb/func_gen_sawtooth_out
add wave -noupdate -radix sfixed /func_gen_tb/func_gen_dcoffset_out
add wave -noupdate /func_gen_tb/uut/func_gen_int_sine_amp
add wave -noupdate /func_gen_tb/uut/func_gen_int_uns_scnt
add wave -noupdate /func_gen_tb/uut/func_gen_int_uns_pcnt
add wave -noupdate /func_gen_tb/uut/func_gen_int_uns_tcnt
add wave -noupdate /func_gen_tb/uut/func_gen_int_uns_tcnt1
add wave -noupdate /func_gen_tb/uut/func_gen_int_triangle_negmax
add wave -noupdate /func_gen_tb/uut/func_gen_int_tpos_slope
add wave -noupdate /func_gen_tb/uut/func_gen_int_tneg_slope
add wave -noupdate /func_gen_tb/uut/func_gen_int_triangle_temp1
add wave -noupdate /func_gen_tb/uut/func_gen_int_triangle_temp2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 195
configure wave -valuecolwidth 85
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {10322368 ps}
