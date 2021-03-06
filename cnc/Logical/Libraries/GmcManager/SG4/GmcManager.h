/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _GMCMANAGER_
#define _GMCMANAGER_

#include <bur/plctypes.h>

#ifndef _BUR_PUBLIC
#define _BUR_PUBLIC
#endif
#if defined(_WIN32) || defined(__WINDOWS__) || defined(__MINGW32__) || defined(__CYGWIN__)
#if defined(BUILD_GMCMANAGER) || defined(GMCMANAGER_EXPORTS)
#define GMCMANAGER_DLLAPI __declspec(dllexport)
#else
#define GMCMANAGER_DLLAPI __declspec(dllimport)
#endif
#else /* not Windows */
#define GMCMANAGER_DLLAPI _BUR_PUBLIC
#endif

/** @cond NO */
#ifdef	__cplusplus
#define TYPEDEF_FORWARD_GMC_CLASS(ClassName) \
	namespace Gmc { class ClassName; } \
	typedef ::Gmc::ClassName
#define TYPEDEF_FORWARD_GMC_STRUCT(StructName) \
	namespace Gmc { struct StructName; } \
	typedef ::Gmc::StructName

#ifndef _COMMONIF_MOTIONTYPES_DECLARED_
/**
 * Forward declaration of (internal) C++ - interface types or ...
 */
TYPEDEF_FORWARD_GMC_CLASS(TaskMediator) TaskInteraction;
TYPEDEF_FORWARD_GMC_CLASS(IControlIf) IGmcControlIf;
TYPEDEF_FORWARD_GMC_CLASS(IAxisIf) IGmcAxisIf;
TYPEDEF_FORWARD_GMC_CLASS(IAxesGrpIf) IGmcAxesGrpIf;
#endif
/**
 *  ... declaration of a comparatively equivalent C structure type.
 */
#else	/*< not C++ >:O */
#if !defined(__STDC__) || defined(__STRICT_ANSI__)
#define TYPEDEF_PSEUDO_GMC_CSTRUCT(StructName, Content) \
	typedef struct StructName Content
#else
#define TYPEDEF_PSEUDO_GMC_CSTRUCT(StructName, Content) \
	struct StructName; typedef struct StructName
#endif
TYPEDEF_PSEUDO_GMC_CSTRUCT(FubProcessing_csub, { long states[2]; }) TaskInteraction;
TYPEDEF_PSEUDO_GMC_CSTRUCT(IGmcControlIf_csub, { plcdword vtable; }) IGmcControlIf;
TYPEDEF_PSEUDO_GMC_CSTRUCT(IGmcAxisIf_csub, { plcdword vtable; }) IGmcAxisIf;
TYPEDEF_PSEUDO_GMC_CSTRUCT(IGmcAxesGrpIf_csub, { plcdword vtable; }) IGmcAxesGrpIf;
#endif	/*< end plain C */
/** @endcond */

typedef struct GmcAxis
{
	IGmcAxisIf* controlif;
	long		seqNo;
} GmcAxis;

typedef struct GmcAxesGroup
{
	IGmcAxesGrpIf* controlif;
} GmcAxesGroup;



/* Datatypes and datatypes of function blocks */
typedef enum MCBufferModeEnum
{
	mcABORTING,
	mcBUFFERED
} MCBufferModeEnum;

typedef enum MCCoordinateSystemEnum
{
	mcACS = 0,
	mcMCS = 1,
	mcPCS = 2,
	mcSCS1 = 3,
	mcSCS2 = 4,
	mcSCS3 = 5,
	mcSCS4 = 6,
	mcSCS5 = 7,
	mcTCS = 9,
	mcJACS = 100,
} MCCoordinateSystemEnum;

typedef enum MCDirectionEnum
{
	mcDIR_POSITIVE,
	mcDIR_NEGATIVE,
	mcDIR_CURRENT,
	mcDIR_SHORTEST_WAY,
	mcDIR_EXCEED_PERIOD = 8,
	mcDIR_UNDEFINED
} MCDirectionEnum;

typedef enum MCErrorCommandEnum
{
	mcWARNING_CMD = 0,
	mcERROR_CMD,
	mcERROR_STOP_CMD,
	mcERROR_STOP_CTRL_OFF_CMD,
	mcERROR_V_STOP_CTRL_OFF_CMD,
	mcERROR_COAST_TO_STANDSTILL_CMD,
	mcERROR_INDUCTION_HALT_CMD
} MCErrorCommandEnum;

