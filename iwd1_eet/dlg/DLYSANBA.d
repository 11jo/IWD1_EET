BEGIN ~DLYSANBA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @18710
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~~ THEN REPLY @1422 DO ~EscapeArea()~ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @1423
  IF ~~ THEN REPLY @1420 GOTO 2
  IF ~~ THEN REPLY @1422 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1427
  IF ~~ THEN REPLY @1428 DO ~SetGlobal("Know_Lysan","GLOBAL",1)~ GOTO 3
  IF ~~ THEN REPLY @1429 GOTO 11
  IF ~~ THEN REPLY @1430 GOTO 12
  IF ~~ THEN REPLY @1431 GOTO 5
  IF ~~ THEN REPLY @1432 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1433
  IF ~~ THEN REPLY @1434 GOTO 4
  IF ~~ THEN REPLY @1435 GOTO 2
  IF ~~ THEN REPLY @1436 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @1437
  IF ~~ THEN REPLY @1438 GOTO 5
  IF ~~ THEN REPLY @1435 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @1441
  IF ~~ THEN REPLY @1442 GOTO 6
  IF ~~ THEN REPLY @1443 GOTO 7
  IF ~~ THEN REPLY @1444 GOTO 8
  IF ~~ THEN REPLY @1445 GOTO 9
  IF ~~ THEN REPLY @1446 GOTO 10
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @1449
  IF ~~ THEN REPLY @1450 GOTO 7
  IF ~~ THEN REPLY @1451 GOTO 8
  IF ~~ THEN REPLY @1452 GOTO 9
  IF ~~ THEN REPLY @1453 GOTO 10
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @1456
  IF ~~ THEN REPLY @1457 GOTO 6
  IF ~~ THEN REPLY @1451 GOTO 8
  IF ~~ THEN REPLY @1460 GOTO 9
  IF ~~ THEN REPLY @1453 GOTO 10
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @1464
  IF ~~ THEN REPLY @1465 GOTO 6
  IF ~~ THEN REPLY @1466 GOTO 7
  IF ~~ THEN REPLY @1467 GOTO 9
  IF ~~ THEN REPLY @1468 GOTO 10
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @1469
  IF ~~ THEN REPLY @1465 GOTO 6
  IF ~~ THEN REPLY @1466 GOTO 7
  IF ~~ THEN REPLY @1451 GOTO 8
  IF ~~ THEN REPLY @1468 GOTO 10
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @1478
  IF ~~ THEN REPLY @1465 GOTO 6
  IF ~~ THEN REPLY @1466 GOTO 7
  IF ~~ THEN REPLY @1451 GOTO 8
  IF ~~ THEN REPLY @1467 GOTO 9
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @1485
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @1488
  IF ~~ THEN REPLY @1489 GOTO 13
  IF ~~ THEN REPLY @1447 GOTO 2
  IF ~~ THEN REPLY @1440 DO ~EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 13
  SAY @1495
  IF ~~ THEN REPLY @1496 GOTO 2
  IF ~~ THEN REPLY @1497 DO ~EscapeArea()~ EXIT
END
