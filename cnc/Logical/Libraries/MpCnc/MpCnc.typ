
TYPE
	MpCncHomeSequenceTypeEnum :
		( (*Homing order enumerator*)
		mpCNC_HOME_ALL_TOGETHER := 0, (*Perfom a simuntainous homing of all axes*)
		mpCNC_HOME_IN_SEQUENCE := 1 (*Perform homing with defined order*)
		);
	MpCnc2AxisHomeSequenceEnum :
		(
		mpCNC_2AXIS_HOME_FIRST := 0, (*Home order: homed as first. Possible to set for more than one axis*)
		mpCNC_2AXIS_HOME_SECOND := 1 (*Home order: homed as second. Possible to set for more than one axis*)
		);
	MpCnc3AxisHomeSequenceEnum :
		(
		mpCNC_3AXIS_HOME_FIRST := 0, (*Home order: homed as first. Possible to set for more than one axis*)
		mpCNC_3AXIS_HOME_SECOND := 1, (*Home order: homed as second. Possible to set for more than one axis*)
		mpCNC_3AXIS_HOME_THIRD := 2 (*Home order: homes as third. Possible to set for more than one axis*)
		);
	MpCnc4AxisHomeSequenceEnum :
		(
		mpCNC_4AXIS_HOME_FIRST := 0, (*Home order: homed as first. Possible to set for more than one axis*)
		mpCNC_4AXIS_HOME_SECOND := 1, (*Home order: homed as second. Possible to set for more than one axis*)
		mpCNC_4AXIS_HOME_THIRD := 2, (*Home order: homes as third. Possible to set for more than one axis*)
		mpCNC_4AXIS_HOME_FOURTH := 3 (*Home order: homes as third. Possible to set for more than one axis*)
		);
	MpCnc5AxisHomeSequenceEnum :
		(
		mpCNC_5AXIS_HOME_FIRST := 0, (*Home order: homed as first. Possible to set for more than one axis*)
		mpCNC_5AXIS_HOME_SECOND := 1, (*Home order: homed as second. Possible to set for more than one axis*)
		mpCNC_5AXIS_HOME_THIRD := 2, (*Home order: homes as third. Possible to set for more than one axis*)
		mpCNC_5AXIS_HOME_FOURTH := 3, (*Home order: homes as fourth. Possible to set for more than one axis*)
		mpCNC_5AXIS_HOME_FIFTH := 4 (*Home order: homes as fifth. Possible to set for more than one axis*)
		);
	MpCnc5AxisHomeSequenceType : 	STRUCT
		Type : MpCncHomeSequenceTypeEnum := mpCNC_HOME_ALL_TOGETHER; (*Type of homing*)
		Axis1 : MpCnc5AxisHomeSequenceEnum := mpCNC_5AXIS_HOME_FIRST; (*Order of axis 1*)
		Axis2 : MpCnc5AxisHomeSequenceEnum := mpCNC_5AXIS_HOME_SECOND; (*Order of axis 2*)
		Axis3 : MpCnc5AxisHomeSequenceEnum := mpCNC_5AXIS_HOME_THIRD; (*Order of axis 3*)
		Axis4 : MpCnc5AxisHomeSequenceEnum := mpCNC_5AXIS_HOME_FOURTH; (*Order of axis 4*)
		Axis5 : MpCnc5AxisHomeSequenceEnum := mpCNC_5AXIS_HOME_FIFTH; (*Order of axis 5*)
	END_STRUCT;
	MpCnc4AxisHomeSequenceType : 	STRUCT
		Type : MpCncHomeSequenceTypeEnum := mpCNC_HOME_ALL_TOGETHER; (*Type of homing*)
		Axis1 : MpCnc4AxisHomeSequenceEnum := mpCNC_4AXIS_HOME_FIRST; (*Order of axis 1*)
		Axis2 : MpCnc4AxisHomeSequenceEnum := mpCNC_4AXIS_HOME_SECOND; (*Order of axis 2*)
		Axis3 : MpCnc4AxisHomeSequenceEnum := mpCNC_4AXIS_HOME_THIRD; (*Order of axis 3*)
		Axis4 : MpCnc4AxisHomeSequenceEnum := mpCNC_4AXIS_HOME_FOURTH; (*Order of axis 4*)
	END_STRUCT;
	MpCnc3AxisHomeSequenceType : 	STRUCT
		Type : MpCncHomeSequenceTypeEnum := mpCNC_HOME_ALL_TOGETHER; (*Type of homing*)
		Axis1 : MpCnc3AxisHomeSequenceEnum := mpCNC_3AXIS_HOME_FIRST; (*Order of axis 1*)
		Axis2 : MpCnc3AxisHomeSequenceEnum := mpCNC_3AXIS_HOME_SECOND; (*Order of axis 2*)
		Axis3 : MpCnc3AxisHomeSequenceEnum := mpCNC_3AXIS_HOME_THIRD; (*Order of axis 3*)
	END_STRUCT;
	MpCnc2AxisHomeSequenceType : 	STRUCT
		Type : MpCncHomeSequenceTypeEnum := mpCNC_HOME_ALL_TOGETHER; (*Type of homing*)
		Axis1 : MpCnc2AxisHomeSequenceEnum := mpCNC_2AXIS_HOME_FIRST; (*Order of axis 1*)
		Axis2 : MpCnc3AxisHomeSequenceEnum := mpCNC_2AXIS_HOME_SECOND; (*Order of axis 2*)
	END_STRUCT;
	MpCnc5AxisConfigType : 	STRUCT
		CncName : STRING[20] := 'Generic'; (*CNC System name*)
		HomeSequence : MpCnc5AxisHomeSequenceType; (*Home sequence definition*)
	END_STRUCT;
	MpCnc4AxisConfigType : 	STRUCT
		CncName : STRING[20] := 'Generic'; (*CNC System name*)
		HomeSequence : MpCnc4AxisHomeSequenceType; (*Home sequence definition*)
	END_STRUCT;
	MpCnc3AxisConfigType : 	STRUCT
		CncName : STRING[20] := 'Generic'; (*CNC System name*)
		HomeSequence : MpCnc3AxisHomeSequenceType; (*Home sequence definition*)
	END_STRUCT;
	MpCnc2AxisConfigType : 	STRUCT
		CncName : STRING[20] := 'Generic'; (*CNC System name*)
		HomeSequence : MpCnc2AxisHomeSequenceType; (*Home sequence definition*)
	END_STRUCT;
	MpCncDiagType : 	STRUCT  (*Definiition of configuration diagnostic*)
		StatusID : MpCncStatusIDType; (*StatusID evaluation*)
	END_STRUCT;
	MpCncInfoType : 	STRUCT  (*Definition of MpCnc informational structure*)
		Diag : MpCncDiagType; (*Additional diagnostic information*)
	END_STRUCT;
	MpCnc2AxisCoordNameEnum :
		( (*Axis index definition*)
		mpCNC_2AXIS_TCP_X := 0, (*Cartesian X coordinate*)
		mpCNC_2AXIS_TCP_Y := 1 (*Cartesian Y coordinate*)
		);
	MpCnc3AxisCoordNameEnum :
		( (*Axis index definition*)
		mpCNC_3AXIS_TCP_X := 0, (*Cartesian X coordinate*)
		mpCNC_3AXIS_TCP_Y := 1, (*Cartesian Y coordinate*)
		mpCNC_3AXIS_TCP_Z := 2 (*Cartesian Z coordinate*)
		);
	MpCnc4AxisCoordNameEnum :
		( (*Axis index definition*)
		mpCNC_4AXIS_TCP_X := 0, (*Cartesian X coordinate*)
		mpCNC_4AXIS_TCP_Y := 1, (*Cartesian Y coordinate*)
		mpCNC_4AXIS_TCP_Z := 2, (*Cartesian Z coordinate*)
		mpCNC_4AXIS_TCP_C := 3 (*Cartesian C orientation*)
		);
	MpCnc5AxisCoordNameEnum :
		( (*Axis index definition*)
		mpCNC_5AXIS_TCP_X := 0, (*Cartesian X coordinate*)
		mpCNC_5AXIS_TCP_Y := 1, (*Cartesian Y coordinate*)
		mpCNC_5AXIS_TCP_Z := 2, (*Cartesian Z coordinate*)
		mpCNC_5AXIS_TCP_B := 3, (*Cartesian B orientation*)
		mpCNC_5AXIS_TCP_C := 4 (*Cartesian C orientation*)
		);
	MpCncDiagExtType : 	STRUCT
		StatusID : MpCncStatusIDType; (*StatusID diagnostic structure *)
		Internal : MpCncInternalIDType; (*Internal error diagnostic structure*)
	END_STRUCT;
	MpCncTableType : 	STRUCT  (*Tool / zero point offset information*)
		TableName : STRING[255]; (*Name of the table*)
		Index : UINT; (*Index of the selected table*)
	END_STRUCT;
	MpCncRestartInfoType : 	STRUCT  (*Restart information structure*)
		Phase : MpCncRestartPhaseEnum := mpCNC_RESTART_INACTIVE; (*Restart phase*)
		WaitingForContinue : BOOL; (*CNC System waiting for "Continue" command before initiating the restart*)
		Data : MpCncRestartDataType; (*Restart data*)
	END_STRUCT;
	MpCncRestartDataType : 	STRUCT
		AxesPosition : ARRAY[0..14]OF LREAL; (*Axes position for repositioning*)
		ProgramName : STRING[255]; (*Aborted Program Name*)
		PathPosition : LREAL; (*Path position during abort*)
		LineNumber : UDINT; (*Line number where program was aborted*)
		BlockNumber : UDINT; (*Block number where program was aborted*)
	END_STRUCT;
	MpCnc5AxisInfoType : 	STRUCT  (*Info structure containing additional information about currently runnning component*)
		AxesLinked : BOOL; (*TRUE as soon as MpAxis is connected to the CNC system*)
		AxesReady : BOOL; (*TRUE as soon as MpAxis is operational (ready to be switched on)*)
		Jogging : BOOL; (*TRUE if the CNC system is jogging*)
		Program : MpCncProgramInfoType; (*Information about the current movement*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Interrupt : MpCncInterruptEnum; (*Indicates reason for the interruption*)
		Restart : MpCncRestartInfoType; (*Describes the restart behavior*)
		PLCopenState : MpCncPLCopenStateEnum; (*PLCopen state of a group*)
		Diag : MpCncDiagExtType; (*Information about internal errors*)
	END_STRUCT;
	MpCnc4AxisInfoType : 	STRUCT  (*Info structure containing additional information about currently runnning component*)
		AxesLinked : BOOL; (*TRUE as soon as MpAxis is connected to the CNC system*)
		AxesReady : BOOL; (*TRUE as soon as MpAxis is operational (ready to be switched on)*)
		Jogging : BOOL; (*TRUE if the CNC system is jogging*)
		Program : MpCncProgramInfoType; (*Information about the current movement*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Interrupt : MpCncInterruptEnum; (*Indicates reason for the interruption*)
		Restart : MpCncRestartInfoType; (*Describes the restart behavior*)
		PLCopenState : MpCncPLCopenStateEnum; (*PLCopen state of a group*)
		Diag : MpCncDiagExtType; (*Information about internal errors*)
	END_STRUCT;
	MpCnc3AxisInfoType : 	STRUCT  (*Info structure containing additional information about currently runnning component*)
		AxesLinked : BOOL; (*TRUE as soon as MpAxis is connected to the CNC system*)
		AxesReady : BOOL; (*TRUE as soon as MpAxis is operational (ready to be switched on)*)
		Jogging : BOOL; (*TRUE if the CNC system is jogging*)
		Program : MpCncProgramInfoType; (*Information about the current movement*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Interrupt : MpCncInterruptEnum; (*Indicates reason for the interruption*)
		Restart : MpCncRestartInfoType; (*Describes the restart behavior*)
		PLCopenState : MpCncPLCopenStateEnum; (*PLCopen state of a group*)
		Diag : MpCncDiagExtType; (*Information about internal errors*)
	END_STRUCT;
	MpCnc2AxisInfoType : 	STRUCT  (*Info structure containing additional information about currently runnning component*)
		AxesLinked : BOOL; (*TRUE as soon as MpAxis is connected to the CNC system*)
		AxesReady : BOOL; (*TRUE as soon as MpAxis is operational (ready to be switched on)*)
		Jogging : BOOL; (*TRUE if the CNC system is jogging*)
		Program : MpCncProgramInfoType; (*Information about the current movement*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Interrupt : MpCncInterruptEnum; (*Indicates reason for the interruption*)
		Restart : MpCncRestartInfoType; (*Describes the restart behavior*)
		PLCopenState : MpCncPLCopenStateEnum; (*PLCopen state of a group*)
		Diag : MpCncDiagExtType; (*Information about internal errors*)
	END_STRUCT;
	MpCnc2AxisParType : 	STRUCT  (*Cnc 2Axis cnc movement parameters*)
		ProgramName : STRING[255]; (*Name of main program which should be executed*)
		InitProgramName : STRING[255]; (*Name of the program that should be executed before the main program*)
		Block : STRING[255]; (*Name of the block that should be executed*)
		Jog : MpCnc2AxisJogType; (*Velocity during jogging. Given as a system unit of the selected coordinate system [units/s]*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Restart : MpCncRestartType; (*Restart behavior*)
		AdditionalOverrides : MpCncAdditionalOverridesType; (*Override type*)
	END_STRUCT;
	MpCncRestartType : 	STRUCT  (*Cnc restart functionality configuration*)
		Name : STRING[255]; (*Name of last aborted program to be restarted*)
		Mode : MpCncRestartModeEnum; (*Mode of restart*)
		Parameter : LREAL := 0.0; (*Starting point definition for PathDistance or BlockNumber modes. Not used for Abort Line and Abort Point*)
		Reposition : MpCncRestartRepositionType; (*Axes repositioning parameters*)
		DisableRestartData : BOOL; (*Defines whether restart functionality should be used. If TRUE, it will not be used*)
	END_STRUCT;
	MpCncRestartModeEnum :
		( (*Definition of restart mode*)
		mpCNC_RESTART_BLOCK_NUMBER := 1, (*Restart at aborted block number*)
		mpCNC_RESTART_ABORT_LINE := 2, (*Restart at aborted line*)
		mpCNC_RESTART_ABORT_POINT := 3, (*Restart at aborted point*)
		mpCNC_RESTART_PATH_DISTANCE := 4 (*Restart at defined Path distance*)
		);
	MpCncRestartPhaseEnum :
		( (*Definition of restart mode*)
		mpCNC_RESTART_INACTIVE := 0, (*Restart not used	*)
		mpCNC_RESTART_SIMULATION_RUN := 1, (*Program in simulation run.*)
		mpCNC_RESTART_WAIT_AXES_REPOS := 2, (*Program waiting for axes to be positioned to the starting point*)
		mpCNC_RESTART_AXES_REPOS := 3, (*Active positioning of axes to the starting point*)
		mpCNC_RESTART_WAIT_REAL_RUN := 4, (*Program waiting for command to resume the program*)
		mpCNC_RESTART_REAL_RUN := 5 (*Program restart complete*)
		);
	MpCnc5AxisParType : 	STRUCT  (*Cnc 5Axis cnc movement parameters*)
		ProgramName : STRING[255]; (*Name of the program that should be executed*)
		InitProgramName : STRING[255]; (*Name of the program that should be executed before the main program*)
		Block : STRING[255]; (*Name of the block that should be executed*)
		Jog : MpCnc5AxisJogType; (*Velocity during jogging. Given as a system unit of the selected coordinate system [units/s]*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Restart : MpCncRestartType; (*Restart behavior*)
		AdditionalOverrides : MpCncAdditionalOverridesType; (*Override type*)
	END_STRUCT;
	MpCnc4AxisParType : 	STRUCT  (*Cnc 4Axis cnc movement parameters*)
		ProgramName : STRING[255]; (*Name of the program that should be executed*)
		InitProgramName : STRING[255]; (*Name of the program that should be executed before the main program*)
		Block : STRING[255]; (*Name of the block that should be executed*)
		Jog : MpCnc4AxisJogType; (*Velocity during jogging. Given as a system unit of the selected coordinate system [units/s]*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Restart : MpCncRestartType; (*Restart behavior*)
		AdditionalOverrides : MpCncAdditionalOverridesType; (*Override type*)
	END_STRUCT;
	MpCnc3AxisParType : 	STRUCT  (*Cnc 3Axis cnc movement parameters*)
		ProgramName : STRING[255]; (*Name of the program that should be executed*)
		InitProgramName : STRING[255]; (*Name of the program that should be executed before the main program*)
		Block : STRING[255]; (*Name of the block that should be executed*)
		Jog : MpCnc3AxisJogType; (*Velocity during jogging. Given as a system unit of the selected coordinate system [units/s]*)
		Tool : MpCncTableType; (*Tool table settings*)
		ZeroPointOffset : MpCncTableType; (*Zero point table settings (reserved for future use)*)
		Restart : MpCncRestartType; (*Restart behavior*)
		AdditionalOverrides : MpCncAdditionalOverridesType; (*Override type*)
	END_STRUCT;
	MpCncRestartRepositionType : 	STRUCT  (*Program start options type*)
		Type : MpCncRestartRepositionTypeEnum := mpCNC_RESTART_REPOSITION_USER; (*Defines type of repositioning*)
		ProgramName : STRING[255]; (*Program name for repositioning if PROGRAM type used*)
	END_STRUCT;
	MpCncRestartRepositionTypeEnum :
		( (*Program start type enum*)
		mpCNC_RESTART_REPOSITION_USER := 0, (*Repositioning is done by the user. E.g. Through MpAxisBasic MoveAbsolute commands*)
		mpCNC_RESTART_REPOSITION_PROGRAM := 1 (*Repositioning is done by the program defined in Reposition.Name paerameter*)
		);
	MpCncProgramStartTypeEnum :
		( (*Program start type enum*)
		mpCNC_PROGRAM_START_STANDARD := 0, (*Program start from begin*)
		mpCNC_PROGRAM_START_LINE_NUMBER := 1, (*Program start from defined line number*)
		mpCNC_PROGRAM_START_BLOCK_NUMBER := 2 (*Program start from defined block number*)
		);
	MpCncProgramStartModeEnum :
		( (*Program start mode option*)
		mpCNC_PROGRAM_START_NON_MODAL := 0 (*Non modal program start - all modal (coordinate offset, relative movement, etc) commands before program start point (line number, block number) are ignored*)
		);
	MpCncProgramInfoType : 	STRUCT  (*Detailed information about running program*)
		Name : STRING[255]; (*Name of the running program*)
		InitProgramName : STRING[255]; (*Name of the init program*)
		Runtime : REAL; (*Runtime of the current program [s]*)
		Feedrate : REAL; (*Current feed rate factor*)
		PathPosition : LREAL; (*Current path position in the running program [units]*)
		BlockMonitor : MpCncBlockMonitorType; (*Block monitor	*)
	END_STRUCT;
	MpCncBlockMonitorType : 	STRUCT  (*Block monitoring of currently running program*)
		LineNumber : UDINT; (*Current line number*)
		BlockNumber : UDINT; (*Current block number*)
		LineLast2 : STRING[100]; (*Next to last line in the robot program*)
		LineLast1 : STRING[100]; (*Last line in the robot program*)
		LineActual : STRING[100]; (*Current line in the robot program*)
		LineNext1 : STRING[100]; (*Next line in the robot program*)
		LineNext2 : STRING[100]; (*Line after the next line in the robot program*)
		RemainingDistance : LREAL; (*Distance remaining until the end of the block [units]*)
		Length : LREAL; (*Length of the path of the current block [units]*)
	END_STRUCT;
	MpCncInternalIDType : 	STRUCT
		ID : DINT;
		Severity : MpComSeveritiesEnum;
		Facility : MpComFacilitiesEnum;
		Code : UINT;
	END_STRUCT;
	MpCncInterruptEnum :
		( (*Definition of interrupt source*)
		mpCNC_NOT_INTERRUPTED := 0, (*The CNC machine has not been interrupted*)
		mpCNC_INTERRUPT_SINGLESTEP := 1, (*The CNC machine was interrupted by single-step mode*)
		mpCNC_INTERRUPT_FB := 2, (*The CNC machine was interrupted by a function block command*)
		mpCNC_INTERRUPT_INTERPRETER := 3, (*The CNC machine was interrupted by the interpreter (G170)*)
		mpCNC_INTERRUPT_MFUNCTION := 4, (*The CNC machine was interrupted by an M-code*)
		mpCNC_INTERRUPT_PROGRAM := 5 (*The CNC machine was interrupted by the CNC program (M00, M01)*)
		);
	MpCnc2AxisJogType : 	STRUCT
		Coord : MpCnc2AxisCoordNameEnum := mpCNC_2AXIS_TCP_X; (*The axis that should be jogged*)
		Velocity : REAL := 50.0; (*The velocity that should be used for jogging [units/s]*)
		Acceleration : REAL := 500.0; (*The acceleration that should be used for jogging [units/s²]*)
		Deceleration : REAL := 500.0; (*The deceleration that should be used for jogging [units/s²]*)
	END_STRUCT;
	MpCnc3AxisJogType : 	STRUCT
		Coord : MpCnc3AxisCoordNameEnum := mpCNC_3AXIS_TCP_X; (*The axis that should be jogged*)
		Velocity : REAL := 50.0; (*The velocity that should be used for jogging [units/s]*)
		Acceleration : REAL := 500.0; (*The acceleration that should be used for jogging [units/s²]*)
		Deceleration : REAL := 500.0; (*The deceleration that should be used for jogging [units/s²]*)
	END_STRUCT;
	MpCnc4AxisJogType : 	STRUCT
		Coord : MpCnc4AxisCoordNameEnum := (0); (*The axis that should be jogged*)
		Velocity : REAL := 50.0; (*The velocity that should be used for jogging [units/s]*)
		Acceleration : REAL := 500.0; (*The acceleration that should be used for jogging [units/s²]*)
		Deceleration : REAL := 500.0; (*The deceleration that should be used for jogging [units/s²]*)
	END_STRUCT;
	MpCnc5AxisJogType : 	STRUCT
		Coord : MpCnc5AxisCoordNameEnum := (0); (*The axis that should be jogged*)
		Velocity : REAL := 50.0; (*The velocity that should be used for jogging [units/s]*)
		Acceleration : REAL := 500.0; (*The acceleration that should be used for jogging [units/s²]*)
		Deceleration : REAL := 500.0; (*The deceleration that should be used for jogging [units/s²]*)
	END_STRUCT;
	MpCncPLCopenStateEnum :
		( (*PLCopen state*)
		mpCNC_DISABLED := 0, (*The CNC system is switched off*)
		mpCNC_STANDBY := 1, (*The CNC system is switched on*)
		mpCNC_HOMING := 2, (*The CNC system is actively homing*)
		mpCNC_MOVING := 3, (*At least one CNC axis is moving. This movement can be caused by a group movement command or a single-axis movement command*)
		mpCNC_ERRORSTOP := 4, (*The CNC system is in an error state. Movements are stopped*)
		mpCNC_STOPPING := 5 (*The CNC system is stopped*)
		);
	MpCncStatusIDType : 	STRUCT
		ID : MpCncErrorEnum; (*Error code for mapp component*)
		Severity : MpComSeveritiesEnum; (*Describes the type of information supplied by the status ID (success, information, warning, error)*)
		Code : UINT; (*Code for the status ID. This error number can be used to search for additional information in the help system*)
	END_STRUCT;
	MpCncAdditionalOverridesType : 	STRUCT
		Rapid : REAL := 100.0; (*Rapid override (0% to 100%)*)
		Feedrate : LREAL := 100.0; (*Feedrate override (0% to 42949600%)*)
	END_STRUCT;
END_TYPE
