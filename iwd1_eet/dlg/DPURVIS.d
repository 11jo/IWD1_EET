BEGIN ~DPURVIS~

IF WEIGHT #1
~Global("Body_Count","GLOBAL",0)~ THEN BEGIN 0
  SAY @26031
  IF ~~ THEN REPLY @26050 DO ~SetGlobal("Spoke_To_Purvis","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @26051 DO ~SetGlobal("Spoke_To_Purvis","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @26032
  IF ~~ THEN REPLY @26052 GOTO 2
  IF ~~ THEN REPLY @26053 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @26033
  IF ~~ THEN REPLY @26054 GOTO 3
  IF ~~ THEN REPLY @10654 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @26034
  IF ~~ THEN REPLY @607 EXIT
END

IF WEIGHT #2
~Global("Body_Count","GLOBAL",1)~ THEN BEGIN 4
  SAY @26035
  IF ~~ THEN REPLY @26057 DO ~SetGlobal("Know_Digby_Dead","GLOBAL",1)~ GOTO 5
  IF ~~ THEN REPLY @26058 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @26036
  IF ~~ THEN REPLY @26059 GOTO 3
  IF ~~ THEN REPLY @4731 EXIT
END

IF WEIGHT #3
~Global("Body_Count","GLOBAL",2)~ THEN BEGIN 6
  SAY @26037
  IF ~~ THEN REPLY @26061 DO ~SetGlobal("Know_Dolan_Dead","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @26062 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @26038
  IF ~~ THEN REPLY @26063 GOTO 3
  IF ~~ THEN REPLY @4731 EXIT
END

IF WEIGHT #4
~Global("Body_Count","GLOBAL",3)~ THEN BEGIN 8
  SAY @26039
  IF ~~ THEN REPLY @26065 GOTO 9
  IF ~~ THEN REPLY @26066 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @26040
  IF ~~ THEN REPLY @26067 EXIT
END

IF WEIGHT #0
~Global("Thurlow_Murder","GLOBAL",1)~ THEN BEGIN 10
  SAY @26041
  IF ~Global("Spoke_To_Purvis","GLOBAL",1)~ THEN REPLY @26068 GOTO 11
  IF ~Global("Spoke_To_Purvis","GLOBAL",0)
      Global("Know_Purvis","GLOBAL",1)~ THEN REPLY @26813 GOTO 11
  IF ~Global("Spoke_To_Purvis","GLOBAL",0)
      Global("Know_Purvis","GLOBAL",0)~ THEN REPLY @26814 GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @26042
  IF ~~ THEN REPLY @26069 GOTO 12
  IF ~~ THEN REPLY @26070 GOTO 13
END

IF ~~ THEN BEGIN 12
  SAY @26043
  IF ~Global("Spoke_To_Purvis","GLOBAL",1)~ THEN REPLY @26071 GOTO 13
  IF ~Global("Spoke_To_Purvis","GLOBAL",0)
      Global("Know_Purvis","GLOBAL",1)~ THEN REPLY @26071 GOTO 13
  IF ~Global("Spoke_To_Purvis","GLOBAL",0)
      Global("Know_Purvis","GLOBAL",0)~ THEN REPLY @26816 GOTO 19
END

IF ~~ THEN BEGIN 13
  SAY @26044
  IF ~~ THEN REPLY @26072 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @26045
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @26046
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @26047
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @26048
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @26049
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("lwprvesc")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @26817
  IF ~~ THEN GOTO 15
END
