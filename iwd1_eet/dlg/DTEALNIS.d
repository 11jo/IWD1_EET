BEGIN ~DTEALNIS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @8716
  IF ~~ THEN REPLY @8717 GOTO 1
  IF ~~ THEN REPLY @8718 GOTO 2
  IF ~~ THEN REPLY @8719 GOTO 3
  IF ~~ THEN REPLY @8720 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @8721
  IF ~~ THEN REPLY @8722 GOTO 3
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @8727
  IF ~~ THEN REPLY @8729 GOTO 3
  IF ~~ THEN REPLY @8738 GOTO 12
  IF ~~ THEN REPLY @8739 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @8740
  IF ~~ THEN REPLY @8741 GOTO 4
  IF ~~ THEN REPLY @8742 GOTO 8
  IF ~~ THEN REPLY @8743 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @8744
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @8745
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @8746
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @8747
  IF ~~ THEN REPLY @8748 GOTO 8
  IF ~~ THEN REPLY @8749 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8751
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @8781
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @8782
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @8784
  IF ~~ THEN REPLY @8785 GOTO 4
  IF ~~ THEN REPLY @8790 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8792
  IF ~~ THEN REPLY @8793 GOTO 3
  IF ~~ THEN REPLY @8794 GOTO 14
  IF ~~ THEN REPLY @8795 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 13
  SAY @8796
  IF ~~ THEN REPLY @8797 GOTO 4
  IF ~~ THEN REPLY @8798 GOTO 8
  IF ~~ THEN REPLY @8799 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8800
  IF ~~ THEN EXIT
END
