BEGIN ~DGENGNT~

IF ~RandomNum(5,1)~ THEN BEGIN 0
  SAY @17094
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
  SAY @17095
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
  SAY @17096
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
  SAY @17097
  IF ~~ THEN EXIT
END

IF ~RandomNumLT(5,6)~ THEN BEGIN 4
  SAY @17098
  IF ~~ THEN EXIT
END