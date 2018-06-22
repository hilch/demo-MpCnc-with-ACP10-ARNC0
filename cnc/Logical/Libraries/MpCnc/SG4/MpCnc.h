/* Automation Studio generated header file */
/* Do not edit ! */
/* MpCnc 1.65.0 */

#ifndef _MPCNC_
#define _MPCNC_
#ifdef __cplusplus
extern "C" 
{
#endif
#ifndef _MpCnc_VERSION
#define _MpCnc_VERSION 1.65.0
#endif

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#ifdef _SG4
		#include "GmcManager.h"
		#include "GmcGrpAPI.h"
		#include "NcGlobal.h"
		#include "brsystem.h"
		#include "MpBase.h"
		#include "MpCom.h"
		#include "MpAxis.h"
		#include "GmcArncGrp.h"
#endif

#ifdef _SG3
		#include "GmcManager.h"
		#include "GmcGrpAPI.h"
		#include "NcGlobal.h"
		#include "brsystem.h"
		#include "MpBase.h"
		#include "MpCom.h"
		#include "MpAxis.h"
		#include "GmcArncGrp.h"
#endif

#ifdef _SGC
		#include "GmcManager.h"
		#include "GmcGrpAPI.h"
		#include "NcGlobal.h"
		#include "brsystem.h"
		#include "MpBase.h"
		#include "MpCom.h"
		#include "MpAxis.h"
		#include "GmcArncGrp.h"
#endif

/* Datatypes and datatypes of function blocks */
typedef enum MpCncHomeSequenceTypeEnum
{	mpCNC_HOME_ALL_TOGETHER = 0,
	mpCNC_HOME_IN_SEQUENCE = 1
} MpCncHomeSequenceTypeEnum;

typedef enum MpCnc2AxisHomeSequenceEnum
{	mpCNC_2AXIS_HOME_FIRST = 0,
	mpCNC_2AXIS_HOME_SECOND = 1
} MpCnc2AxisHomeSequenceEnum;

typedef enum MpCnc3AxisHomeSequenceEnum
{	mpCNC_3AXIS_HOME_FIRST = 0,
	mpCNC_3AXIS_HOME_SECOND = 1,
	mpCNC_3AXIS_HOME_THIRD = 2
} MpCnc3AxisHomeSequenceEnum;

typedef enum MpCnc4AxisHomeSequenceEnum
{	mpCNC_4AXIS_HOME_FIRST = 0,
	mpCNC_4AXIS_HOME_SECOND = 1,
	mpCNC_4AXIS_HOME_THIRD = 2,
	mpCNC_4AXIS_HOME_FOURTH = 3
} MpCnc4AxisHomeSequenceEnum;

typedef enum MpCnc5AxisHomeSequenceEnum
{	mpCNC_5AXIS_HOME_FIRST = 0,
	mpCNC_5AXIS_HOME_SECOND = 1,
	mpCNC_5AXIS_HOME_THIRD = 2,
	mpCNC_5AXIS_HOME_FOURTH = 3,
	mpCNC_5AXIS_HOME_FIFTH = 4
} MpCnc5AxisHomeSequenceEnum;

typedef enum MpCnc2AxisCoordNameEnum
{	mpCNC_2AXIS_TCP_X = 0,
	mpCNC_2AXIS_TCP_Y = 1
} MpCnc2AxisCoordNameEnum;

typedef enum MpCnc3AxisCoordNameEnum
{	mpCNC_3AXIS_TCP_X = 0,
	mpCNC_3AXIS_TCP_Y = 1,
	mpCNC_3AXIS_TCP_Z = 2
} MpCnc3AxisCoordNameEnum;

typedef enum MpCnc4AxisCoordNameEnum
{	mpCNC_4AXIS_TCP_X = 0,
	mpCNC_4AXIS_TCP_Y = 1,
	mpCNC_4AXIS_TCP_Z = 2,
	mpCNC_4AXIS_TCP_C = 3
} MpCnc4AxisCoordNameEnum;

typedef enum MpCnc5AxisCoordNameEnum
{	mpCNC_5AXIS_TCP_X = 0,
	mpCNC_5AXIS_TCP_Y = 1,
	mpCNC_5AXIS_TCP_Z = 2,
	mpCNC_5AXIS_TCP_B = 3,
	mpCNC_5AXIS_TCP_C = 4
} MpCnc5AxisCoordNameEnum;

typedef enum MpCncRestartModeEnum
{	mpCNC_RESTART_BLOCK_NUMBER = 1,
	mpCNC_RESTART_ABORT_LINE = 2,
	mpCNC_RESTART_ABORT_POINT = 3,
	mpCNC_RESTART_PATH_DISTANCE = 4
} MpCncRestartModeEnum;

typedef enum MpCncRestartPhaseEnum
{	mpCNC_RESTART_INACTIVE = 0,
	mpCNC_RESTART_SIMULATION_RUN = 1,
	mpCNC_RESTART_WAIT_AXES_REPOS = 2,
	mpCNC_RESTART_AXES_REPOS = 3,
	mpCNC_RESTART_WAIT_REAL_RUN = 4,
	mpCNC_RESTART_REAL_RUN = 5
} MpCncRestartPhaseEnum;

typedef enum MpCncRestartRepositionTypeEnum
{	mpCNC_RESTART_REPOSITION_USER = 0,
	mpCNC_RESTART_REPOSITION_PROGRAM = 1
} MpCncRestartRepositionTypeEnum;

typedef enum MpCncProgramStartTypeEnum
{	mpCNC_PROGRAM_START_STANDARD = 0,
	mpCNC_PROGRAM_START_LINE_NUMBER = 1,
	mpCNC_PROGRAM_START_BLOCK_NUMBER = 2
} MpCncProgramStartTypeEnum;

typedef enum MpCncProgramStartModeEnum
{	mpCNC_PROGRAM_START_NON_MODAL = 0
} MpCncProgramStartModeEnum;

typedef enum MpCncInterruptEnum
{	mpCNC_NOT_INTERRUPTED = 0,
	mpCNC_INTERRUPT_SINGLESTEP = 1,
	mpCNC_INTERRUPT_FB = 2,
	mpCNC_INTERRUPT_INTERPRETER = 3,
	mpCNC_INTERRUPT_MFUNCTION = 4,
	mpCNC_INTERRUPT_PROGRAM = 5
} MpCncInterruptEnum;

typedef enum MpCncPLCopenStateEnum
{	mpCNC_DISABLED = 0,
	mpCNC_STANDBY = 1,
	mpCNC_HOMING = 2,
	mpCNC_MOVING = 3,
	mpCNC_ERRORSTOP = 4,
	mpCNC_STOPPING = 5
} MpCncPLCopenStateEnum;

typedef enum MpCncErrorEnum
{	mpCNC_NO_ERROR = 0,
	mpCNC_ERR_ACTIVATION = -1064239103,
	mpCNC_ERR_MPLINK_NULL = -1064239102,
	mpCNC_ERR_MPLINK_INVALID = -1064239101,
	mpCNC_ERR_MPLINK_CHANGED = -1064239100,
	mpCNC_ERR_MPLINK_CORRUPT = -1064239099,
	mpCNC_ERR_MPLINK_IN_USE = -1064239098,
	mpCNC_ERR_PAR_NULL = -1064239097,
	mpCNC_ERR_CONFIG_NULL = -1064239096,
	mpCNC_ERR_CONFIG_NO_PV = -1064239095,
	mpCNC_ERR_CONFIG_LOAD = -1064239094,
	mpCNC_WRN_CONFIG_LOAD = -2137980917,
	mpCNC_ERR_CONFIG_SAVE = -1064239092,
	mpCNC_ERR_CONFIG_INVALID = -1064239091,
	mpCNC_ERR_AXES_GROUP_NULL = -1064082944,
	mpCNC_ERR_AXES_GROUP = -1064082943,
	mpCNC_WRN_OVR_OUT_OF_RANGE = -2137824766,
	mpCNC_INF_NOT_ENOUGH_AXES = 1083400707,
	mpCNC_WRN_CMD_NOT_ALLOWED = -2137824764
} MpCncErrorEnum;

typedef enum MpCncAlarmEnum
{	mpCNC_ALM_SYSTEM_ERROR = 0,
	mpCNC_ALM_INITIALIZATION = 1,
	mpCNC_ALM_PROGRAM_SYNTAX = 2,
	mpCNC_ALM_PROGRAM_MISSING = 3,
	mpCNC_ALM_PATH_VEL_MISSING = 4,
	mpCNC_ALM_EXTERNAL_INTERRUPT = 5,
	mpCNC_ALM_EXTERNAL_STOP = 6
} MpCncAlarmEnum;

typedef struct MpCnc5AxisHomeSequenceType
{	enum MpCncHomeSequenceTypeEnum Type;
	enum MpCnc5AxisHomeSequenceEnum Axis1;
	enum MpCnc5AxisHomeSequenceEnum Axis2;
	enum MpCnc5AxisHomeSequenceEnum Axis3;
	enum MpCnc5AxisHomeSequenceEnum Axis4;
	enum MpCnc5AxisHomeSequenceEnum Axis5;
} MpCnc5AxisHomeSequenceType;

typedef struct MpCnc4AxisHomeSequenceType
{	enum MpCncHomeSequenceTypeEnum Type;
	enum MpCnc4AxisHomeSequenceEnum Axis1;
	enum MpCnc4AxisHomeSequenceEnum Axis2;
	enum MpCnc4AxisHomeSequenceEnum Axis3;
	enum MpCnc4AxisHomeSequenceEnum Axis4;
} MpCnc4AxisHomeSequenceType;

typedef struct MpCnc3AxisHomeSequenceType
{	enum MpCncHomeSequenceTypeEnum Type;
	enum MpCnc3AxisHomeSequenceEnum Axis1;
	enum MpCnc3AxisHomeSequenceEnum Axis2;
	enum MpCnc3AxisHomeSequenceEnum Axis3;
} MpCnc3AxisHomeSequenceType;

typedef struct MpCnc2AxisHomeSequenceType
{	enum MpCncHomeSequenceTypeEnum Type;
	enum MpCnc2AxisHomeSequenceEnum Axis1;
	enum MpCnc3AxisHomeSequenceEnum Axis2;
} MpCnc2AxisHomeSequenceType;

typedef struct MpCnc5AxisConfigType
{	plcstring CncName[21];
	struct MpCnc5AxisHomeSequenceType HomeSequence;
} MpCnc5AxisConfigType;

typedef struct MpCnc4AxisConfigType
{	plcstring CncName[21];
	struct MpCnc4AxisHomeSequenceType HomeSequence;
} MpCnc4AxisConfigType;

typedef struct MpCnc3AxisConfigType
{	plcstring CncName[21];
	struct MpCnc3AxisHomeSequenceType HomeSequence;
} MpCnc3AxisConfigType;

typedef struct MpCnc2AxisConfigType
{	plcstring CncName[21];
	struct MpCnc2AxisHomeSequenceType HomeSequence;
} MpCnc2AxisConfigType;

typedef struct MpCncStatusIDType
{	enum MpCncErrorEnum ID;
	MpComSeveritiesEnum Severity;
	unsigned short Code;
} MpCncStatusIDType;

typedef struct MpCncDiagType
{	struct MpCncStatusIDType StatusID;
} MpCncDiagType;

typedef struct MpCncInfoType
{	struct MpCncDiagType Diag;
} MpCncInfoType;

typedef struct MpCncInternalIDType
{	signed long ID;
	MpComSeveritiesEnum Severity;
	MpComFacilitiesEnum Facility;
	unsigned short Code;
} MpCncInternalIDType;

typedef struct MpCncDiagExtType
{	struct MpCncStatusIDType StatusID;
	struct MpCncInternalIDType Internal;
} MpCncDiagExtType;

typedef struct MpCncTableType
{	plcstring TableName[256];
	unsigned short Index;
} MpCncTableType;

typedef struct MpCncRestartDataType
{	double AxesPosition[15];
	plcstring ProgramName[256];
	double PathPosition;
	unsigned long LineNumber;
	unsigned long BlockNumber;
} MpCncRestartDataType;

typedef struct MpCncRestartInfoType
{	enum MpCncRestartPhaseEnum Phase;
	plcbit WaitingForContinue;
	struct MpCncRestartDataType Data;
} MpCncRestartInfoType;

typedef struct MpCncBlockMonitorType
{	unsigned long LineNumber;
	unsigned long BlockNumber;
	plcstring LineLast2[101];
	plcstring LineLast1[101];
	plcstring LineActual[101];
	plcstring LineNext1[101];
	plcstring LineNext2[101];
	double RemainingDistance;
	double Length;
} MpCncBlockMonitorType;

typedef struct MpCncProgramInfoType
{	plcstring Name[256];
	plcstring InitProgramName[256];
	float Runtime;
	float Feedrate;
	double PathPosition;
	struct MpCncBlockMonitorType BlockMonitor;
} MpCncProgramInfoType;

typedef struct MpCnc5AxisInfoType
{	plcbit AxesLinked;
	plcbit AxesReady;
	plcbit Jogging;
	struct MpCncProgramInfoType Program;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	enum MpCncInterruptEnum Interrupt;
	struct MpCncRestartInfoType Restart;
	enum MpCncPLCopenStateEnum PLCopenState;
	struct MpCncDiagExtType Diag;
} MpCnc5AxisInfoType;

typedef struct MpCnc4AxisInfoType
{	plcbit AxesLinked;
	plcbit AxesReady;
	plcbit Jogging;
	struct MpCncProgramInfoType Program;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	enum MpCncInterruptEnum Interrupt;
	struct MpCncRestartInfoType Restart;
	enum MpCncPLCopenStateEnum PLCopenState;
	struct MpCncDiagExtType Diag;
} MpCnc4AxisInfoType;

typedef struct MpCnc3AxisInfoType
{	plcbit AxesLinked;
	plcbit AxesReady;
	plcbit Jogging;
	struct MpCncProgramInfoType Program;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	enum MpCncInterruptEnum Interrupt;
	struct MpCncRestartInfoType Restart;
	enum MpCncPLCopenStateEnum PLCopenState;
	struct MpCncDiagExtType Diag;
} MpCnc3AxisInfoType;

typedef struct MpCnc2AxisInfoType
{	plcbit AxesLinked;
	plcbit AxesReady;
	plcbit Jogging;
	struct MpCncProgramInfoType Program;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	enum MpCncInterruptEnum Interrupt;
	struct MpCncRestartInfoType Restart;
	enum MpCncPLCopenStateEnum PLCopenState;
	struct MpCncDiagExtType Diag;
} MpCnc2AxisInfoType;

typedef struct MpCnc2AxisJogType
{	enum MpCnc2AxisCoordNameEnum Coord;
	float Velocity;
	float Acceleration;
	float Deceleration;
} MpCnc2AxisJogType;

typedef struct MpCncRestartRepositionType
{	enum MpCncRestartRepositionTypeEnum Type;
	plcstring ProgramName[256];
} MpCncRestartRepositionType;

typedef struct MpCncRestartType
{	plcstring Name[256];
	enum MpCncRestartModeEnum Mode;
	double Parameter;
	struct MpCncRestartRepositionType Reposition;
	plcbit DisableRestartData;
} MpCncRestartType;

typedef struct MpCncAdditionalOverridesType
{	float Rapid;
	double Feedrate;
} MpCncAdditionalOverridesType;

typedef struct MpCnc2AxisParType
{	plcstring ProgramName[256];
	plcstring InitProgramName[256];
	plcstring Block[256];
	struct MpCnc2AxisJogType Jog;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	struct MpCncRestartType Restart;
	struct MpCncAdditionalOverridesType AdditionalOverrides;
} MpCnc2AxisParType;

typedef struct MpCnc5AxisJogType
{	enum MpCnc5AxisCoordNameEnum Coord;
	float Velocity;
	float Acceleration;
	float Deceleration;
} MpCnc5AxisJogType;

typedef struct MpCnc5AxisParType
{	plcstring ProgramName[256];
	plcstring InitProgramName[256];
	plcstring Block[256];
	struct MpCnc5AxisJogType Jog;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	struct MpCncRestartType Restart;
	struct MpCncAdditionalOverridesType AdditionalOverrides;
} MpCnc5AxisParType;

typedef struct MpCnc4AxisJogType
{	enum MpCnc4AxisCoordNameEnum Coord;
	float Velocity;
	float Acceleration;
	float Deceleration;
} MpCnc4AxisJogType;

typedef struct MpCnc4AxisParType
{	plcstring ProgramName[256];
	plcstring InitProgramName[256];
	plcstring Block[256];
	struct MpCnc4AxisJogType Jog;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	struct MpCncRestartType Restart;
	struct MpCncAdditionalOverridesType AdditionalOverrides;
} MpCnc4AxisParType;

typedef struct MpCnc3AxisJogType
{	enum MpCnc3AxisCoordNameEnum Coord;
	float Velocity;
	float Acceleration;
	float Deceleration;
} MpCnc3AxisJogType;

typedef struct MpCnc3AxisParType
{	plcstring ProgramName[256];
	plcstring InitProgramName[256];
	plcstring Block[256];
	struct MpCnc3AxisJogType Jog;
	struct MpCncTableType Tool;
	struct MpCncTableType ZeroPointOffset;
	struct MpCncRestartType Restart;
	struct MpCncAdditionalOverridesType AdditionalOverrides;
} MpCnc3AxisParType;

typedef struct MpCnc2Axis
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc2AxisParType* Parameters;
	unsigned long AxesGroup;
	float Override;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	double X;
	double Y;
	double PathVelocity;
	struct MpCnc2AxisInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Update;
	plcbit Power;
	plcbit Home;
	plcbit MoveProgram;
	plcbit Interrupt;
	plcbit Continue;
	plcbit Stop;
	plcbit JogPositive;
	plcbit JogNegative;
	plcbit MoveBlock;
	plcbit SingleStep;
	plcbit Restart;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit UpdateDone;
	plcbit CommandBusy;
	plcbit CommandAborted;
	plcbit PowerOn;
	plcbit IsHomed;
	plcbit MoveActive;
	plcbit MoveInterrupted;
	plcbit InMotion;
	plcbit MoveDone;
	plcbit Stopped;
	plcbit SingleStepActive;
} MpCnc2Axis_typ;