typedef enum MCExecutionModeEnum
{
	mcEM_IMMEDIATELY,
	mcEM_QUEUED
} MCExecutionModeEnum;

typedef enum MCGroupOperationModeEnum
{
	mcOM_M1_STOP = 0,
	mcOM_FEED_FORWARD = 1,
	mcOM_OPTMOT = 2,
	mcOM_SAVE_RESTARTDATA = 4,
	mcOM_MP_LOG= 5
} MCGroupOperationModeEnum;

typedef enum MCUnloadProgramModeEnum
{
	mcUPRG_NAME,
	mcUPRG_ALL
} MCUnloadProgramModeEnum;

typedef enum MCHomingModeEnum
{
	mcHOMING_DIRECT = 0,
	mcHOMING_SWITCH_GATE,
	mcHOMING_ABSOLUTE_SWITCH,
	mcHOMING_LIMIT_SWITCH = 4,
	mcHOMING_ABSOLUTE,
	mcHOMING_DCM = 7,
	mcHOMING_BLOCK_TORQUE = 9,
	mcHOMING_BLOCK_LAG_ERROR = 10,
	mcHOMING_ABSOLUTE_CORRECTION = 133,
	mcHOMING_DCM_CORRECTION = 135,
	mcHOMING_DEFAULT = 140,
	mcHOMING_INIT,
	mcHOMING_RESTORE_POSITION
} MCHomingModeEnum;

typedef enum MCHomingOrderSourceEnum
{
	mcHO_CONFIGURATION = 0,
	mcHO_FUNCTIONBLOCK
} MCHomingOrderSourceEnum;

typedef enum MCInterpolationModeEnum
{
	mcIPLM_DEFAULT,
	mcIPLM_OFF,
	mcIPLM_LINEAR,
	mcIPLM_QUADRATIC,
	mcIPLM_QUADRATIC_NO_OVERSHOOT
} MCInterpolationModeEnum;

typedef enum MCOverrideEnum
{
	mcOVERRIDE_VELOCITY,
	mcOVERRIDE_VELOCITY_AXIS,
	mcOVERRIDE_ACCELERATION,
	mcOVERRIDE_ACCELERATION_AXIS,
	mcOVERRIDE_JERK,
	mcOVERRIDE_FEEDRATE = 10,
	mcOVERRIDE_RAPID,
	mcOVERRIDE_SPINDLE,
	mcOVERRIDE_TIMESTRETCH = 20
} MCOverrideEnum;

typedef enum MCPlcopenParameterEnum
{
	mcPAR_COMMANDED_AX_POSITION = 1,
	mcPAR_SW_LIMIT_POSITIVE,
	mcPAR_SW_LIMIT_NEGATIVE,
	mcPAR_ENABLE_LIMIT_POSITIVE,
	mcPAR_ENABLE_LIMIT_NEGATIVE,
	mcPAR_ENABLE_POS_LAG_MONITORING,
	mcPAR_MAX_AX_POSITION_LAG,
	mcPAR_MAX_AX_VELOCITY_SYSTEM,
	mcPAR_MAX_AX_VELOCITY_APPL,
	mcPAR_ACTUAL_AX_VELOCITY,
	mcPAR_COMMANDED_AX_VELOCITY,
	mcPAR_MAX_AX_ACCELERATION_SYSTEM,
	mcPAR_MAX_AX_ACCELERATION_APPL,
	mcPAR_MAX_AX_DECELERATION_SYSTEM,
	mcPAR_MAX_AX_DECELERATION_APPL,
	mcPAR_MAX_AX_JERK,
	mcPAR_AX_PERIOD = 1008,
	mcPAR_HOMING_OFFSET = 1019,
	mcPAR_AX_MEASUREMENT_RESOLUTION = 1020
} MCPlcopenParameterEnum;

typedef enum MCNetworkTypeEnum
{
	mcNETWORK_POWERLINK
} MCNetworkTypeEnum;

typedef enum MCPrgAxesReposTypeEnum
{
	mcPRGRP_SINGLE_AXIS,
	mcPRGRP_PROGRAM,
	mcPRGRP_SINGLE_AXIS_AUTOMATIC
} MCPrgAxesReposTypeEnum;

