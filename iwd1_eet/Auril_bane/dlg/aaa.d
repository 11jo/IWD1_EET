BEGIN ~CMDWARF~

CHAIN
IF ~!Allegiance(Myself,ENEMY)
    RandomNum(5,1)~ THEN CMDWARF 01
   @4034615
EXIT

CHAIN
IF ~!Allegiance(Myself,ENEMY)
    RandomNum(5,2)~ THEN CMDWARF 02
   @4034616
EXIT

CHAIN
IF ~!Allegiance(Myself,ENEMY)
    RandomNum(5,3)~ THEN CMDWARF 03
   @4034617
EXIT

CHAIN
IF ~!Allegiance(Myself,ENEMY)
    RandomNum(5,4)~ THEN CMDWARF 04
   @4034618
EXIT

CHAIN
IF ~!Allegiance(Myself,ENEMY)
    RandomNum(5,5)~ THEN CMDWARF 05
   @4034619
EXIT

CHAIN
IF WEIGHT #-1
~GlobalGT("King_Crown","GLOBAL",2)~ THEN CMDWARF 08
   @4034636
EXIT

CHAIN
IF WEIGHT #-10
~Allegiance(Myself,ENEMY)~ THEN CMDWARF 06
   @4034620
EXIT

CHAIN
IF ~True()~ THEN CMDWARF 07
   @4034615
EXIT