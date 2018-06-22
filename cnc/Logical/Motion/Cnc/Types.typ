
TYPE
	FileHandlingType : 	STRUCT 
		fileManager : MpFileManagerUI;
		UIConnect : MpFileManagerUIConnectType;
	END_STRUCT;
	AlarmHandlingType : 	STRUCT 
		MpAlarmXCore : MpAlarmXCore;
		UIConnect : MpAlarmXListUIConnectType;
		UIList : MpAlarmXListUI;
	END_STRUCT;
	EventLoggingEntryType : 	STRUCT 
		dt : DATE_AND_TIME;
		TimeStamp : ArEventLogTimeStampType;
		RecordID : ArEventLogRecordIDType;
		EventID : DINT;
		text : STRING[255];
	END_STRUCT;
	EventLoggingType : 	STRUCT 
		step : USINT;
		index : INT;
		maxIndex : INT;
		entries : ARRAY[0..19]OF EventLoggingEntryType;
		ArEventLogGetIdent : ArEventLogGetIdent;
		ArEventLogGetLatestRecordID : ArEventLogGetLatestRecordID;
		ArEventLogGetPreviousRecordID : ArEventLogGetPreviousRecordID;
		ArEventLogRead : ArEventLogRead;
		ArEventLogReadAddData : ArEventLogReadAddData;
	END_STRUCT;
	LoggingType : 	STRUCT 
		UIConnect : MpComLoggerUIConnectType;
		UI : MpComLoggerUI;
		eventLog : EventLoggingType;
	END_STRUCT;
	CncType : 	STRUCT 
		MpCnc : MpCnc3Axis;
		MpCncParameter : MpCnc3AxisParType;
		step : UINT;
	END_STRUCT;
	AxisType : 	STRUCT 
		MpAxis : MpAxisBasic;
		MpAxisParameter : MpAxisBasicParType;
	END_STRUCT;
END_TYPE
