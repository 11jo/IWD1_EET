BEGIN ~DFROSTBI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8804
  IF ~~ THEN REPLY @8806 GOTO 2
  IF ~~ THEN REPLY @8807 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @8809
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~~ THEN REPLY @8807 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8811
  IF ~~ THEN REPLY @1428 GOTO 3
  IF ~~ THEN REPLY @8812 GOTO 4
  IF ~~ THEN REPLY @8813 GOTO 5
  IF ~Global("Know_Sacrifices","GLOBAL",1)~ THEN REPLY @8814 GOTO 8
  IF ~Global("Kill_Frost","GLOBAL",3)~ THEN REPLY @17356 GOTO 9
  IF ~~ THEN REPLY @607 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8818
  IF ~~ THEN REPLY @2601 GOTO 2
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8820
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @1436 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @8822
  IF ~~ THEN REPLY @8823 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8824
  IF ~~ THEN REPLY @8825 GOTO 7
  IF ~~ THEN REPLY @2601 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @8827
  IF ~~ THEN REPLY @1582 DO ~Enemy()
                             ActionOverride(LastTalkedToBy,Attack(Myself))~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8829
  IF ~~ THEN REPLY @8825 GOTO 7
  IF ~~ THEN REPLY @2601 GOTO 2
END

IF ~~ THEN BEGIN 9
  SAY @20
  IF ~~ THEN REPLY @8825 GOTO 7
  IF ~~ THEN REPLY @2601 GOTO 2
END
