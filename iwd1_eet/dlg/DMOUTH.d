BEGIN ~DMOUTH~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @27438
  IF ~~ THEN REPLY @10552 GOTO 1
  IF ~~ THEN REPLY @27444 GOTO 1
  IF ~~ THEN REPLY @1428 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @27439
  IF ~~ THEN REPLY @27446 GOTO 2
  IF ~~ THEN REPLY @27447 GOTO 2
  IF ~~ THEN REPLY @27448 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @27438
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 3
  SAY @27438
  IF ~~ THEN REPLY @27449 GOTO 1
  IF ~~ THEN REPLY @4435 EXIT
END

IF WEIGHT #0
~PartyHasItem("Skull1")
 PartyHasItem("Skull2")~ THEN BEGIN 4
  SAY @27442
  IF ~~ THEN DO ~TakePartyItem("skull1")
                 TakePartyItem("skull2")
                 AddXP2DA("ID1EX12H")
                 StartCutSceneMode()
                 StartCutScene("duMMBye")~ EXIT
END
