BEGIN ~DSEER~

IF WEIGHT #3
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @24608
  IF ~~ THEN REPLY @24609 DO ~SetGlobal("Found_Seer","GLOBAL",1)~ GOTO 3
  IF ~Global("Know_Tiernon","GLOBAL",2)~ THEN REPLY @24610 DO ~SetGlobal("Found_Seer","GLOBAL",1)
                                                               SetGlobal("Confront_Seer_Tiernon","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @24611 DO ~SetGlobal("Found_Seer","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @24612 DO ~SetGlobal("Found_Seer","GLOBAL",1)~ GOTO 6
END

IF ~~ THEN BEGIN 1
  SAY @24613
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @24614
  IF ~~ THEN REPLY @24615 GOTO 3
  IF ~~ THEN REPLY @24616 GOTO 4
  IF ~~ THEN REPLY @24617 GOTO 6
END

IF ~~ THEN BEGIN 3
  SAY @24618
  IF ~~ THEN REPLY @24619 GOTO 10
END

IF ~~ THEN BEGIN 4
  SAY @24620
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @24621
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 6
  SAY @24622
  IF ~~ THEN REPLY @988 GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @24624
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @24625
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @24626
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
  SAY @24627
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
  SAY @24628
  IF ~~ THEN REPLY @24629 GOTO 12
  IF ~~ THEN REPLY @24630 GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @24631
  IF ~~ THEN REPLY @24632 GOTO 13
  IF ~~ THEN REPLY @24633 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @24634
  IF ~~ THEN REPLY @24635 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @24636
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @24637
  IF ~~ THEN REPLY @24638 GOTO 16
  IF ~~ THEN REPLY @24639 GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @24640
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @24641
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
  SAY @24642
  IF ~~ THEN REPLY @10552 GOTO 19
  IF ~~ THEN REPLY @24644 GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @24645
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @24646
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
  SAY @24647
  IF ~~ THEN DO ~AddXP2DA("ID1EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@18512)
                 AddJournalEntry(@23533,QUEST)~ GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @24648
  IF ~~ THEN REPLY @24649 GOTO 23
  IF ~~ THEN REPLY @24650 GOTO 23
END

IF ~~ THEN BEGIN 23
  SAY @24651
  IF ~CheckStatGT(LastTalkedToBy,13,INT)
      CheckStatLT(LastTalkedToBy,14,WIS)~ THEN REPLY @24652 GOTO 24
  IF ~CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @24652 GOTO 24
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @24654 GOTO 28
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @24654 GOTO 27
  IF ~~ THEN REPLY @24656 GOTO 43
END

IF ~~ THEN BEGIN 24
  SAY @24657
  IF ~GlobalLT("Know_Tiernon","GLOBAL",2)~ THEN REPLY @24658 GOTO 25
  IF ~GlobalGT("Know_Tiernon","GLOBAL",1)~ THEN REPLY @24659 GOTO 25
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @24654 GOTO 28
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @24654 GOTO 27
  IF ~~ THEN REPLY @24656 GOTO 43
END

IF ~~ THEN BEGIN 25
  SAY @24663
  IF ~~ THEN DO ~SetGlobal("Confront_Seer_Tiernon","GLOBAL",2)
                 AddXP2DA("ID1EX12A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@18513)~ GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @24664
  IF ~Gender(LastTalkedToBy,MALE)~ THEN REPLY @24654 GOTO 28
  IF ~Gender(LastTalkedToBy,FEMALE)~ THEN REPLY @24654 GOTO 27
  IF ~~ THEN REPLY @24656 GOTO 43
END

IF ~~ THEN BEGIN 27
  SAY @24667
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @24668
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @24669
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30
  SAY @24670
  IF ~~ THEN REPLY @24671 GOTO 31
  IF ~~ THEN REPLY @24672 GOTO 43
END

IF ~~ THEN BEGIN 31
  SAY @24673
  IF ~~ THEN REPLY @24674 GOTO 32
  IF ~~ THEN REPLY @24675 GOTO 43
END

IF ~~ THEN BEGIN 32
  SAY @24676
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @24677
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @24678
  IF ~~ THEN REPLY @24679 GOTO 35
  IF ~~ THEN REPLY @24672 GOTO 43
END

IF ~~ THEN BEGIN 35
  SAY @24681
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @24682
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37
  SAY @24683
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @24684
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @24685
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @24686
  IF ~~ THEN REPLY @24687 GOTO 41
  IF ~~ THEN REPLY @24672 GOTO 43
END

IF ~~ THEN BEGIN 41
  SAY @24689
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @24690
  IF ~~ THEN REPLY @24672 GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @24692
  IF ~~ THEN REPLY @24693 DO ~StartCutScene("IdLu9500")~ EXIT
  IF ~Global("SPRITE_IS_DEADTiernon","GLOBAL",0)~ THEN REPLY @24694 DO ~StartCutScene("IdLu9501")~ EXIT
  IF ~~ THEN REPLY @24695 GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @24696
  IF ~~ THEN REPLY @24697 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @298 EXIT
END

IF WEIGHT #4
~NumTimesTalkedToGT(0)~ THEN BEGIN 45
  SAY @24699
  IF ~~ THEN REPLY @24700 GOTO 46
  IF ~~ THEN REPLY @24701 DO ~StartCutScene("IdLu9500")~ EXIT
  IF ~Global("SPRITE_IS_DEADTiernon","GLOBAL",0)~ THEN REPLY @24694 DO ~StartCutScene("IdLu9501")~ EXIT
  IF ~~ THEN REPLY @24703 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @24704
  IF ~~ THEN REPLY @24701 DO ~StartCutScene("IdLu9500")~ EXIT
  IF ~Global("SPRITE_IS_DEADTiernon","GLOBAL",0)~ THEN REPLY @24694 DO ~StartCutScene("IdLu9501")~ EXIT
  IF ~~ THEN REPLY @24707 GOTO 44
END

IF WEIGHT #1
~Global("Wylf_Seer_Showdown","GLOBAL",1)
 Global("Seer_Ghost_State","GLOBAL",1)~ THEN BEGIN 47
  SAY @24708
  IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
  SAY @24709
  IF ~~ THEN EXTERN ~DWYLF~ 61
END

IF WEIGHT #0
~Global("Wylf_Seer_Showdown","GLOBAL",2)~ THEN BEGIN 49
  SAY @24710
  IF ~~ THEN REPLY @24711 DO ~SetGlobal("Seer_Death_OK","GLOBAL",1)~ GOTO 50
  IF ~~ THEN REPLY @24712 DO ~SetGlobal("Seer_Death_OK","GLOBAL",1)~ GOTO 50
END

IF ~~ THEN BEGIN 50
  SAY @24713
  IF ~GlobalLT("Confront_Seer_Tiernon","GLOBAL",2)~ THEN REPLY @24714 GOTO 51
  IF ~Global("Confront_Seer_Tiernon","GLOBAL",2)~ THEN REPLY @24714 GOTO 53
  IF ~GlobalLT("Confront_Seer_Tiernon","GLOBAL",2)~ THEN REPLY @24716 GOTO 51
  IF ~Global("Confront_Seer_Tiernon","GLOBAL",2)~ THEN REPLY @24716 GOTO 53
END

IF ~~ THEN BEGIN 51
  SAY @24718
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
  SAY @24719
  IF ~~ THEN REPLY @25827 DO ~StartCutSceneMode()
                              StartCutScene("bcSCut3")~ EXIT
END

IF ~~ THEN BEGIN 53
  SAY @24718
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
  SAY @24722
  IF ~~ THEN REPLY @25828 DO ~StartCutSceneMode()
                              StartCutScene("bcSCut3")~ EXIT
END

IF WEIGHT #2
~Global("Wylf_Seer_Showdown","GLOBAL",1)
 Global("Seer_Ghost_State","GLOBAL",2)~ THEN BEGIN 55
  SAY @24813
  IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @24709
  IF ~~ THEN EXTERN ~DWYLF~ 71
END
