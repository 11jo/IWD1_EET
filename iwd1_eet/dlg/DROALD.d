BEGIN ~DROALD~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22907
  IF ~~ THEN REPLY @1428 GOTO 1
  IF ~~ THEN REPLY @22909 DO ~RevealAreaOnMap("ID9200")
                              AddJournalEntry(@23560,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @22912 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @22913
  IF ~~ THEN REPLY @22918 GOTO 2
  IF ~~ THEN REPLY @22909 DO ~RevealAreaOnMap("ID9200")
                              AddJournalEntry(@23560,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22922
  IF ~~ THEN REPLY @22909 DO ~RevealAreaOnMap("ID9200")
                              AddJournalEntry(@23560,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22927
  IF ~~ THEN REPLY @22929 DO ~SetGlobal("Roald_Story","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @22932 GOTO 13
  IF ~Global("Know_Wylfdene","GLOBAL",1)~ THEN REPLY @22933 GOTO 14
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22936
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @22937
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @22938
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @22939
  IF ~Global("Know_Wylfdene","GLOBAL",1)~ THEN REPLY @22944 GOTO 8
  IF ~~ THEN REPLY @22953 GOTO 9
  IF ~~ THEN REPLY @22954 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22955
  IF ~~ THEN REPLY @8578 GOTO 9
  IF ~~ THEN REPLY @22954 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @22958
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @22959
  IF ~~ THEN REPLY @22960 GOTO 11
  IF ~~ THEN REPLY @22954 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @22962
  IF ~~ THEN REPLY @22963 GOTO 12
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22965
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @22969
  IF ~~ THEN REPLY @22970 DO ~SetGlobal("Roald_Story","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @22972
  IF ~~ THEN REPLY @22973 GOTO 15
  IF ~~ THEN REPLY @22974 GOTO 16
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @22976
  IF ~~ THEN REPLY @22977 DO ~SetGlobal("Roald_Story","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @376 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @22981
  IF ~~ THEN REPLY @22977 DO ~SetGlobal("Roald_Story","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @376 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 17
  SAY @23011
  IF ~~ THEN REPLY @2556 DO ~SetGlobal("Roald_Story","GLOBAL",1)~ GOTO 1
  IF ~!Global("Roald_Story","GLOBAL",1)~ THEN REPLY @22909 DO ~RevealAreaOnMap("ID9200")~ GOTO 3
  IF ~Global("Roald_Story","GLOBAL",1)~ THEN REPLY @23012 GOTO 4
  IF ~~ THEN REPLY @9817 EXIT
END