typedef enum MCPrgInfoInterruptEnum
{
	mcINTERRUPT_NOT_INTERRUPTED,
	mcINTERRUPT_SINGLESTEP,
	mcINTERRUPT_FB,
	mcINTERRUPT_INTERPRETER,
	mcINTERRUPT_MFUNCTION,
	mcINTERRUPT_PROGRAM
} MCPrgInfoInterruptEnum;

typedef enum MCPrgInfoModeEnum
{
	mcPRGIM_LIVE,
	mcPRGIM_ABORT_POINT
} MCPrgInfoModeEnum;

typedef enum MCPrgStartModeEnum
{
	mcPRGSM_NON_MODAL,
	mcPRGSM_MODAL,
	mcPRGSM_RESTART
} MCPrgStartModeEnum;

typedef enum MCPrgStartPointEnum
{
	mcPRGSP_STANDARD,
	mcPRGSP_BLOCK_NUMBER,
	mcPRGSP_ABORT_LINE,
	mcPRGSP_ABORT_POINT,
	mcPRGSP_PATH_DISTANCE,
	mcPRGSP_LINE_NUMBER,
	mcPRGSP_PATH_DISTANCE_LINE
} MCPrgStartPointEnum;

typedef enum MCPrgPhaseEnum
{
	mcPRGPH_INACTIVE,
	mcPRGPH_SIMULATION_RUN,
	mcPRGPH_WAIT_FOR_AXES_REPOS,
	mcPRGPH_AXES_REPOS,
	mcPRGPH_WAIT_FOR_REAL_RUN,
	mcPRGPH_REAL_RUN
} MCPrgPhaseEnum;

typedef enum MCSimulationCommandEnum
{
	mcSIMULATION_SW_OFF,
	mcSIMULATION_SW_ON
} MCSimulationCommandEnum;

typedef enum MCSwitchEnum
{
	mcSWITCH_STATE_OFF,
	mcSWITCH_STATE_ON
} MCSwitchEnum;

typedef enum MCTransitionModeEnum
{
	mcTM_NONE
} MCTransitionModeEnum;

typedef enum MCValueSourceEnum
{
	mcVALUE_SET,
	mcVALUE_ACTUAL,
	mcVALUE_SET_AXIS_UNITS,
	mcVALUE_ACTUAL_AXIS_UNITS,
	mcVALUE_AUTOMATIC_SELECTION
} MCValueSourceEnum;

typedef enum MCEdgeEnum
{
	mcEDGE_POSITIVE,
	mcEDGE_NEGATIVE
} MCEdgeEnum;

typedef enum MCBrakeCommandEnum
{
	mcBRAKE_CLOSE,
	mcBRAKE_OPEN,
	mcBRAKE_GET_STATUS
} MCBrakeCommandEnum;

typedef enum MCBrakeStatusEnum
{
	mcBRAKE_STATUS_NOT_PROVIDED,
	mcBRAKE_CLOSED,
	mcBRAKE_OPENED
} MCBrakeStatusEnum;

typedef struct MCAdditionalGroupHome_15_Type
{
	enum MCHomingOrderSourceEnum HomingOrderSource;
	unsigned short HomingOrder[15];
} MCAdditionalGroupHome_15_Type;

typedef struct MCAdditionalStatusType
{
	plcbit TriggerSwitch1;
	plcbit TriggerSwitch2;
	plcbit DriveEnableSwitch;
	plcbit ResetDone;
	plcbit LagWarning;
} MCAdditionalStatusType;

typedef struct MCAdvancedMoveCycParType
{
	float Velocity;
	float Acceleration;
	float Deceleration;
	plcbit DisableJoltLimitation;
} MCAdvancedMoveCycParType;

typedef struct MCAdvancedVelCtrlParType
{
	float Acceleration;
	float Deceleration;
} MCAdvancedVelCtrlParType;

typedef struct MCAdvancedGearInParType
{
	float MasterMaxVelocity;
} MCAdvancedGearInParType;
typedef struct MCCamTableDefineType
{
	plcstring DataObjectName[13];
	unsigned long DataAdress;
} MCCamTableDefineType;

typedef struct MCFrameOrientationType
{
	unsigned long Type;
	double Angle1;
	double Angle2;
	double Angle3;
} MCFrameOrientationType;

typedef struct MCFramePositionType
{
	double X;
	double Y;
	double Z;
} MCFramePositionType;

typedef struct MCFrameType
{
	struct MCFramePositionType Trans;
	struct MCFrameOrientationType Rot;
} MCFrameType;

