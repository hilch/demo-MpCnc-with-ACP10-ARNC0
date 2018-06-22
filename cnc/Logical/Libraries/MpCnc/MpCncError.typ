
TYPE
    MpCncErrorEnum : 
        ( (* Error numbers of library MpCnc *)
        mpCNC_NO_ERROR := 0, (* No error *)
        mpCNC_ERR_ACTIVATION := -1064239103, (* Could not create component [Error: 1, 0xc0910001] *)
        mpCNC_ERR_MPLINK_NULL := -1064239102, (* MpLink is NULL pointer [Error: 2, 0xc0910002] *)
        mpCNC_ERR_MPLINK_INVALID := -1064239101, (* MpLink connection not allowed [Error: 3, 0xc0910003] *)
        mpCNC_ERR_MPLINK_CHANGED := -1064239100, (* MpLink modified [Error: 4, 0xc0910004] *)
        mpCNC_ERR_MPLINK_CORRUPT := -1064239099, (* Invalid MpLink contents [Error: 5, 0xc0910005] *)
        mpCNC_ERR_MPLINK_IN_USE := -1064239098, (* MpLink already in use [Error: 6, 0xc0910006] *)
        mpCNC_ERR_PAR_NULL := -1064239097, (* Parameters structure is a null pointer [Error: 7, 0xc0910007] *)
        mpCNC_ERR_CONFIG_NULL := -1064239096, (* Configuration structure is null pointer [Error: 8, 0xc0910008] *)
        mpCNC_ERR_CONFIG_NO_PV := -1064239095, (* Configuration pointer not PV [Error: 9, 0xc0910009] *)
        mpCNC_ERR_CONFIG_LOAD := -1064239094, (* Error loading configuration {2:ConfigName} (ErrorCause: {1:ErrorNumber}) [Error: 10, 0xc091000a] *)
        mpCNC_WRN_CONFIG_LOAD := -2137980917, (* Warning loading configuration [Warning: 11, 0x8091000b] *)
        mpCNC_ERR_CONFIG_SAVE := -1064239092, (* Error saving configuration {2:ConfigName} (ErrorCause: {1:ErrorNumber}) [Error: 12, 0xc091000c] *)
        mpCNC_ERR_CONFIG_INVALID := -1064239091, (* Invalid Configuration [Error: 13, 0xc091000d] *)
        mpCNC_ERR_AXES_GROUP_NULL := -1064082944, (* Invalid axes group [Error: 25088, 0xc0936200] *)
        mpCNC_ERR_AXES_GROUP := -1064082943, (* Error in the axes group. (ErrorSource: {2:PLCopenFBName}, ErrorCause: {1:ErrorNumber}) [Error: 25089, 0xc0936201] *)
        mpCNC_WRN_OVR_OUT_OF_RANGE := -2137824766, (* Override value {2:Value} out of expected range -200..200% [Warning: 25090, 0x80936202] *)
        mpCNC_INF_NOT_ENOUGH_AXES := 1083400707, (* Not enough axes components found, wait until all linked axes components output Active = TRUE [Informational: 25091, 0x40936203] *)
        mpCNC_WRN_CMD_NOT_ALLOWED := -2137824764 (* {2:Command} not allowed when robot is {3:Condition} [Warning: 25092, 0x80936204] *)
        );
END_TYPE
