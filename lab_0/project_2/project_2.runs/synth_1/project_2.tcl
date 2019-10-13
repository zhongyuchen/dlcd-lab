# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/win10/Desktop/lab_0/project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/win10/Desktop/lab_0/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib C:/Users/win10/Desktop/lab_0/project_2/project_2.srcs/sources_1/new/project_2.v
read_xdc C:/Users/win10/Desktop/lab_0/lab1_nexys4.xdc
set_property used_in_implementation false [get_files C:/Users/win10/Desktop/lab_0/lab1_nexys4.xdc]

synth_design -top project_2 -part xc7a100tcsg324-1
write_checkpoint -noxdef project_2.dcp
catch { report_utilization -file project_2_utilization_synth.rpt -pb project_2_utilization_synth.pb }
