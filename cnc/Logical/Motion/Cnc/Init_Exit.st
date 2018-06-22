
PROGRAM _INIT

	(* Axes *)
	Axis[0].MpAxis.Axis := ADR(gAxisX);
	Axis[0].MpAxis.MpLink := ADR(gMpAxisX);

	Axis[1].MpAxis.Axis := ADR(gAxisY);
	Axis[1].MpAxis.MpLink := ADR(gMpAxisY);

	Axis[2].MpAxis.Axis := ADR(gAxisA);
	Axis[2].MpAxis.MpLink := ADR(gMpAxisA);

	FOR n := 0 TO MAX_AXES_MINUS_ONE DO
		Axis[n].MpAxisParameter.Jog.LowerLimit := -1000;
		Axis[n].MpAxisParameter.Jog.UpperLimit := 1000;
		Axis[n].MpAxisParameter.Jog.Acceleration := 20;
		Axis[n].MpAxisParameter.Jog.Deceleration := 20;
		Axis[n].MpAxisParameter.Jog.Velocity := 1;
		Axis[n].MpAxis.Parameters := ADR(Axis[n].MpAxisParameter);
		Axis[n].MpAxis.Enable := TRUE;
	END_FOR
	 

	(* Cnc *)
	Cnc[0].MpCnc.AxesGroup := ADR(gCnc1);
	Cnc[0].MpCnc.MpLink := ADR(gMpCnc1);
	Cnc[0].MpCnc.Enable := TRUE;

	FOR n := 0 TO MAX_CNC_MINUS_ONE DO
		Cnc[0].step := W_AXES_READY;
		Cnc[0].MpCnc.Override := 100;
		Cnc[n].MpCnc.Parameters := ADR(Cnc[n].MpCncParameter);
	END_FOR

	Cnc[0].MpCncParameter.ProgramName := 'Micky';


	(* File Handling *)
	FileHandling.fileManager.MpLink := ADR(gCncFileManagerUI);
	FileHandling.fileManager.UISetup.FileListSize := 5;
	FileHandling.fileManager.UISetup.FileListScrollWindow := 1;
	FileHandling.UIConnect.DeviceList.DeviceNames[0] := 'CNC_PrgDir';
	FileHandling.fileManager.UIConnect := ADR(FileHandling.UIConnect);
	FileHandling.fileManager.Enable := TRUE;
	

	(* mapp Logging *)
	Logger.UI.MpLink := ADR(gMpCnc1);
	Logger.UI.Scope := mpCOM_CONFIG_SCOPE_BRANCH;
	Logger.UI.Enable := TRUE;
	Logger.UI.EntryFilter := 'Severity=ERROR';
	Logger.UI.UISetup.LoggerListSize := 1;
	Logger.UI.UISetup.LoggerScrollWindow := 1;
	Logger.UI.UIConnect := ADR(Logger.UIConnect);


	(* GMC Logging via ArEventLog *)
	Logger.eventLog.ArEventLogGetIdent.Name := 'GMC';

	(* Alarm Handling *)
	AlarmHandling.MpAlarmXCore.MpLink := ADR(gAlarmXCore);
	AlarmHandling.MpAlarmXCore.Enable := TRUE;
	AlarmHandling.UIList.MpLink := ADR(gAlarmXCore);
	AlarmHandling.UIList.Enable := TRUE;
	AlarmHandling.UIList.UISetup.AlarmListScrollWindow := 1;
	AlarmHandling.UIList.UISetup.AlarmListSize := 20;
	AlarmHandling.UIList.UIConnect := ADR(AlarmHandling.UIConnect);


END_PROGRAM



PROGRAM _EXIT
	FOR n := 0 TO MAX_CNC_MINUS_ONE DO
		Cnc[n].MpCnc( Enable := FALSE );
	END_FOR
	FOR n := 0 TO MAX_AXES_MINUS_ONE DO
		Axis[n].MpAxis( Enable := FALSE );
	END_FOR
	Logger.UI( Enable := FALSE );
	AlarmHandling.MpAlarmXCore( Enable := FALSE );
	AlarmHandling.UIList( Enable := FALSE );

	Logger.eventLog.ArEventLogGetIdent( Execute := FALSE );
END_PROGRAM