typedef struct MpCnc3Axis
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc3AxisParType* Parameters;
	unsigned long AxesGroup;
	float Override;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	double X;
	double Y;
	double Z;
	double PathVelocity;
	struct MpCnc3AxisInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Update;
	plcbit Power;
	plcbit Home;
	plcbit MoveProgram;
	plcbit Interrupt;
	plcbit Continue;
	plcbit Stop;
	plcbit Restart;
	plcbit JogPositive;
	plcbit JogNegative;
	plcbit MoveBlock;
	plcbit SingleStep;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit UpdateDone;
	plcbit CommandBusy;
	plcbit CommandAborted;
	plcbit PowerOn;
	plcbit IsHomed;
	plcbit MoveActive;
	plcbit MoveInterrupted;
	plcbit InMotion;
	plcbit MoveDone;
	plcbit Stopped;
	plcbit SingleStepActive;
} MpCnc3Axis_typ;

typedef struct MpCnc4Axis
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc4AxisParType* Parameters;
	unsigned long AxesGroup;
	float Override;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	double X;
	double Y;
	double Z;
	double C;
	double PathVelocity;
	struct MpCnc4AxisInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Update;
	plcbit Power;
	plcbit Home;
	plcbit MoveProgram;
	plcbit Interrupt;
	plcbit Continue;
	plcbit Stop;
	plcbit Restart;
	plcbit JogPositive;
	plcbit JogNegative;
	plcbit MoveBlock;
	plcbit SingleStep;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit UpdateDone;
	plcbit CommandBusy;
	plcbit CommandAborted;
	plcbit PowerOn;
	plcbit IsHomed;
	plcbit MoveActive;
	plcbit MoveInterrupted;
	plcbit InMotion;
	plcbit MoveDone;
	plcbit Stopped;
	plcbit SingleStepActive;
} MpCnc4Axis_typ;

