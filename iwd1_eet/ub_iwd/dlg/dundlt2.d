EXTEND_BOTTOM DUNDLT2 1
  IF ~~ THEN REPLY @300000401 GOTO 3
END  

EXTEND_BOTTOM DUNDLT2 2
  IF ~~ THEN REPLY @300000402 GOTO 5
END

ADD_TRANS_ACTION DUNDLT2 BEGIN 3 END BEGIN 0 END ~SetGlobal("CDPresioDuel","GLOBAL",1) SetDialog("")~
ADD_TRANS_ACTION DUNDLT2 BEGIN 5 END BEGIN 0 END ~SetGlobal("CDPresioDuel","GLOBAL",2) SetDialog("")~