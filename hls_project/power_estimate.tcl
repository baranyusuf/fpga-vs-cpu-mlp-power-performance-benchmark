read_verilog [glob myproject_prj/solution1/syn/verilog/*.v]

synth_design -top myproject -part xczu7ev-ffvc1156-2-e

create_clock -period 5 [get_ports ap_clk]

report_utilization > utilization.rpt
report_power > power.rpt

exit
