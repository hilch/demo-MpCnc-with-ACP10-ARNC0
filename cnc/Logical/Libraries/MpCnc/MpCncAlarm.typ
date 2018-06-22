
TYPE
    MpCncAlarmEnum : 
        ( (* Alarms of MpCnc Library *)
        mpCNC_ALM_SYSTEM_ERROR := 0, (* General alarm of a cnc *)
        mpCNC_ALM_INITIALIZATION := 1, (* Initialization failed *)
        mpCNC_ALM_PROGRAM_SYNTAX := 2, (* Syntax errors in program/block *)
        mpCNC_ALM_PROGRAM_MISSING := 3, (* Program does not exist *)
        mpCNC_ALM_PATH_VEL_MISSING := 4, (* Path velocity not defined for a block movement in robot program *)
        mpCNC_ALM_EXTERNAL_INTERRUPT := 5, (* CNC interrupted from another mapp component *)
        mpCNC_ALM_EXTERNAL_STOP := 6 (* CNC stopped from another mapp component *)
    );
END_TYPE
