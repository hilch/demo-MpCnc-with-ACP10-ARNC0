
PROGRAM _INIT

(* ### BEGIN gAxisX ### *)
       
(* initialize general interfaces *)
       gAxisX.size := gAxisX.size;
       gAxisX_HW.DrvIf_Typ := ncSDC_DRVSM16;
       brsstrcpy( ADR(gAxisX_HW.DrvIf_Name[0]), ADR('gAxisX_DrvIf') );
       gAxisX_HW.DiDoIf_Typ := ncSDC_DIDO;
       brsstrcpy( ADR(gAxisX_HW.DiDoIf_Name[0]), ADR('gAxisX_DiDoIf') );
       gAxisX_HW.EncIf1_Typ := ncSDC_ENC16;
       brsstrcpy( ADR(gAxisX_HW.EncIf1_Name[0]), ADR('gAxisX_EncIf1') );
       gAxisX_EncIf1.iLifeCnt := gAxisX_EncIf1.iLifeCnt;
       
(* initialize old-value for delta step calculation *)
       gAxisX_oSetPosOld := gAxisX_DrvIf.oSetPos;
        
(* ### END gAxisX ### *)


(* ### BEGIN gAxisY ### *)
       
(* initialize general interfaces *)
       gAxisY.size := gAxisY.size;
       gAxisY_HW.DrvIf_Typ := ncSDC_DRVSM16;
       brsstrcpy( ADR(gAxisY_HW.DrvIf_Name[0]), ADR('gAxisY_DrvIf') );
       gAxisY_HW.DiDoIf_Typ := ncSDC_DIDO;
       brsstrcpy( ADR(gAxisY_HW.DiDoIf_Name[0]), ADR('gAxisY_DiDoIf') );
       gAxisY_HW.EncIf1_Typ := ncSDC_ENC16;
       brsstrcpy( ADR(gAxisY_HW.EncIf1_Name[0]), ADR('gAxisY_EncIf1') );
       gAxisY_EncIf1.iLifeCnt := gAxisY_EncIf1.iLifeCnt;
       
(* initialize old-value for delta step calculation *)
       gAxisY_oSetPosOld := gAxisY_DrvIf.oSetPos;
        
(* ### END gAxisY ### *)


(* ### BEGIN gAxisA ### *)
       
(* initialize general interfaces *)
       gAxisA.size := gAxisA.size;
       gAxisA_HW.DrvIf_Typ := ncSDC_DRVSM16;
       brsstrcpy( ADR(gAxisA_HW.DrvIf_Name[0]), ADR('gAxisA_DrvIf') );
       gAxisA_HW.DiDoIf_Typ := ncSDC_DIDO;
       brsstrcpy( ADR(gAxisA_HW.DiDoIf_Name[0]), ADR('gAxisA_DiDoIf') );
       gAxisA_HW.EncIf1_Typ := ncSDC_ENC16;
       brsstrcpy( ADR(gAxisA_HW.EncIf1_Name[0]), ADR('gAxisA_EncIf1') );
       gAxisA_EncIf1.iLifeCnt := gAxisA_EncIf1.iLifeCnt;
       
(* initialize old-value for delta step calculation *)
       gAxisA_oSetPosOld := gAxisA_DrvIf.oSetPos;
        
(* ### END gAxisA ### *)

END_PROGRAM

