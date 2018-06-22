/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _GMCARNCGRP_
#define _GMCARNCGRP_

#include <GmcManager.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#if defined(_WIN32) || defined(__WINDOWS__) || defined(__MINGW32__) || defined(__CYGWIN__)
#if defined(BUILD_GMCARNCGRP)
#define DECLSPEC_GMCARNCGRP __declspec(dllexport)
#else
#define DECLSPEC_GMCARNCGRP __declspec(dllimport)
#endif
#else	/* not Windows */
#define DECLSPEC_GMCARNCGRP _BUR_PUBLIC
#endif

/* Datatypes and datatypes of function blocks */
typedef struct GmcAxesGroup ArncAxesGroup;
typedef ArncAxesGroup MCAxesGroupType_Arnc;

typedef struct MCArncFFCtrlParType
{
	plcbit DisableAxis[15];
	unsigned long UserAxis[15];
	unsigned short UserParID[15];
	unsigned long UserDynModel;
	unsigned long RampCycles;
} MCArncFFCtrlParType;

typedef enum MCArncDataSrcEnum
{
	mcARNC_DATA_SRC_MONITOR,
	mcARNC_DATA_SRC_OPTMOT_MONITOR,
	mcARNC_DATA_SRC_OPTMOTCONF_ONCE
} MCArncDataSrcEnum;

typedef enum MCArncSetGetModeEnum
{
	mcARNC_SG_MODE_SET,
	mcARNC_SG_MODE_GET
} MCArncSetGetModeEnum;

typedef struct MC_BR_GroupGetData_ARNC
{
	/* VAR_INPUT (analog) */
	MCAxesGroupType_Arnc* AxesGroup;
	MCArncDataSrcEnum DataSource;
	unsigned long DataAdr;
	/* VAR_OUTPUT (analog) */
	signed long ErrorID;
	/* VAR (analog) */
	struct MCInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	/* VAR_OUTPUT (digital) */
	plcbit Valid;
	plcbit Busy;
	plcbit Error;
} MC_BR_GroupGetData_ARNC_typ;

typedef struct MC_BR_MFunctionGroup_ARNC
{
	/* VAR_INPUT (analog) */
	MCAxesGroupType_Arnc* AxesGroup;
	plcstring Name[261];
	MCArncSetGetModeEnum Mode;
	MCExecutionModeEnum ExecutionMode;
	/* VAR_OUTPUT (analog) */
	signed long ErrorID;
	/* VAR (analog) */
	struct MCInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Execute;
	/* VAR_OUTPUT (digital) */
	plcbit Done;
	plcbit Busy;
	plcbit CommandAborted;
	plcbit Error;
} MC_BR_MFunctionGroup_ARNC_typ;

typedef struct MC_BR_ZeroPointTable_ARNC
{
	/* VAR_INPUT (analog) */
	MCAxesGroupType_Arnc* AxesGroup;
	plcstring Name[261];
	MCArncSetGetModeEnum Mode;
	MCExecutionModeEnum ExecutionMode;
	/* VAR_OUTPUT (analog) */
	signed long ErrorID;
	/* VAR (analog) */
	struct MCInternalType Internal;
	/* VAR_INPUT (digital) */
	plcbit Execute;
	/* VAR_OUTPUT (digital) */
	plcbit Done;
	plcbit Busy;
	plcbit CommandAborted;
	plcbit Error;
} MC_BR_ZeroPointTable_ARNC_typ;

/* Prototyping of functions and function blocks */
#ifdef __cplusplus
extern "C" {
#endif

_BUR_PUBLIC void MC_BR_GroupGetData_ARNC(struct MC_BR_GroupGetData_ARNC* inst);
_BUR_PUBLIC void MC_BR_MFunctionGroup_ARNC(struct MC_BR_MFunctionGroup_ARNC* inst);
_BUR_PUBLIC void MC_BR_ZeroPointTable_ARNC(struct MC_BR_ZeroPointTable_ARNC* inst);

#ifdef __cplusplus
} // End of C-Linkage
#endif
#endif /* _GMCARNCGRP_ */

