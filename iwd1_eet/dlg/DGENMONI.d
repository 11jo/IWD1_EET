BEGIN ~DGENMONI~

IF ~RandomNum(4,0)~ THEN BEGIN 0
  SAY @16900
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,1)~ THEN BEGIN 1
  SAY @16901
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,2)~ THEN BEGIN 2
  SAY @16902
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,3)~ THEN BEGIN 3
  SAY @16903
  IF ~~ THEN EXIT
END

IF ~RandomNum(4,4)~ THEN BEGIN 4
  SAY @16904
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @16905
  IF ~~ THEN EXIT
END
