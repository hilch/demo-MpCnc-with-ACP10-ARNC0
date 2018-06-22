FUNCTION_BLOCK MC_BR_GroupGetData_ARNC (*Provides information about the ArncGrp*)
	VAR_INPUT
		AxesGroup : REFERENCE TO MCAxesGroupType_Arnc; (*The axis group reference establishes the connection between the function block and the axis group.*)
		Enable : BOOL; (*The function block is active as long as this input is set.*)
		DataSource : MCArncDataSrcEnum; (*Data source type*)
		DataAdr : UDINT; (*Data adress of user variable or structure*)
	END_VAR
	VAR_OUTPUT
		Valid : BOOL; (*Function block's output values can be used*)
		Busy : BOOL; (*Function block is active and must continue to be called.*)
		Error : BOOL; (*Execution error*)
		ErrorID : DINT; (*Error number*)
	END_VAR
	VAR
		Internal : MCInternalType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MC_BR_MFunctionGroup_ARNC (*Write or read an M-Function group table.*)
	VAR_INPUT
		AxesGroup : REFERENCE TO MCAxesGroupType_Arnc; (*The axis group reference establishes the connection between the function block and the axis group.*)
		Execute : BOOL; (*Execution of the function block begins on a rising edge of this input.*)
		Name : STRING[260]; (*Name of the Dataobject*)
		Mode : MCArncSetGetModeEnum; (*Defines if the MFunction group should be set or read*)
		ExecutionMode : MCExecutionModeEnum; (*Defines the chronological order of the function block and the preceding function block.*)
	END_VAR
	VAR_OUTPUT
		Done : BOOL; (*Execution successful. Function block is finished.*)
		Busy : BOOL; (*Function block is active and must continue to be called.*)
		CommandAborted : BOOL; (*Command aborted by another command.*)
		Error : BOOL; (*Execution error*)
		ErrorID : DINT; (*Error number*)
	END_VAR
	VAR
		Internal : MCInternalType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MC_BR_ZeroPointTable_ARNC (*Write or read an zero point offset table.*)
	VAR_INPUT
		AxesGroup : REFERENCE TO MCAxesGroupType_Arnc; (*The axis group reference establishes the connection between the function block and the axis group.*)
		Execute : BOOL; (*Execution of the function block begins on a rising edge of this input.*)
		Name : STRING[260]; (*Name of the Dataobject*)
		Mode : MCArncSetGetModeEnum; (*Defines if the data zero point offset table should be set or read*)
		ExecutionMode : MCExecutionModeEnum; (*Defines the chronological order of the function block and the preceding function block.*)
	END_VAR
	VAR_OUTPUT
		Done : BOOL; (*Execution successful. Function block is finished.*)
		Busy : BOOL; (*Function block is active and must continue to be called.*)
		CommandAborted : BOOL; (*Command aborted by another command.*)
		Error : BOOL; (*Execution error*)
		ErrorID : DINT; (*Error number*)
	END_VAR
	VAR
		Internal : MCInternalType;
	END_VAR
END_FUNCTION_BLOCK