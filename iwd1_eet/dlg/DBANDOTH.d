BEGIN ~DBANDOTH~

IF WEIGHT #6
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6187
  IF ~Global("PUZZLE_STAIRS_OPEN","GLOBAL",0)
      PartyHasItem("Kalabac")~ THEN REPLY @19609 GOTO 23
  IF ~~ THEN REPLY @6188 GOTO 7
  IF ~~ THEN REPLY @7961 GOTO 8
  IF ~~ THEN REPLY @7962 GOTO 10
  IF ~~ THEN REPLY @7963 EXIT
END

IF WEIGHT #5
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @7964
  IF ~~ THEN REPLY @7965 GOTO 9
  IF ~~ THEN REPLY @7966 GOTO 10
  IF ~~ THEN REPLY @7967 EXIT
  IF ~PartyHasItem("Kalabac")~ THEN REPLY @19609 GOTO 23
END

IF WEIGHT #4
~Global("Bandoth_Quest","GLOBAL",1)~ THEN BEGIN 2
  SAY @7968
  IF ~PartyHasItem("razor")~ THEN REPLY @7969 DO ~TakePartyItem("razor")
                                                  DestroyItem("razor")
                                                  AddXP2DA("ID1EX9E")
                                                  DisplayStringNoNameDlg(LastTalkedToBy,@19533)
                                                  SetGlobal("Bandoth_Quest","GLOBAL",2)~ GOTO 20
  IF ~~ THEN REPLY @7970 GOTO 9
  IF ~~ THEN REPLY @7971 EXIT
END

IF WEIGHT #3
~Global("Bandoth_Quest","GLOBAL",2)~ THEN BEGIN 3
  SAY @7974
  IF ~PartyHasItem("Kalabac")~ THEN REPLY @7977 GOTO 23
  IF ~~ THEN REPLY @7979 GOTO 9
  IF ~~ THEN REPLY @7980 EXIT
  IF ~PartyHasItem("Dver")~ THEN REPLY @19608 GOTO 25
END

IF WEIGHT #2
~Global("Bandoth_Quest","GLOBAL",3)~ THEN BEGIN 4
  SAY @7981
  IF ~Global("PUZZLE_STAIRS_OPEN","GLOBAL",0)
      PartyHasItem("Kalabac")~ THEN REPLY @19609 GOTO 23
  IF ~PartyHasItem("Dver")~ THEN REPLY @7982 GOTO 25
  IF ~~ THEN REPLY @7979 GOTO 9
  IF ~~ THEN REPLY @7993 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @7994
  IF ~~ THEN REPLY @7995 GOTO 10
  IF ~~ THEN REPLY @7996 EXIT
END

IF WEIGHT #1
~Global("Forge_On","GLOBAL",1)~ THEN BEGIN 6
  SAY @7997
  IF ~Global("Forge_On","GLOBAL",1)~ THEN REPLY @7998 GOTO 30
  IF ~~ THEN REPLY @152 GOTO 9
  IF ~~ THEN REPLY @8000 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @8001
  IF ~~ THEN REPLY @1428 GOTO 8
  IF ~~ THEN REPLY @148 GOTO 9
  IF ~~ THEN REPLY @8003 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @8004
  IF ~~ THEN REPLY @8005 GOTO 9
  IF ~~ THEN REPLY @8006 GOTO 10
  IF ~~ THEN REPLY @8007 EXIT
END

IF WEIGHT #0
~False()~ THEN BEGIN 9
  SAY @8008
  IF ~GlobalGT("Saablic_Known","GLOBAL",0)~ THEN REPLY @8009 GOTO 27
  IF ~Global("Eva_Quest","GLOBAL",1)~ THEN REPLY @8010 GOTO 29
  IF ~~ THEN REPLY @8011 GOTO 12
  IF ~~ THEN REPLY @8012 GOTO 5
  IF ~~ THEN REPLY @8013 GOTO 10
  IF ~~ THEN REPLY @8014 EXIT
  IF ~~ THEN REPLY @10465 GOTO 32
