set moduleName flashModel
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {flashModel}
set C_modelType { void 0 }
set C_modelArgList {
	{ rdCmdIn_V int 48 regular {axi_s 0 volatile  { rdCmdIn_V Data } }  }
	{ rdDataOut_V_V int 64 regular {axi_s 1 volatile  { rdDataOut_V_V Data } }  }
	{ wrCmdIn_V int 48 regular {axi_s 0 volatile  { wrCmdIn_V Data } }  }
	{ wrDataIn_V_V int 64 regular {axi_s 0 volatile  { wrDataIn_V_V Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rdCmdIn_V", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rdCmdIn.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":44,"cElement": [{"cName": "rdCmdIn.V.count.V","cData": "uint13","bit_use": { "low": 0,"up": 12},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rdDataOut_V_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "rdDataOut.V.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "wrCmdIn_V", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "wrCmdIn.V.address.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":32,"up":44,"cElement": [{"cName": "wrCmdIn.V.count.V","cData": "uint13","bit_use": { "low": 0,"up": 12},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "wrDataIn_V_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "wrDataIn.V.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ rdCmdIn_V_TDATA sc_in sc_lv 48 signal 0 } 
	{ rdDataOut_V_V_TDATA sc_out sc_lv 64 signal 1 } 
	{ wrCmdIn_V_TDATA sc_in sc_lv 48 signal 2 } 
	{ wrDataIn_V_V_TDATA sc_in sc_lv 64 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ rdCmdIn_V_TVALID sc_in sc_logic 1 invld 0 } 
	{ rdCmdIn_V_TREADY sc_out sc_logic 1 inacc 0 } 
	{ wrCmdIn_V_TVALID sc_in sc_logic 1 invld 2 } 
	{ wrCmdIn_V_TREADY sc_out sc_logic 1 inacc 2 } 
	{ rdDataOut_V_V_TVALID sc_out sc_logic 1 outvld 1 } 
	{ rdDataOut_V_V_TREADY sc_in sc_logic 1 outacc 1 } 
	{ wrDataIn_V_V_TVALID sc_in sc_logic 1 invld 3 } 
	{ wrDataIn_V_V_TREADY sc_out sc_logic 1 inacc 3 } 
}
set NewPortList {[ 
	{ "name": "rdCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "rdCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "rdDataOut_V_V_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "rdDataOut_V_V", "role": "TDATA" }} , 
 	{ "name": "wrCmdIn_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "wrCmdIn_V", "role": "TDATA" }} , 
 	{ "name": "wrDataIn_V_V_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "wrDataIn_V_V", "role": "TDATA" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "rdCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rdCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "rdCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rdCmdIn_V", "role": "TREADY" }} , 
 	{ "name": "wrCmdIn_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wrCmdIn_V", "role": "TVALID" }} , 
 	{ "name": "wrCmdIn_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wrCmdIn_V", "role": "TREADY" }} , 
 	{ "name": "rdDataOut_V_V_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "rdDataOut_V_V", "role": "TVALID" }} , 
 	{ "name": "rdDataOut_V_V_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "rdDataOut_V_V", "role": "TREADY" }} , 
 	{ "name": "wrDataIn_V_V_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wrDataIn_V_V", "role": "TVALID" }} , 
 	{ "name": "wrDataIn_V_V_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "wrDataIn_V_V", "role": "TREADY" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4"],
		"CDFG" : "flashModel",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "flashCmdAggregator_U0"},
			{"ID" : "2", "Name" : "flashMemAccess_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "flashMemAccess_U0"}],
		"Port" : [
			{"Name" : "rdCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "flashCmdAggregator_U0", "Port" : "rdCmdIn_V"}]},
			{"Name" : "rdDataOut_V_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "rdDataOut_V_V"}]},
			{"Name" : "wrCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "flashCmdAggregator_U0", "Port" : "wrCmdIn_V"}]},
			{"Name" : "wrDataIn_V_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "wrDataIn_V_V"}]},
			{"Name" : "flashAggregateMemCmd_1", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "flashCmdAggregator_U0", "Port" : "flashAggregateMemCmd_1"},
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "flashAggregateMemCmd_1"}]},
			{"Name" : "memState", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "memState"}]},
			{"Name" : "inputWord_address_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "inputWord_address_V"}]},
			{"Name" : "inputWord_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "inputWord_count_V"}]},
			{"Name" : "inputWord_rdOrWr_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "inputWord_rdOrWr_V"}]},
			{"Name" : "memArray_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "flashMemAccess_U0", "Port" : "memArray_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flashCmdAggregator_U0", "Parent" : "0",
		"CDFG" : "flashCmdAggregator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "rdCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rdCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wrCmdIn_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wrCmdIn_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "flashAggregateMemCmd_1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "flashAggregateMemCmd_1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flashMemAccess_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "flashMemAccess",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "2", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "rdDataOut_V_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rdDataOut_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wrDataIn_V_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "wrDataIn_V_V_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memState", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "inputWord_rdOrWr_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "flashAggregateMemCmd_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "flashAggregateMemCmd_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "memArray_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.flashMemAccess_U0.memArray_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flashAggregateMemCmd_1_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	flashModel {
		rdCmdIn_V {Type I LastRead 0 FirstWrite -1}
		rdDataOut_V_V {Type O LastRead -1 FirstWrite 1}
		wrCmdIn_V {Type I LastRead 0 FirstWrite -1}
		wrDataIn_V_V {Type I LastRead 0 FirstWrite -1}
		flashAggregateMemCmd_1 {Type IO LastRead -1 FirstWrite -1}
		memState {Type IO LastRead -1 FirstWrite -1}
		inputWord_address_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_count_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_rdOrWr_V {Type IO LastRead -1 FirstWrite -1}
		memArray_V {Type IO LastRead -1 FirstWrite -1}}
	flashCmdAggregator {
		rdCmdIn_V {Type I LastRead 0 FirstWrite -1}
		wrCmdIn_V {Type I LastRead 0 FirstWrite -1}
		flashAggregateMemCmd_1 {Type O LastRead -1 FirstWrite 0}}
	flashMemAccess {
		rdDataOut_V_V {Type O LastRead -1 FirstWrite 1}
		wrDataIn_V_V {Type I LastRead 0 FirstWrite -1}
		memState {Type IO LastRead -1 FirstWrite -1}
		inputWord_address_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_count_V {Type IO LastRead -1 FirstWrite -1}
		inputWord_rdOrWr_V {Type IO LastRead -1 FirstWrite -1}
		flashAggregateMemCmd_1 {Type I LastRead 0 FirstWrite -1}
		memArray_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rdCmdIn_V { axis {  { rdCmdIn_V_TDATA in_data 0 48 }  { rdCmdIn_V_TVALID in_vld 0 1 }  { rdCmdIn_V_TREADY in_acc 1 1 } } }
	rdDataOut_V_V { axis {  { rdDataOut_V_V_TDATA out_data 1 64 }  { rdDataOut_V_V_TVALID out_vld 1 1 }  { rdDataOut_V_V_TREADY out_acc 0 1 } } }
	wrCmdIn_V { axis {  { wrCmdIn_V_TDATA in_data 0 48 }  { wrCmdIn_V_TVALID in_vld 0 1 }  { wrCmdIn_V_TREADY in_acc 1 1 } } }
	wrDataIn_V_V { axis {  { wrDataIn_V_V_TDATA in_data 0 64 }  { wrDataIn_V_V_TVALID in_vld 0 1 }  { wrDataIn_V_V_TREADY in_acc 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