typedef struct MpCnc5Axis
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc5AxisParType* Parameters;
	unsigned long AxesGroup;
	float Override;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	double X;
	double Y;
	double Z;
	double B;
	double C;
	double PathVelocity;
	struct MpCnc5AxisInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Update;
	plcbit Power;
	plcbit Home;
	plcbit MoveProgram;
	plcbit Interrupt;
	plcbit Continue;
	plcbit Stop;
	plcbit Restart;
	plcbit JogPositive;
	plcbit JogNegative;
	plcbit MoveBlock;
	plcbit SingleStep;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit UpdateDone;
	plcbit CommandBusy;
	plcbit CommandAborted;
	plcbit PowerOn;
	plcbit IsHomed;
	plcbit MoveActive;
	plcbit MoveInterrupted;
	plcbit InMotion;
	plcbit MoveDone;
	plcbit Stopped;
	plcbit SingleStepActive;
} MpCnc5Axis_typ;

typedef struct MpCnc2AxisConfig
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc2AxisConfigType* Configuration;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpCncInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Load;
	plcbit Save;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpCnc2AxisConfig_typ;

typedef struct MpCnc3AxisConfig
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc3AxisConfigType* Configuration;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpCncInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Load;
	plcbit Save;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpCnc3AxisConfig_typ;

