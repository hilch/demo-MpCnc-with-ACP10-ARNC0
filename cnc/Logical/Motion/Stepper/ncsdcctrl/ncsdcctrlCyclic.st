
PROGRAM _CYCLIC


(* ### BEGIN gAxisX ### *)
       
(* life counter emulation of digital inputs *)
       gAxisX_DiDoIf.iLifeCntReference := gAxisX_DiDoIf.iLifeCntReference + 1;
       gAxisX_DiDoIf.iLifeCntNegHwEnd  := gAxisX_DiDoIf.iLifeCntNegHwEnd  + 1;
       gAxisX_DiDoIf.iLifeCntPosHwEnd  := gAxisX_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
       gAxisX_MotorStep0 := gAxisX_DrvIf.oSetPos - gAxisX_oSetPosOld;
       gAxisX_oSetPosOld := gAxisX_DrvIf.oSetPos;
        
(* ### END gAxisX ### *)


(* ### BEGIN gAxisY ### *)
       
(* life counter emulation of digital inputs *)
       gAxisY_DiDoIf.iLifeCntReference := gAxisY_DiDoIf.iLifeCntReference + 1;
       gAxisY_DiDoIf.iLifeCntNegHwEnd  := gAxisY_DiDoIf.iLifeCntNegHwEnd  + 1;
       gAxisY_DiDoIf.iLifeCntPosHwEnd  := gAxisY_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
       gAxisY_MotorStep0 := gAxisY_DrvIf.oSetPos - gAxisY_oSetPosOld;
       gAxisY_oSetPosOld := gAxisY_DrvIf.oSetPos;
        
(* ### END gAxisY ### *)


(* ### BEGIN gAxisA ### *)
       
(* life counter emulation of digital inputs *)
       gAxisA_DiDoIf.iLifeCntReference := gAxisA_DiDoIf.iLifeCntReference + 1;
       gAxisA_DiDoIf.iLifeCntNegHwEnd  := gAxisA_DiDoIf.iLifeCntNegHwEnd  + 1;
       gAxisA_DiDoIf.iLifeCntPosHwEnd  := gAxisA_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
       gAxisA_MotorStep0 := gAxisA_DrvIf.oSetPos - gAxisA_oSetPosOld;
       gAxisA_oSetPosOld := gAxisA_DrvIf.oSetPos;
        
(* ### END gAxisA ### *)


END_PROGRAM

