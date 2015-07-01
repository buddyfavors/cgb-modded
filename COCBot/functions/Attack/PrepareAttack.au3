;Checks the troops when in battle, checks for type, slot, and quantity.
;Saved in $atkTroops[SLOT][TYPE/QUANTITY] variable

Func PrepareAttack($Remaining = False) ;Assigns troops
  If $Remaining Then
	  SetLog("Checking remaining unused troops", $COLOR_BLUE)
   Else
	  SetLog("Initiating attack", $COLOR_RED)
	  SetLog("Barbarian +Archer", $COLOR_RED)
   EndIf
  _CaptureRegion()
	$atkTroops[0][0] = $eBarb
	$atkTroops[1][0] = $eArch

	If $Remaining Then
		$atkTroops[0][1] = 0
		$atkTroops[1][1] = 0
	Else
		$atkTroops[0][1] = 100
		$atkTroops[1][1] = 100
	EndIf
  For $i = 0 To 1
		SetLog("-" & NameOfTroop($atkTroops[$i][0]) & " " & $atkTroops[$i][1], $COLOR_GREEN)
  Next
EndFunc   ;==>PrepareAttack
