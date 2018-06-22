
FUNCTION GmcManagerInit : UINT
	VAR_INPUT
		sysInitPhase : DINT;
	END_VAR
END_FUNCTION

FUNCTION GetRegistryIf : UDINT	(*Get interface of GmcManager-Registry*)
END_FUNCTION

FUNCTION GetProcessingIf : UDINT	(*Get interface of GmcProcessing-service*)
END_FUNCTION

FUNCTION GmcGetEventLogName : UDINT	(*Get name of event log as string pointer*)
END_FUNCTION
