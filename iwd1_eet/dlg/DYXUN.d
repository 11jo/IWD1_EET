BEGIN ~DYXUN~

IF ~True()~ THEN BEGIN 0
  SAY @1981
  IF ~~ THEN REPLY @2014 DO ~AddJournalEntry(@4347,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @2013 DO ~AddJournalEntry(@4361,QUEST)~ GOTO 2
  IF ~~ THEN REPLY @2015 DO ~AddJournalEntry(@4351,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @2016 DO ~AddJournalEntry(@4353,QUEST)~ GOTO 5
  IF ~~ THEN REPLY @2017 DO ~AddJournalEntry(@4358,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @2018 DO ~AddJournalEntry(@4359,QUEST)
                             Enemy()~ GOTO 8
END

IF ~~ THEN BEGIN 1
  SAY @1982
  IF ~~ THEN REPLY @2019 GOTO 2
  IF ~~ THEN REPLY @2020 GOTO 9
END

IF ~~ THEN BEGIN 2
  SAY @1983
  IF ~~ THEN REPLY @2021 GOTO 10
  IF ~Race(LastTalkedToBy,ELF)~ THEN REPLY @2023 GOTO 11
  IF ~~ THEN REPLY @2024 GOTO 13
  IF ~~ THEN REPLY @2026 GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @16807
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @16808
  IF ~~ THEN REPLY @2027 GOTO 15
  IF ~~ THEN REPLY @2029 GOTO 16
  IF ~~ THEN REPLY @2030 GOTO 18
END

IF ~~ THEN BEGIN 5
  SAY @16811
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @16812
  IF ~~ THEN REPLY @2031 GOTO 19
  IF ~~ THEN REPLY @2029 GOTO 16
  IF ~~ THEN REPLY @2033 GOTO 2
END

IF ~~ THEN BEGIN 7
  SAY @1987
  IF ~~ THEN REPLY @2034 GOTO 21
  IF ~~ THEN REPLY @2035 GOTO 3
END

IF ~~ THEN BEGIN 8
  SAY @1988
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1989
  IF ~~ THEN REPLY @2039 GOTO 23
  IF ~~ THEN REPLY @2040 GOTO 25
  IF ~~ THEN REPLY @2041 GOTO 18
  IF ~~ THEN REPLY @2042 GOTO 2
END

IF ~~ THEN BEGIN 10
  SAY @1990
  IF ~~ THEN REPLY @2043 GOTO 27
  IF ~~ THEN REPLY @2044 GOTO 28
END

IF ~~ THEN BEGIN 11
  SAY @16824
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @16825
  IF ~~ THEN REPLY @2045 GOTO 29
  IF ~~ THEN REPLY @2046 GOTO 16
END

IF ~~ THEN BEGIN 13
  SAY @16827
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @16829
  IF ~~ THEN REPLY @2047 GOTO 30
  IF ~~ THEN REPLY @2048 GOTO 29
  IF ~~ THEN REPLY @2049 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @1993
  IF ~~ THEN REPLY @2050 GOTO 31
  IF ~~ THEN REPLY @2053 GOTO 16
  IF ~~ THEN REPLY @2054 GOTO 32
END

IF ~~ THEN BEGIN 16
  SAY @16841
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @16842
  IF ~~ THEN REPLY @2064 GOTO 21
  IF ~~ THEN REPLY @2066 GOTO 21
END

IF ~~ THEN BEGIN 18
  SAY @1995
  IF ~~ THEN REPLY @2067 GOTO 16
  IF ~~ THEN REPLY @2068 GOTO 34
  IF ~~ THEN REPLY @2092 GOTO 35
END

IF ~~ THEN BEGIN 19
  SAY @16847
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @16848
  IF ~~ THEN REPLY @2093 GOTO 16
  IF ~~ THEN REPLY @2094 GOTO 15
END

IF ~~ THEN BEGIN 21
  SAY @16850
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
  SAY @16851
  IF ~~ THEN REPLY @2095 GOTO 38
  IF ~~ THEN REPLY @2096 GOTO 38
  IF ~~ THEN REPLY @2100 GOTO 39
END

IF ~~ THEN BEGIN 23
  SAY @16854
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24
  SAY @16856
  IF ~~ THEN REPLY @2047 GOTO 30
  IF ~~ THEN REPLY @2102 GOTO 3
END

IF ~~ THEN BEGIN 25
  SAY @16858
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26
  SAY @16859
  IF ~~ THEN REPLY @2103 GOTO 41
  IF ~~ THEN REPLY @2104 GOTO 16
END

IF ~~ THEN BEGIN 27
  SAY @2000
  IF ~~ THEN REPLY @2105 GOTO 3
END

IF ~~ THEN BEGIN 28
  SAY @2001
  IF ~~ THEN REPLY @2106 GOTO 3
  IF ~~ THEN REPLY @2107 GOTO 19
END

IF ~~ THEN BEGIN 29
  SAY @1130
  IF ~~ THEN REPLY @2108 GOTO 16
  IF ~~ THEN REPLY @2030 GOTO 18
END

IF ~~ THEN BEGIN 30
  SAY @2388
  IF ~~ THEN REPLY @2108 GOTO 16
  IF ~~ THEN REPLY @2030 GOTO 18
END

IF ~~ THEN BEGIN 31
  SAY @2389
  IF ~~ THEN REPLY @2112 GOTO 19
  IF ~~ THEN REPLY @2113 GOTO 16
END

IF ~~ THEN BEGIN 32
  SAY @16870
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @16871
  IF ~~ THEN REPLY @2114 GOTO 16
END

IF ~~ THEN BEGIN 34
  SAY @2006
  IF ~~ THEN REPLY @2092 GOTO 35
  IF ~~ THEN REPLY @2102 GOTO 16
END

IF ~~ THEN BEGIN 35
  SAY @16874
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
  SAY @16875
  IF ~~ THEN REPLY @2117 GOTO 37
  IF ~~ THEN REPLY @2102 GOTO 16
END

IF ~~ THEN BEGIN 37
  SAY @4592
  IF ~~ THEN REPLY @2108 GOTO 16
END

IF ~~ THEN BEGIN 38
  SAY @2009
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 39
  SAY @16879
  IF ~~ THEN DO ~Enemy()~ GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @16880
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 41
  SAY @2011
  IF ~~ THEN REPLY @2124 GOTO 16
  IF ~~ THEN REPLY @2125 GOTO 18
END
