// Yeorg

BEGIN Yeorg

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
  SAY @8000
	++ @8001 + YeorgInsulted
	+ ~Alignment(LastTalkedToBy,MASK_GOOD)~ + @8002 + YeorgKnowledge
	+ ~Alignment(LastTalkedToBy,MASK_GENEUTRAL)~ + @8003 + YeorgKnowledge
	+ ~Alignment(LastTalkedToBy,MASK_EVIL)~ + @8004 + EvilYeorg
	++ @8005 EXIT
END

IF ~~ THEN BEGIN YeorgInsulted
  SAY @8006
	++ @8007 + YeorgKnowledge
	++ @8008 EXIT
END

IF ~~ THEN BEGIN EvilYeorg
  SAY @8009
	IF ~~ EXIT
END

IF ~~ THEN BEGIN YeorgKnowledge
  SAY @8010
	++ @8011 EXIT
	++ @8012 EXIT
END


IF ~NumTimesTalkedToGT(0)~ THEN BEGIN SecondMeeting
  SAY @8013
	IF ~~ EXIT
END
