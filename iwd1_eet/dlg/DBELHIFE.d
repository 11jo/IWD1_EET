BEGIN ~DBELHIFE~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @15582
  IF ~~ THEN REPLY @15583 GOTO 19
  IF ~~ THEN REPLY @15584 GOTO 1
  IF ~~ THEN REPLY @15592 GOTO 13
END

IF ~~ THEN BEGIN 1
  SAY @15593
  IF ~~ THEN REPLY @15595 GOTO 2
  IF ~~ THEN REPLY @15726 GOTO 19
END

IF ~~ THEN BEGIN 2
  SAY @15749
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @15750
  IF ~~ THEN REPLY @15753 GOTO 6
  IF ~~ THEN REPLY @15754 GOTO 4
  IF ~~ THEN REPLY @15755 GOTO 19
END

IF ~~ THEN BEGIN 4
  SAY @15756
  IF ~~ THEN REPLY @15763 GOTO 19
  IF ~~ THEN REPLY @15764 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @15765
  IF ~~ THEN REPLY @15766 GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15767
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @15768
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15769
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("eePoqct1")~ EXIT
END

IF ~Global("End_Portal","GLOBAL",1)~ THEN BEGIN 9
  SAY @15770
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @15771
  IF ~Global("SPRITE_IS_DEADEverard","GLOBAL",0)~ THEN EXTERN ~DEVERARD~ 35
  IF ~Global("SPRITE_IS_DEADEverard","GLOBAL",1)~ THEN REPLY @15773 GOTO 20
END

IF ~Global("End_Portal","GLOBAL",2)~ THEN BEGIN 11
  SAY @15774
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @15778
  IF ~~ THEN REPLY @15781 GOTO 20
END

IF ~~ THEN BEGIN 13
  SAY @15782
  IF ~~ THEN REPLY @15796 GOTO 14
  IF ~~ THEN REPLY @15798 GOTO 19
END

IF ~~ THEN BEGIN 14
  SAY @15799
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @15802
  IF ~~ THEN REPLY @15804 GOTO 16
  IF ~~ THEN REPLY @15806 GOTO 19
  IF ~~ THEN REPLY @15807 GOTO 6
END

IF ~~ THEN BEGIN 16
  SAY @15808
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @15854
  IF ~~ THEN REPLY @15857 GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @15858
  IF ~~ THEN REPLY @15861 GOTO 6
END

IF ~~ THEN BEGIN 19
  SAY @15862
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("eePoqct1")~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @15863
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 StartCutScene("eePoqCng")~ EXIT
END