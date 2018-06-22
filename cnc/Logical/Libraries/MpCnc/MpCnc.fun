
FUNCTION_BLOCK MpCnc2Axis (*Control a CNC system with 2 axes*) (* $GROUP=mapp,$CAT=2-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc2.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Connection to mapp*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enable the function block*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Resets function block errors*) (* *) (*#PAR#;*)
		Parameters : REFERENCE TO MpCnc2AxisParType; (*Function block parameters*) (* *) (*#PAR#; *)
		Update : BOOL; (*Update command for the parameters*) (* *) (*#PAR#; *)
		AxesGroup : UDINT; (*Pointer to the PLCopen P4 axis group*) (* *) (*#PAR#;*)
		Override : REAL; (*CNC velocity override (-100% to 100%) *) (* *) (*#CYC#OPT#;*)
		Power : BOOL; (*Switches on the CNC axes*) (* *) (*#CMD#;*)
		Home : BOOL; (*Homes the CNC axes*) (* *) (*#CMD#;*)
		MoveProgram : BOOL; (*Starts a CNC program*) (* *) (*#CMD#;*)
		Interrupt : BOOL; (*Interrupts a CNC program*) (* *) (*#CMD#;*)
		Continue : BOOL; (*Resumes a CNC program*) (* *) (*#CMD#;*)
		Stop : BOOL; (*Stops a CNC program*) (* *) (*#CMD#;*)
		JogPositive : BOOL; (*Jogs the CNC axis/axes in the positive direction*) (* *) (*#CMD#OPT#;*)
		JogNegative : BOOL; (*Jogs the CNC axis/axes in the negative direction*) (* *) (*#CMD#OPT#;*)
		MoveBlock : BOOL; (*Moves the CNC system to a defined point*) (* *) (*#CMD#OPT#;*)
		SingleStep : BOOL; (*Controls the CNC system in single-step mode*) (* *) (*#CMD#OPT#;*)
		Restart : BOOL; (*Restart after an error or complete stop*) (* *) (*#CMD#OPT#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Indicates whether the function block is active*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates that the function block is in an error state or a command was not executed correctly*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Status information about the function block*) (* *) (*#PAR#; *)
		UpdateDone : BOOL; (*Parameter update completed*) (* *) (*#PAR#;*)
		X : LREAL; (*Current x-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Y : LREAL; (*Current y-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		PathVelocity : LREAL; (*Current path velocity [units/s]*) (* *) (*#CYC#;*)
		CommandBusy : BOOL; (*Function block currently executing command*) (* *) (*#CMD#OPT#;*)
		CommandAborted : BOOL; (*Function block interrupted while executing a command*) (* *) (*#CMD#OPT#;*)
		PowerOn : BOOL; (*CNC axes are switched on*) (* *) (*#CMD#;*)
		IsHomed : BOOL; (*CNC axes are homed*) (* *) (*#CMD#;*)
		MoveActive : BOOL; (*CNC system movement active (program, linear, direct)*) (* *) (*#CMD#;*)
		MoveInterrupted : BOOL; (*Movement interrupted*) (* *) (*#CMD#;*)
		InMotion : BOOL; (*At least one of the CNC system's axes is performing a movement*) (* *) (*#CMD#;*)
		MoveDone : BOOL; (*Movement completed (only for "MoveProgram", "MoveLinear" and "MoveDirect")*) (* *) (*#CMD#;*)
		Stopped : BOOL; (*Movement stopped*) (* *) (*#CMD#;*)
		SingleStepActive : BOOL; (*Single-step mode active*) (* *) (*#CMD#OPT#;*)
		Info : MpCnc2AxisInfoType; (*Additional information about the component*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType; (*Internal data*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc3Axis (*Control a CNC system with 3 axes*) (* $GROUP=mapp,$CAT=3-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc3.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Connection to mapp*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enable the function block*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Reset function block errors*) (* *) (*#PAR#;*)
		Parameters : REFERENCE TO MpCnc3AxisParType; (*Function block parameters*) (* *) (*#PAR#; *)
		Update : BOOL; (*Update command for the parameters*) (* *) (*#PAR#; *)
		AxesGroup : UDINT; (*Pointer to the PLCopen P4 axis group*) (* *) (*#PAR#;*)
		Override : REAL; (*CNC velocity override (-100% to 100%) *) (* *) (*#CYC#OPT#;*)
		Power : BOOL; (*Switches on the CNC axes*) (* *) (*#CMD#;*)
		Home : BOOL; (*Homes the CNC axes*) (* *) (*#CMD#;*)
		MoveProgram : BOOL; (*Starts a CNC program*) (* *) (*#CMD#;*)
		Interrupt : BOOL; (*Interrupts a CNC program*) (* *) (*#CMD#;*)
		Continue : BOOL; (*Resumes a CNC program*) (* *) (*#CMD#;*)
		Stop : BOOL; (*Stops a CNC program*) (* *) (*#CMD#;*)
		Restart : BOOL; (*Restart after an error or complete stop *) (* *) (*#CMD#;*)
		JogPositive : BOOL; (*Jogs the CNC axis/axes in the positive direction*) (* *) (*#CMD#OPT#;*)
		JogNegative : BOOL; (*Jogs the CNC axis/axes in the negative direction*) (* *) (*#CMD#OPT#;*)
		MoveBlock : BOOL; (*Moves the CNC system to a defined point*) (* *) (*#CMD#OPT#;*)
		SingleStep : BOOL; (*Controls the CNC system in single-step mode*) (* *) (*#CMD#OPT#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Indicates whether the function block is active*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates that the function block is in an error state or a command was not executed correctly*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Status information about the function block*) (* *) (*#PAR#;*)
		UpdateDone : BOOL; (*Parameter update completed*) (* *) (*#PAR#;*)
		X : LREAL; (*Current x-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Y : LREAL; (*Current y-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Z : LREAL; (*Current z-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		PathVelocity : LREAL; (*Current path velocity [units/s]*) (* *) (*#CYC#;*)
		CommandBusy : BOOL; (*Function block currently executing command*) (* *) (*#CMD#OPT#;*)
		CommandAborted : BOOL; (*Function block interrupted while executing a command*) (* *) (*#CMD#OPT#;*)
		PowerOn : BOOL; (*CNC axes are switched on*) (* *) (*#CMD#;*)
		IsHomed : BOOL; (*CNC axes are homed*) (* *) (*#CMD#;*)
		MoveActive : BOOL; (*CNC system movement active (program, linear, direct) *) (* *) (*#CMD#;*)
		MoveInterrupted : BOOL; (*Movement interrupted*) (* *) (*#CMD#;*)
		InMotion : BOOL; (*At least one of the CNC system's axes is performing a movement*) (* *) (*#CMD#;*)
		MoveDone : BOOL; (*Movement completed (only for "MoveProgram", "MoveLinear" and "MoveDirect")*) (* *) (*#CMD#;*)
		Stopped : BOOL; (*Movement stopped*) (* *) (*#CMD#;*)
		SingleStepActive : BOOL; (*Single-step mode active*) (* *) (*#CMD#OPT#;*)
		Info : MpCnc3AxisInfoType; (*Additional information about the component*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType; (*Internal data*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc4Axis (*Control a CNC system with 4 axes*) (* $GROUP=mapp,$CAT=4-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc4.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Connection to mapp*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enable the function block*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Reset function block errors*) (* *) (*#PAR#;*)
		Parameters : REFERENCE TO MpCnc4AxisParType; (*Function block parameters*) (* *) (*#PAR#; *)
		Update : BOOL; (*Update command for the parameters*) (* *) (*#PAR#; *)
		AxesGroup : UDINT; (*Pointer to the PLCopen P4 axis group*) (* *) (*#PAR#;*)
		Override : REAL; (*CNC velocity override (-100% to 100%) *) (* *) (*#CYC#OPT#;*)
		Power : BOOL; (*Switches on the CNC axes*) (* *) (*#CMD#;*)
		Home : BOOL; (*Homes the CNC axes*) (* *) (*#CMD#;*)
		MoveProgram : BOOL; (*Starts a CNC program*) (* *) (*#CMD#;*)
		Interrupt : BOOL; (*Interrupts a CNC program*) (* *) (*#CMD#;*)
		Continue : BOOL; (*Resumes a CNC program*) (* *) (*#CMD#;*)
		Stop : BOOL; (*Stops a CNC program*) (* *) (*#CMD#;*)
		Restart : BOOL; (*Restart after an error or complete stop *) (* *) (*#CMD#;*)
		JogPositive : BOOL; (*Jogs the CNC axis/axes in the positive direction*) (* *) (*#CMD#OPT#;*)
		JogNegative : BOOL; (*Jogs the CNC axis/axes in the negative direction*) (* *) (*#CMD#OPT#;*)
		MoveBlock : BOOL; (*Moves the CNC system to a defined point*) (* *) (*#CMD#OPT#;*)
		SingleStep : BOOL; (*Controls the CNC system in single-step mode*) (* *) (*#CMD#OPT#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Indicates whether the function block is active*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates that the function block is in an error state or a command was not executed correctly*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Status information about the function block*) (* *) (*#PAR#;*)
		UpdateDone : BOOL; (*Parameter update completed*) (* *) (*#PAR#;*)
		X : LREAL; (*Current x-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Y : LREAL; (*Current y-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Z : LREAL; (*Current z-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		C : LREAL; (*Current c-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		PathVelocity : LREAL; (*Current path velocity [units/s]*) (* *) (*#CYC#;*)
		CommandBusy : BOOL; (*Function block currently executing command*) (* *) (*#CMD#OPT#;*)
		CommandAborted : BOOL; (*Function block interrupted while executing a command*) (* *) (*#CMD#OPT#;*)
		PowerOn : BOOL; (*CNC axes are switched on*) (* *) (*#CMD#;*)
		IsHomed : BOOL; (*CNC axes are homed*) (* *) (*#CMD#;*)
		MoveActive : BOOL; (*CNC system movement active (program, linear, direct) *) (* *) (*#CMD#;*)
		MoveInterrupted : BOOL; (*Movement interrupted*) (* *) (*#CMD#;*)
		InMotion : BOOL; (*At least one of the CNC system's axes is performing a movement*) (* *) (*#CMD#;*)
		MoveDone : BOOL; (*Movement completed (only for "MoveProgram", "MoveLinear" and "MoveDirect")*) (* *) (*#CMD#;*)
		Stopped : BOOL; (*Movement stopped*) (* *) (*#CMD#;*)
		SingleStepActive : BOOL; (*Single-step mode active*) (* *) (*#CMD#OPT#;*)
		Info : MpCnc4AxisInfoType; (*Additional information about the component*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType; (*Internal data*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc5Axis (*Control a CNC system with 5 axes*) (* $GROUP=mapp,$CAT=5-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc5.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Connection to mapp*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enable the function block*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Reset function block errors*) (* *) (*#PAR#;*)
		Parameters : REFERENCE TO MpCnc5AxisParType; (*Function block parameters*) (* *) (*#PAR#; *)
		Update : BOOL; (*Update command for the parameters*) (* *) (*#PAR#; *)
		AxesGroup : UDINT; (*Pointer to the PLCopen P4 axis group*) (* *) (*#PAR#;*)
		Override : REAL; (*CNC velocity override (-100% to 100%) *) (* *) (*#CYC#OPT#;*)
		Power : BOOL; (*Switches on the CNC axes*) (* *) (*#CMD#;*)
		Home : BOOL; (*Homes the CNC axes*) (* *) (*#CMD#;*)
		MoveProgram : BOOL; (*Starts a CNC program*) (* *) (*#CMD#;*)
		Interrupt : BOOL; (*Interrupts a CNC program*) (* *) (*#CMD#;*)
		Continue : BOOL; (*Resumes a CNC program*) (* *) (*#CMD#;*)
		Stop : BOOL; (*Stops a CNC program*) (* *) (*#CMD#;*)
		Restart : BOOL; (*Restart after an error or complete stop *) (* *) (*#CMD#;*)
		JogPositive : BOOL; (*Jogs the CNC axis/axes in the positive direction*) (* *) (*#CMD#OPT#;*)
		JogNegative : BOOL; (*Jogs the CNC axis/axes in the negative direction*) (* *) (*#CMD#OPT#;*)
		MoveBlock : BOOL; (*Moves the CNC system to a defined point*) (* *) (*#CMD#OPT#;*)
		SingleStep : BOOL; (*Controls the CNC system in single-step mode*) (* *) (*#CMD#OPT#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Indicates whether the function block is active*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates that the function block is in an error state or a command was not executed correctly*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Status information about the function block*) (* *) (*#PAR#;*)
		UpdateDone : BOOL; (*Parameter update completed*) (* *) (*#PAR#;*)
		X : LREAL; (*Current x-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Y : LREAL; (*Current y-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		Z : LREAL; (*Current z-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		B : LREAL; (*Current b-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		C : LREAL; (*Current c-position in the machine's coordinate system [units]*) (* *) (*#CYC#;*)
		PathVelocity : LREAL; (*Current path velocity [units/s]*) (* *) (*#CYC#;*)
		CommandBusy : BOOL; (*Function block currently executing command*) (* *) (*#CMD#OPT#;*)
		CommandAborted : BOOL; (*Function block interrupted while executing a command*) (* *) (*#CMD#OPT#;*)
		PowerOn : BOOL; (*CNC axes are switched on*) (* *) (*#CMD#;*)
		IsHomed : BOOL; (*CNC axes are homed*) (* *) (*#CMD#;*)
		MoveActive : BOOL; (*CNC system movement active (program, linear, direct) *) (* *) (*#CMD#;*)
		MoveInterrupted : BOOL; (*Movement interrupted*) (* *) (*#CMD#;*)
		InMotion : BOOL; (*At least one of the CNC system's axes is performing a movement*) (* *) (*#CMD#;*)
		MoveDone : BOOL; (*Movement completed (only for "MoveProgram", "MoveLinear" and "MoveDirect")*) (* *) (*#CMD#;*)
		Stopped : BOOL; (*Movement stopped*) (* *) (*#CMD#;*)
		SingleStepActive : BOOL; (*Single-step mode active*) (* *) (*#CMD#OPT#;*)
		Info : MpCnc5AxisInfoType; (*Additional information about the component*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType; (*Internal data*)
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc2AxisConfig (*Configuration for 2 axis CNC*) (* $GROUP=mapp,$CAT=2-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc2.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Incoming communication handle (mapp standard interface)*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enables/Disables the function block (mapp standard interface)*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Resets all function block errors (mapp standard interface)*) (* *) (*#PAR#;*)
		Configuration : REFERENCE TO MpCnc2AxisConfigType; (*The component configuration structure.*) (* *) (*#PAR#;*)
		Load : BOOL; (*Loads the component configuration.*) (* *) (*#CMD#;*)
		Save : BOOL; (*Saves the component configuration.*) (* *) (*#CMD#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Function block is active (mapp standard interface)*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates an error (mapp standard interface)*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Error/Status information (mapp standard interface)*) (* *) (*#PAR#;*)
		CommandBusy : BOOL; (*True if a command is being executed.*) (* *) (*#CMD#OPT#;*)
		CommandDone : BOOL; (*True if a command finshed successfully.*) (* *) (*#CMD#;*)
		Info : MpCncInfoType; (*Diagnostic information.*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc3AxisConfig (*Configuration for 3 axis CNC*) (* $GROUP=mapp,$CAT=3-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc3.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Incoming communication handle (mapp standard interface)*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enables/Disables the function block (mapp standard interface)*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Resets all function block errors (mapp standard interface)*) (* *) (*#PAR#;*)
		Configuration : REFERENCE TO MpCnc3AxisConfigType; (*The component configuration structure.*) (* *) (*#PAR#;*)
		Load : BOOL; (*Loads the component configuration.*) (* *) (*#CMD#;*)
		Save : BOOL; (*Saves the component configuration.*) (* *) (*#CMD#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Function block is active (mapp standard interface)*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates an error (mapp standard interface)*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Error/Status information (mapp standard interface)*) (* *) (*#PAR#;*)
		CommandBusy : BOOL; (*True if a command is being executed.*) (* *) (*#CMD#OPT#;*)
		CommandDone : BOOL; (*True if a command finshed successfully.*) (* *) (*#CMD#;*)
		Info : MpCncInfoType; (*Diagnostic information.*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc4AxisConfig (*Configuration for 4 axis CNC*) (* $GROUP=mapp,$CAT=4-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc4.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Incoming communication handle (mapp standard interface)*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enables/Disables the function block (mapp standard interface)*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Resets all function block errors (mapp standard interface)*) (* *) (*#PAR#;*)
		Configuration : REFERENCE TO MpCnc4AxisConfigType; (*The component configuration structure.*) (* *) (*#PAR#;*)
		Load : BOOL; (*Loads the component configuration.*) (* *) (*#CMD#;*)
		Save : BOOL; (*Saves the component configuration.*) (* *) (*#CMD#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Function block is active (mapp standard interface)*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates an error (mapp standard interface)*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Error/Status information (mapp standard interface)*) (* *) (*#PAR#;*)
		CommandBusy : BOOL; (*True if a command is being executed.*) (* *) (*#CMD#OPT#;*)
		CommandDone : BOOL; (*True if a command finshed successfully.*) (* *) (*#CMD#;*)
		Info : MpCncInfoType; (*Diagnostic information.*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType;
	END_VAR
END_FUNCTION_BLOCK

FUNCTION_BLOCK MpCnc5AxisConfig (*Configuration for 5 axis CNC*) (* $GROUP=mapp,$CAT=5-Axis CNC,$GROUPICON=Icon_mapp.png,$CATICON=Icon_MpCnc5.png *)
	VAR_INPUT
		MpLink : REFERENCE TO MpComIdentType; (*Incoming communication handle (mapp standard interface)*) (* *) (*#PAR#;*)
		Enable : BOOL; (*Enables/Disables the function block (mapp standard interface)*) (* *) (*#PAR#;*)
		ErrorReset : BOOL; (*Resets all function block errors (mapp standard interface)*) (* *) (*#PAR#;*)
		Configuration : REFERENCE TO MpCnc5AxisConfigType; (*The component configuration structure.*) (* *) (*#PAR#;*)
		Load : BOOL; (*Loads the component configuration.*) (* *) (*#CMD#;*)
		Save : BOOL; (*Saves the component configuration.*) (* *) (*#CMD#;*)
	END_VAR
	VAR_OUTPUT
		Active : BOOL; (*Function block is active (mapp standard interface)*) (* *) (*#PAR#;*)
		Error : BOOL; (*Indicates an error (mapp standard interface)*) (* *) (*#PAR#;*)
		StatusID : DINT; (*Error/Status information (mapp standard interface)*) (* *) (*#PAR#;*)
		CommandBusy : BOOL; (*True if a command is being executed.*) (* *) (*#CMD#OPT#;*)
		CommandDone : BOOL; (*True if a command finshed successfully.*) (* *) (*#CMD#;*)
		Info : MpCncInfoType; (*Diagnostic information.*) (* *) (*#CMD#;*)
	END_VAR
	VAR
		Internal : {REDUND_UNREPLICABLE} MpComInternalDataType;
	END_VAR
END_FUNCTION_BLOCK
