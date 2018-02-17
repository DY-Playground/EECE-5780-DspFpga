onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /hw2_tb/hw2_clk_in
add wave -noupdate /hw2_tb/hw2_rst_l_in
add wave -noupdate -format Analog-Step -height 74 -max 16383.0 -min -16384.0 -radix sfixed /hw2_tb/hw2_raised_cosine_out
add wave -noupdate -format Analog-Step -height 74 -max 16382.000000000002 -min -16383.0 -radix sfixed /hw2_tb/uut/hw2_int_sine1
add wave -noupdate /hw2_tb/uut/hw2_int_cos_gate
add wave -noupdate -format Analog-Step -height 74 -max 16383.0 -min -16384.0 -radix sfixed /hw2_tb/uut/hw2_int_sine2
add wave -noupdate -format Analog-Step -height 74 -max 16383.0 -min -16384.0 -radix sfixed /hw2_tb/uut/hw2_int_sine3
add wave -noupdate -format Analog-Step -height 74 -max 23167.999999999996 -min -23170.0 -radix sfixed /hw2_tb/hw2_qpsk_out
add wave -noupdate -radix ufixed /hw2_tb/uut/hw2_int_data_addr
add wave -noupdate /hw2_tb/uut/hw2_int_data
add wave -noupdate /hw2_tb/uut/hw2_int_bit_cos
add wave -noupdate /hw2_tb/uut/hw2_int_bit_sin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 162
configure wave -valuecolwidth 68
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
WaveRestoreZoom {0 ps} {104805795 ps}
