
ACTION CncCyclicAction: 

	cnc ACCESS ADR(Cnc[n]);

	CASE Cnc[n].step OF
		W_AXES_READY:
		IF cnc.MpCnc.Info.AxesReady THEN
			//cnc.MpCnc.Power := TRUE;
			cnc.step := W_POWER_ON;
		END_IF

		W_POWER_ON:
		IF cnc.MpCnc.PowerOn THEN
			//cnc.MpCnc.Home := TRUE;
			cnc.step := W_AXES_HOMED;
		END_IF

		W_AXES_HOMED:
		IF cnc.MpCnc.IsHomed THEN
			cnc.step := W_COMMAND;
		END_IF

		W_COMMAND:
		IF cnc.MpCnc.Stop AND cnc.MpCnc.Stopped THEN
			cnc.MpCnc.Stop := FALSE;
		END_IF
		IF cnc.MpCnc.IsHomed THEN
			cnc.MpCnc.Home := FALSE;
		END_IF
		IF cnc.MpCnc.ErrorReset AND cnc.MpCnc.Error = FALSE THEN
			cnc.MpCnc.ErrorReset := FALSE;
		END_IF

	END_CASE




END_ACTION
