
ACTION ReadEventLogger: 


	CASE Logger.eventLog.step OF
		0: (* wait for start *)

		10: (* wait for ..GetIdent *)
		Logger.eventLog.ArEventLogGetIdent( Execute := TRUE );
		IF Logger.eventLog.ArEventLogGetIdent.Done THEN
			Logger.eventLog.ArEventLogGetLatestRecordID.Ident := Logger.eventLog.ArEventLogGetIdent.Ident;
			Logger.eventLog.ArEventLogGetPreviousRecordID.Ident := Logger.eventLog.ArEventLogGetIdent.Ident;
			Logger.eventLog.ArEventLogRead.Ident := Logger.eventLog.ArEventLogGetIdent.Ident;
			Logger.eventLog.ArEventLogReadAddData.Ident := Logger.eventLog.ArEventLogGetIdent.Ident;
			Logger.eventLog.maxIndex := SIZEOF(Logger.eventLog.entries)/SIZEOF(Logger.eventLog.entries[0])-1;
			brsmemset( ADR(Logger.eventLog.entries), 0, SIZEOF(Logger.eventLog.entries) );
			Logger.eventLog.ArEventLogGetIdent( Execute := FALSE );
			Logger.eventLog.index := 1;
			Logger.eventLog.step := 20;
		END_IF

		20: (* start reading latest entry *)
		Logger.eventLog.ArEventLogGetLatestRecordID( Execute := TRUE );
		IF Logger.eventLog.ArEventLogGetLatestRecordID.Done THEN
			Logger.eventLog.entries[0].RecordID := Logger.eventLog.ArEventLogGetLatestRecordID.RecordID;
			Logger.eventLog.ArEventLogGetLatestRecordID( Execute := FALSE );
			Logger.eventLog.step := 30;
		END_IF

		30: (* read previous entry *)
		IF Logger.eventLog.index <= Logger.eventLog.maxIndex THEN
			Logger.eventLog.ArEventLogGetPreviousRecordID.RecordID := Logger.eventLog.entries[Logger.eventLog.index-1].RecordID;
			Logger.eventLog.ArEventLogGetPreviousRecordID( Execute := TRUE );
			IF Logger.eventLog.ArEventLogGetPreviousRecordID.Done THEN
				Logger.eventLog.entries[Logger.eventLog.index].RecordID := Logger.eventLog.ArEventLogGetPreviousRecordID.PrevRecordID;
				Logger.eventLog.index := Logger.eventLog.index + 1;
			ELSIF Logger.eventLog.ArEventLogGetPreviousRecordID.Error AND Logger.eventLog.ArEventLogGetPreviousRecordID.StatusID = arEVENTLOG_ERR_RECORDID_INVALID THEN  (* end of logger *)
				Logger.eventLog.index := Logger.eventLog.index - 1;
				Logger.eventLog.step := 40;
			END_IF
			Logger.eventLog.ArEventLogGetPreviousRecordID( Execute := FALSE );
		ELSE			
			Logger.eventLog.index := Logger.eventLog.index - 1;
			Logger.eventLog.step := 40;
		END_IF

		40: (* read entry information *)
		IF Logger.eventLog.index >= 0 THEN
			Logger.eventLog.ArEventLogRead( RecordID := Logger.eventLog.entries[Logger.eventLog.index].RecordID, Execute := TRUE );
			Logger.eventLog.ArEventLogReadAddData( Execute := TRUE, RecordID := Logger.eventLog.entries[Logger.eventLog.index].RecordID, 
													AddData := ADR(Logger.eventLog.entries[Logger.eventLog.index].text), 
													BytesToRead := SIZEOF(Logger.eventLog.entries[Logger.eventLog.index].text) );

			IF Logger.eventLog.ArEventLogRead.Done AND Logger.eventLog.ArEventLogReadAddData.Done THEN
				Logger.eventLog.entries[Logger.eventLog.index].TimeStamp := Logger.eventLog.ArEventLogRead.TimeStamp;
				Logger.eventLog.index := Logger.eventLog.index - 1;
				Logger.eventLog.ArEventLogRead( Execute := FALSE );
				Logger.eventLog.ArEventLogReadAddData( Execute := FALSE );
			END_IF
		ELSE
			Logger.eventLog.step := 0;	
		END_IF

		



	END_CASE



	Logger.eventLog.ArEventLogRead();


END_ACTION
