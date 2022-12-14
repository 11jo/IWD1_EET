BEGIN ~DHOBART~

IF WEIGHT #5
~NumTimesTalkedTo(0)
 Global("Master_Quest","GLOBAL",0)~ THEN BEGIN 0
  SAY @26940
  IF ~~ THEN REPLY @26960 GOTO 1
  IF ~Class(LastTalkedToBy,PALADIN_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @26961 GOTO 5
  IF ~!Race(LastTalkedToBy,HALFLING)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @26962 GOTO 5
  IF ~Race(LastTalkedToBy,HALFLING)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @26963 GOTO 5
  IF ~Class(LastTalkedToBy,BARD_ALL)~ THEN REPLY @26964 EXIT
  IF ~~ THEN REPLY @26965 GOTO 2
  IF ~~ THEN REPLY @26966 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @26941
  IF ~~ THEN REPLY @26967 GOTO 6
  IF ~~ THEN REPLY @26968 GOTO 4
  IF ~~ THEN REPLY @26969 GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @26942
  IF ~~ THEN REPLY @26970 GOTO 1
  IF ~~ THEN REPLY @26966 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @26943
  IF ~~ THEN REPLY @26972 GOTO 1
  IF ~~ THEN REPLY @26973 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @26944
  IF ~~ THEN REPLY @26974 GOTO 6
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @26945
  IF ~~ THEN REPLY @26976 GOTO 6
  IF ~~ THEN REPLY @26977 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @26946
  IF ~~ THEN REPLY @26978 DO ~SetGlobal("Hobart_Told","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @26979 DO ~SetGlobal("Hobart_Told","GLOBAL",1)~ GOTO 8
  IF ~~ THEN REPLY @26980 DO ~SetGlobal("Hobart_Told","GLOBAL",1)~ GOTO 9
  IF ~~ THEN REPLY @26969 DO ~SetGlobal("Hobart_Told","GLOBAL",1)~ GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @26947
  IF ~~ THEN REPLY @26979 GOTO 8
  IF ~~ THEN REPLY @26980 GOTO 9
  IF ~~ THEN REPLY @26969 GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @26948
  IF ~~ THEN REPLY @22629 GOTO 11
  IF ~~ THEN REPLY @26980 GOTO 9
  IF ~~ THEN REPLY @26969 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @26949
  IF ~~ THEN REPLY @22629 GOTO 11
  IF ~~ THEN REPLY @26969 GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @26950
  IF ~~ THEN REPLY @22629 GOTO 11
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @26951
  IF ~~ THEN DO ~SetGlobal("Master_Quest","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("cyHobTel")~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedToGT(0)
 Global("Master_Quest","GLOBAL",0)~ THEN BEGIN 12
  SAY @26952
  IF ~!Global("Hobart_Told","GLOBAL",1)~ THEN REPLY @26992 GOTO 6
  IF ~Global("Hobart_Told","GLOBAL",1)~ THEN REPLY @26993 GOTO 11
  IF ~~ THEN REPLY @26994 EXIT
END

IF WEIGHT #1
~Global("Master_Quest","GLOBAL",1)~ THEN BEGIN 13
  SAY @26953
  IF ~~ THEN REPLY @26995 GOTO 14
  IF ~~ THEN REPLY @26996 GOTO 17
  IF ~~ THEN REPLY @283 GOTO 16
END

IF ~~ THEN BEGIN 14
  SAY @26954
  IF ~~ THEN REPLY @26999 GOTO 16
  IF ~~ THEN REPLY @26996 GOTO 17
  IF ~~ THEN REPLY @283 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @26955
  IF ~~ THEN REPLY @26999 GOTO 16
  IF ~~ THEN REPLY @26995 GOTO 18
  IF ~~ THEN REPLY @283 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @26956
  IF ~~ THEN DO ~SetGlobal("Master_Quest","GLOBAL",2)
                 StartCutSceneMode()
                 StartCutScene("cyHobLve")~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @26955
  IF ~~ THEN REPLY @26999 GOTO 16
  IF ~~ THEN REPLY @283 GOTO 16
END

IF ~~ THEN BEGIN 18
  SAY @26954
  IF ~~ THEN REPLY @26999 GOTO 16
  IF ~~ THEN REPLY @283 GOTO 16
END

IF WEIGHT #2
~Global("Master_Quest","GLOBAL",2)~ THEN BEGIN 19
  SAY @27134
  IF ~Global("Know_Luremaster","GLOBAL",1)~ THEN REPLY @27157 DO ~SetGlobal("Know_Luremaster","GLOBAL",2)~ GOTO 20
  IF ~Global("Know_Hobart_Store","GLOBAL",1)~ THEN REPLY @27159 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Hobart_Store","GLOBAL",0)~ THEN REPLY @3153 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 23
  IF ~Global("Know_Hobart_Store","GLOBAL",0)~ THEN REPLY @27161 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @27162 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @27135
  IF ~~ THEN REPLY @27164 GOTO 21
  IF ~~ THEN REPLY @9094 GOTO 22
  IF ~~ THEN REPLY @27166 EXIT
END

IF ~~ THEN BEGIN 21
  SAY @27136
  IF ~~ THEN REPLY @9094 GOTO 22
  IF ~~ THEN REPLY @27166 EXIT
END

IF ~~ THEN BEGIN 22
  SAY @27137
  IF ~~ THEN REPLY @3153 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 23
  IF ~~ THEN REPLY @27161 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @27162 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @27138
  IF ~~ THEN REPLY @27159 GOTO 25
  IF ~~ THEN REPLY @27161 GOTO 24
  IF ~~ THEN REPLY @27166 EXIT
END

IF ~~ THEN BEGIN 24
  SAY @27139
  IF ~~ THEN REPLY @27175 GOTO 25
  IF ~~ THEN REPLY @27166 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @27140
  IF ~~ THEN REPLY @24061 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
END

IF WEIGHT #3
~GlobalGT("Master_Quest","GLOBAL",2)
 Global("Hobart_Keep","GLOBAL",0)~ THEN BEGIN 26
  SAY @27141
  IF ~~ THEN REPLY @27178 DO ~SetGlobal("Hobart_Keep","GLOBAL",1)~ GOTO 27
END

IF ~~ THEN BEGIN 27
  SAY @27142
  IF ~~ THEN REPLY @27179 GOTO 28
  IF ~~ THEN REPLY @27180 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @27143
  IF ~~ THEN REPLY @27181 GOTO 29
  IF ~~ THEN REPLY @27182 GOTO 29
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @27183 GOTO 30
  IF ~Alignment(LastTalkedToBy,MASK_EVIL)
      Class(LastTalkedToBy,MAGE_ALL)~ THEN REPLY @27184 GOTO 30
  IF ~~ THEN REPLY @27185 GOTO 30
END

IF ~~ THEN BEGIN 29
  SAY @27144
  IF ~~ THEN REPLY @27186 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27187 GOTO 30
  IF ~~ THEN REPLY @27188 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @27146
  IF ~~ THEN REPLY @27189 GOTO 31
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 31
  SAY @27147
  IF ~~ THEN REPLY @27192 GOTO 32
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 32
  SAY @27148
  IF ~~ THEN REPLY @1785 GOTO 33
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 33
  SAY @27149
  IF ~~ THEN REPLY @8578 GOTO 40
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 34
  SAY @27150
  IF ~~ THEN REPLY @27200 GOTO 35
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 35
  SAY @27151
  IF ~~ THEN REPLY @27202 GOTO 36
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF ~~ THEN BEGIN 36
  SAY @27152
  IF ~~ THEN REPLY @27205 GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @27153
  IF ~~ THEN DO ~AddJournalEntry(@27214,QUEST_DONE)~ GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @27154
  IF ~~ THEN REPLY @27215 GOTO 39
  IF ~~ THEN REPLY @27216 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27217 EXIT
END

IF ~~ THEN BEGIN 39
  SAY @27155
  IF ~~ THEN REPLY @27216 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @27217 EXIT
END

IF ~~ THEN BEGIN 40
  SAY @27156
  IF ~~ THEN REPLY @27222 GOTO 34
  IF ~~ THEN REPLY @27188 GOTO 38
END

IF WEIGHT #4
~GlobalGT("Master_Quest","GLOBAL",2)
 Global("Hobart_Keep","GLOBAL",1)~ THEN BEGIN 41
  SAY @27134
  IF ~Global("Know_Hobart_Store","GLOBAL",1)~ THEN REPLY @27159 DO ~StartStore("Hobart",LastTalkedToBy)~ EXIT
  IF ~Global("Know_Hobart_Store","GLOBAL",0)~ THEN REPLY @3153 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 23
  IF ~Global("Know_Hobart_Store","GLOBAL",0)~ THEN REPLY @27161 DO ~SetGlobal("Know_Hobart_Store","GLOBAL",1)~ GOTO 24
  IF ~~ THEN REPLY @27162 EXIT
END
