BEGIN ~DCHURIN~

IF ~NumTimesTalkedTo(0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 0
  SAY @725
  IF ~~ THEN REPLY @730 GOTO 1
  IF ~~ THEN REPLY @731 GOTO 3
  IF ~~ THEN REPLY @732 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @726
  IF ~~ THEN REPLY @733 GOTO 2
  IF ~~ THEN REPLY @734 GOTO 3
  IF ~~ THEN REPLY @735 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @727
  IF ~~ THEN REPLY @736 GOTO 3
  IF ~~ THEN REPLY @737 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @728
  IF ~~ THEN REPLY @738 GOTO 1
  IF ~~ THEN REPLY @739 EXIT
END

IF ~NumTimesTalkedToGT(0)
    Global("Know_Balance","GLOBAL",0)~ THEN BEGIN 4
  SAY @729
  IF ~~ THEN REPLY @740 GOTO 3
  IF ~~ THEN REPLY @741 GOTO 1
  IF ~~ THEN REPLY @742 EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",0)~ THEN BEGIN 5
  SAY @18302
  IF ~~ THEN REPLY @18299 EXIT
END

IF ~GlobalGT("Know_Balance","GLOBAL",0)
    Global("Freed_Everard","GLOBAL",1)~ THEN BEGIN 6
  SAY @18303
  IF ~~ THEN REPLY @11665 EXIT
END