END

IF ~~ THEN BEGIN 10
  SAY @8015
  IF ~~ THEN REPLY @8016 DO ~SetGlobal("Dorn_Door","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @8017 DO ~SetGlobal("Dorn_Door","GLOBAL",1)
                             Enemy()~ EXIT
  IF ~~ THEN REPLY @8018 DO ~SetGlobal("Dorn_Door","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @8019
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @8021
  IF ~~ THEN REPLY @8022 GOTO 13
  IF ~~ THEN REPLY @8023 GOTO 9
  IF ~~ THEN REPLY @8024 EXIT
END

IF ~~ THEN BEGIN 13
  SAY @8025
  IF ~~ THEN REPLY @8027 GOTO 14
  IF ~~ THEN REPLY @8028 GOTO 9
  IF ~~ THEN REPLY @8029 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @8030
  IF ~GlobalLT("Bandoth_Quest","GLOBAL",2)~ THEN REPLY @8031 GOTO 15
  IF ~~ THEN REPLY @8028 GOTO 9
  IF ~~ THEN REPLY @8033 EXIT
END

IF ~~ THEN BEGIN 15
  SAY @8034
  IF ~~ THEN REPLY @8035 GOTO 16
  IF ~~ THEN REPLY @8036 GOTO 9
  IF ~~ THEN REPLY @8037 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @8038
  IF ~PartyHasItem("razor")~ THEN REPLY @8039 DO ~TakePartyItem("razor")
                                                  DestroyItem("razor")
                                                  AddXP2DA("ID1EX9E")
                                                  DisplayStringNoNameDlg(LastTalkedToBy,@19533)
                                                  SetGlobal("Bandoth_Quest","GLOBAL",2)~ GOTO 20
  IF ~~ THEN REPLY @8041 GOTO 17
  IF ~~ THEN REPLY @8042 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @8043
  IF ~~ THEN REPLY @8045 DO ~SetGlobal("Bandoth_Quest","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @8046 GOTO 19
  IF ~~ THEN REPLY @8047 GOTO 9
END

IF ~~ THEN BEGIN 18
  SAY @8048
  IF ~~ THEN REPLY @8049 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @8050
  IF ~~ THEN REPLY @8051 DO ~SetGlobal("Bandoth_Quest","GLOBAL",1)~ GOTO 18
  IF ~~ THEN REPLY @8052 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @8053
  IF ~~ THEN REPLY @8054 DO ~SetGlobal("Dorn_Door","GLOBAL",1)~ GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @8057
  IF ~~ THEN REPLY @8059 DO ~AddJournalEntry(@5072,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @8067
  IF ~~ THEN REPLY @8068 EXIT
END

IF ~~ THEN BEGIN 23
  SAY @8069
  IF ~~ THEN REPLY @8070 DO ~AddJournalEntry(@5071,QUEST)~ GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @8071
  IF ~~ THEN REPLY @8073 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8074 EXIT
END

IF ~~ THEN BEGIN 25
  SAY @8075
  IF ~~ THEN REPLY @8076 GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @8077
  IF ~~ THEN REPLY @8078 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @8079
  IF ~~ THEN REPLY @8080 GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @8081
  IF ~~ THEN REPLY @8082 GOTO 9
  IF ~~ THEN REPLY @8083 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @8084
  IF ~~ THEN REPLY @8082 GOTO 9
  IF ~~ THEN REPLY @8085 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @8086
  IF ~~ THEN REPLY @8087 GOTO 31
  IF ~~ THEN REPLY @8089 GOTO 31
  IF ~~ THEN REPLY @8090 EXIT
END

IF ~~ THEN BEGIN 31
  SAY @8093
  IF ~~ THEN REPLY @8094 EXIT
  IF ~~ THEN REPLY @8097 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8098 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @10496
  IF ~~ THEN REPLY @10497 DO ~StartStore("Bandoth",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @10498 GOTO 9
  IF ~~ THEN REPLY @10499 EXIT
END
