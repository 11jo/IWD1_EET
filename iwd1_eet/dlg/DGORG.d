BEGIN ~DGORG~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @17021
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~Global("Kill_Gorg","GLOBAL",3)~ THEN REPLY @17022 GOTO 11
  IF ~~ THEN REPLY @16926 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @17021
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~Global("Kill_Gorg","GLOBAL",3)~ THEN REPLY @17022 GOTO 11
  IF ~~ THEN REPLY @16926 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @17027
  IF ~~ THEN REPLY @1428 GOTO 3
  IF ~~ THEN REPLY @10755 GOTO 4
  IF ~~ THEN REPLY @17029 GOTO 9
  IF ~Global("Explore_Cave","GLOBAL",3)~ THEN REPLY @17030 GOTO 10
  IF ~~ THEN REPLY @7892 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @17032
  IF ~~ THEN REPLY @148 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @17034
  IF ~~ THEN REPLY @17035 GOTO 5
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @17038
  IF ~Global("SPRITE_IS_DEADFrostbite","GLOBAL",1)~ THEN REPLY @17039 GOTO 12
  IF ~~ THEN REPLY @17040 GOTO 8
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @17043
  IF ~~ THEN REPLY @17044 GOTO 7
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @17047
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @17049
  IF ~~ THEN REPLY @17050 GOTO 6
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @17057
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @17060
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @17062
  IF ~~ THEN REPLY @17063 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @17064
  IF ~~ THEN REPLY @17065 GOTO 13
  IF ~GlobalGT("Kill_Frost","GLOBAL",2)~ THEN REPLY @17066 GOTO 14
  IF ~~ THEN REPLY @17067 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @17071
  IF ~~ THEN REPLY @8082 GOTO 2
  IF ~~ THEN REPLY @17033 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @18369
  IF ~~ THEN REPLY @1582 DO ~Enemy()~ EXIT
END