
PROGRAM _CYCLIC

	FOR n := 0 TO MAX_AXES_MINUS_ONE DO
		Axis[n].MpAxis();
	END_FOR

	FOR n := 0 TO MAX_CNC_MINUS_ONE DO
		Cnc[n].MpCnc();
		CncCyclicAction;

	END_FOR	 

	g_positionX := Cnc[0].MpCnc.X;
	g_positionY := Cnc[0].MpCnc.Y;

	FileHandling.fileManager();

	(* mapp logger *)
	Logger.UI();
	
	(* gmc logger *)
	ReadEventLogger;


	AlarmHandling.MpAlarmXCore();
	AlarmHandling.UIList();

	(* interface to visu *)
	IF NOT(Cnc[0].MpCnc.MoveProgram) THEN
		statusFlags.0 := 0;  (* stop *)
		statusFlags.1 := 0;
	ELSIF ABS(Cnc[0].MpCnc.Override) < 0.1 THEN
		statusFlags.0 := 1;  (* paused *)
		statusFlags.1 := 0;
	ELSE
		IF Cnc[0].MpCnc.Override > 0 THEN
			statusFlags.0 := 0;  (* start *)
			statusFlags.1 := 1;
		ELSE
			statusFlags.0 := 1;  (* back *)
			statusFlags.1 := 1;
		END_IF
	END_IF

	statusFlags.31 := Cnc[0].MpCnc.Error OR Axis[0].MpAxis.Error OR Axis[1].MpAxis.Error OR Axis[2].MpAxis.Error;

	

	

END_PROGRAM
