BEGIN ~DDOOGAL~

IF WEIGHT #2
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @23227
  IF ~~ THEN REPLY @23228 GOTO 1
  IF ~~ THEN REPLY @23229 GOTO 2
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @23231
  IF ~~ THEN REPLY @21662 GOTO 3
  IF ~~ THEN REPLY @23233 GOTO 4
  IF ~~ THEN REPLY @23234 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @23235
  IF ~~ THEN REPLY @21662 GOTO 3
  IF ~~ THEN REPLY @23233 GOTO 4
  IF ~~ THEN REPLY @23238 GOTO 5
  IF ~~ THEN REPLY @23234 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @23240
  IF ~~ THEN REPLY @23241 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @23234 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @23243
  IF ~~ THEN REPLY @23244 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 6
  IF ~~ THEN REPLY @23234 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @23246
  IF ~~ THEN REPLY @23244 DO ~SetGlobal("Know_Emmerich","GLOBAL",1)~ GOTO 6
  IF ~Class(LastTalkedToBy,RANGER_ALL)~ THEN REPLY @23248 GOTO 8
  IF ~Class(LastTalkedToBy,DRUID_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @23248 GOTO 8
  IF ~~ THEN REPLY @23234 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @23251
  IF ~~ THEN REPLY @23234 EXIT
END

IF WEIGHT #3
~NumTimesTalkedToGT(0)~ THEN BEGIN 7
  SAY @23254
  IF ~~ THEN REPLY @21662 GOTO 3
  IF ~~ THEN REPLY @23233 GOTO 4
  IF ~~ THEN REPLY @23257 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @23258
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("Body_Count","GLOBAL",1)~ THEN BEGIN 9
  SAY @23259
  IF ~~ THEN REPLY @540 DO ~AddJournalEntry(@23558,QUEST)~ GOTO 10
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @23263
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Know_Digby_Dead","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~Global("Body_Count","GLOBAL",2)~ THEN BEGIN 11
  SAY @23264
  IF ~Global("Know_Doogal_Story","GLOBAL",0)~ THEN REPLY @23265 DO ~SetGlobal("Know_Doogal_Story","GLOBAL",1)
                                                                    SetGlobal("Know_Dolan_Dead","GLOBAL",1)~ GOTO 12
  IF ~~ THEN REPLY @288 DO ~SetGlobal("Know_Dolan_Dead","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @23267
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @23268
  IF ~~ THEN DO ~AddJournalEntry(@23557,QUEST)~ GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @23269
  IF ~~ THEN REPLY @23270 DO ~AddJournalEntry(@23555,QUEST)~ GOTO 15
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @23272
  IF ~~ THEN REPLY @288 EXIT
END
