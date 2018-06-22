
PROGRAM _CYCLIC
	MC_BR_MFunction_0(AxesGroup := ADR(gCnc1), Enable := TRUE, MFunction := 7);
	IF MC_BR_MFunction_0.Value THEN
		MC_BR_MFunction_0.Reset := TRUE;
	ELSE
		MC_BR_MFunction_0.Reset := FALSE;
	END_IF

	MC_BR_MFunction_1(AxesGroup := ADR(gCnc1), Enable := TRUE, MFunction := 8);
	IF MC_BR_MFunction_1.Value THEN
		MC_BR_MFunction_1.Reset := TRUE;
	ELSE
		MC_BR_MFunction_1.Reset := FALSE;
	END_IF
	 
END_PROGRAM
