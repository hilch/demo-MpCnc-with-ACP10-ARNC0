TYPE
	ArncAxesGroup : GmcAxesGroup; (*Arnc Axes Group Data type; derived from GmcAxesGroup*)
	MCAxesGroupType_Arnc : ArncAxesGroup; (*AxesGroup Data type; I.e. alias of GmcAxesGroup*)
	MCArncFFCtrlParType : 	STRUCT 
		DisableAxis : ARRAY[0..14]OF BOOL; (*Exclude axis from feed forward control.*)
		UserAxis : ARRAY[0..14]OF UDINT; (*Axis reference of an alternative axis for feed forward control.*)
		UserParID : ARRAY[0..14]OF UINT; (*ACOPOS parameter ID for additional torque value.*)
		UserDynModel : UDINT; (*Adress of the dynamic model of the mechanics.*)
		RampCycles : UDINT; (*Task cycles to increase/decrease additive torque.*)
	END_STRUCT;
	
	MCArncDataSrcEnum :
	(
		mcARNC_DATA_SRC_MONITOR := 0,	(*Arnc0 Monitor*)
		mcARNC_DATA_SRC_OPTMOT_MONITOR := 1,	(*OptMot Monitor*)
		mcARNC_DATA_SRC_OPTMOTCONF_ONCE := 2	(*OptMot-Config data dump*)
	);
	
	MCArncSetGetModeEnum :
	(
		mcARNC_SG_MODE_SET := 0,	(*Set Data*)
		mcARNC_SG_MODE_GET 			(*Get Data*)
	);
END_TYPE