typedef struct MpCnc4AxisConfig
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc4AxisConfigType* Configuration;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpCncInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Load;
	plcbit Save;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpCnc4AxisConfig_typ;

typedef struct MpCnc5AxisConfig
{
	/* VAR_INPUT (analog) */
	struct MpComIdentType* MpLink;
	struct MpCnc5AxisConfigType* Configuration;
	/* VAR_OUTPUT (analog) */
	signed long StatusID;
	struct MpCncInfoType Info;
	/* VAR (analog) */
	struct MpComInternalDataType Internal;
	/* VAR_INPUT (digital) */
	plcbit Enable;
	plcbit ErrorReset;
	plcbit Load;
	plcbit Save;
	/* VAR_OUTPUT (digital) */
	plcbit Active;
	plcbit Error;
	plcbit CommandBusy;
	plcbit CommandDone;
} MpCnc5AxisConfig_typ;



/* Prototyping of functions and function blocks */
_BUR_PUBLIC void MpCnc2Axis(struct MpCnc2Axis* inst);
_BUR_PUBLIC void MpCnc3Axis(struct MpCnc3Axis* inst);
_BUR_PUBLIC void MpCnc4Axis(struct MpCnc4Axis* inst);
_BUR_PUBLIC void MpCnc5Axis(struct MpCnc5Axis* inst);
_BUR_PUBLIC void MpCnc2AxisConfig(struct MpCnc2AxisConfig* inst);
_BUR_PUBLIC void MpCnc3AxisConfig(struct MpCnc3AxisConfig* inst);
_BUR_PUBLIC void MpCnc4AxisConfig(struct MpCnc4AxisConfig* inst);
_BUR_PUBLIC void MpCnc5AxisConfig(struct MpCnc5AxisConfig* inst);


#ifdef __cplusplus
};
#endif
#endif /* _MPCNC_ */

