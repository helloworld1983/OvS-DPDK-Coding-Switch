transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/fifo56x16/fifo56x16.vhd}
vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/fifo32x1024/fifo32x1024.vhd}
vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/prngen/prngen.vhd}
vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/net_encoder/net_encoder.vhd}
vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/gfmul/gfmul.vhd}

vcom -93 -work work {/home/daniel/Dropbox/Academics/MEng/Working/OvS-DPDK-Coding-Switch/fpga/net_encoder/net_encoderTb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  net_encoderTb

add wave *
view structure
view signals
run -all