typedef struct MCPrgInfoActiveProgramType
{
	plcstring Name[261];
	unsigned long Number;
	unsigned short Level;
} MCPrgInfoActiveProgramType;

typedef struct MCPrgInfoBlockMonType
{
	unsigned long LineNumber;
	unsigned long BlockNumber;
	plcstring LineLast2[261];
	plcstring LineLast1[261];
	plcstring LineActual[261];
	plcstring LineNext1[261];
	plcstring LineNext2[261];
	double RemainingDistance;
	double Length;
	double LengthNext;
} MCPrgInfoBlockMonType;

typedef struct MCPrgInfoPrgHierarchyLevelType
{
	unsigned long LineNumber;
} MCPrgInfoPrgHierarchyLevelType;

typedef struct MCPrgInfoPrgHierarchyType
{
	struct MCPrgInfoPrgHierarchyLevelType Level[15];
} MCPrgInfoPrgHierarchyType;

typedef struct MCPrgInfoAxesMonType
{
	double Position[15];
} MCPrgInfoAxesMonType;

typedef struct MCPrgInfoType
{
	plcstring InitProgram[261];
	struct MCPrgInfoActiveProgramType ActiveProgram;
	enum MCPrgInfoInterruptEnum InterruptStatus;
	struct MCPrgInfoBlockMonType BlockMonitor;
	struct MCPrgInfoPrgHierarchyType ProgramHierarchy;
} MCPrgInfoType;

typedef struct MCPrgInfo15Type
{
	plcstring InitProgram[261];
	struct MCPrgInfoActiveProgramType ActiveProgram;
	enum MCPrgInfoInterruptEnum InterruptStatus;
	struct MCPrgInfoBlockMonType BlockMonitor;
	struct MCPrgInfoPrgHierarchyType ProgramHierarchy;
	struct MCPrgInfoAxesMonType AxesMonitor;
} MCPrgInfo15Type;

typedef struct MCPrgInfoParAxesMonType
{
	enum MCCoordinateSystemEnum CoordSystem;

} MCPrgInfoParAxesMonType;

typedef struct MCPrgInfoParType
{
	enum MCPrgInfoModeEnum Mode;
	struct MCPrgInfoParAxesMonType AxesMonitor;

}MCPrgInfoParType;

typedef struct MCPrgAxesReposParType
{
	enum MCPrgAxesReposTypeEnum Type;
	plcstring String[261];
} MCPrgAxesReposParType;

typedef struct MCPrgStartPointParRpcType
{
	unsigned short Level;
	struct MCPrgInfoPrgHierarchyType ProgramHierarchy;
} MCPrgStartPointParRpcType;

typedef struct MCTrackPathLimitsType
{
	double Velocity;
	double Acceleration;
	double Deceleration;
	double Jerk;
} MCTrackPathLimitsType;


typedef struct MCInternalType
{
	unsigned long ID;
	unsigned long Check;
	unsigned long ParamHash;
	plcword State;
	unsigned short Error;
	TaskInteraction* Treating;
	unsigned long Memory[14];
	unsigned char Flags;
	IGmcControlIf* ControlIf;
	long SeqNo;
} MCInternalType;



#if !(defined(__cplusplus) || defined(_MCBASE_HPP_INCLUDED_))
typedef struct MCInternalTwoRefType
{
	unsigned long ID;
	unsigned long Check;
	unsigned long ParamHash;
	plcword State;
	unsigned short Error;
	TaskInteraction* Treating;
	unsigned long Memory[14];
	unsigned char Flags;
	IGmcControlIf* ControlIf;
	long SeqNo;
	IGmcControlIf* MaControlIf;
	long MaSeqNo;
}MCInternalTwoRefType;
#else
typedef struct MCInternalTwoRefType : public MCInternalType
{
	IGmcControlIf* MaControlIf;
	long MaSeqNo;
} MCInternalTwoRefType;
#endif

typedef unsigned long MCKinematicTrfType;

typedef unsigned long MCWorkspaceType;

typedef unsigned long MCFFCtrlParType;

typedef unsigned long MCPrgStartPointParExtType;

/* Prototyping of functions and function blocks */
#ifdef __cplusplus
extern "C" {
#endif

GMCMANAGER_DLLAPI
unsigned short GmcManagerInit(signed long sysInitPhase);

GMCMANAGER_DLLAPI
const char* GmcGetEventLogName();

#ifdef __cplusplus
} // End of C-Linkage
#endif
#endif /* _GMCMANAGER_ */

