BEGIN ~DCOOK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9794
  IF ~~ THEN REPLY @9795 GOTO 1
  IF ~~ THEN REPLY @9796 GOTO 2
  IF ~~ THEN REPLY @9797 DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @9798 DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @9799
  IF ~~ THEN REPLY @9803 GOTO 4
  IF ~~ THEN REPLY @9805 DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @9807
  IF ~~ THEN REPLY @9808 DO ~EscapeArea()~ GOTO 4
  IF ~~ THEN REPLY @9809 DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @9810 DO ~SetGlobal("Fleezum_Call","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @9811
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 4
  SAY @9812
  IF ~~ THEN REPLY @9813 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9814
  IF ~~ THEN EXIT
END
