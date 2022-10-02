#NoEnv
#MaxThreadsPerHotkey 4
Process,priority,,High 
#IfWinActive

$5::
if one_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
one_attack=1
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    settimer, one_loop, -90
    SetNumlockState, on
    return

one_loop:
  send +9
  send +9
  send -9
    Sleep 100
  send 1
    Sleep 3250

  send 9
    Sleep 100
  send -9

    Sleep 100
  send 2
    Sleep 3250

  send 9
    Sleep 100
  send -9

  send 3
    Sleep 6150

  send 9
    Sleep 100


  if one_attack
    settimer, one_loop, -90
return

$2::
if two_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
two_attack=1
    one_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    settimer, two_loop, -90
    SetNumlockState, on
    return

two_loop:
  send +5
  send -9
    Sleep 200
  send 1
    Sleep 3400
  send -9
    Sleep 200
  send 2
    Sleep 3400
  send -9
    Sleep 200
  send 3
    Sleep 3400
  send -9
    Sleep 200
  send 4
    Sleep 3400
  send -9
    Sleep 200
  send 5
    Sleep 3400
  send -9
    Sleep 200
  send 6
    Sleep 3400
  send -9
    Sleep 200
  send 7
    Sleep 3400
  send -9
    Sleep 200
  send 8
    Sleep 3400

  if two_attack
    settimer, two_loop, -90
return


$3::
if three_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
three_attack=1
    one_attack=0
    two_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    settimer, three_loop, -90
    SetNumlockState, on
    return

three_loop:
  send +2
  send +2
  send -9
    Sleep 200
  send 1
    Sleep 4300
  send -9
    Sleep 300
  send 2
    Sleep 3400
  send -9
    Sleep 300
  send 3
    Sleep 4300
  send -9
    Sleep 300
  send 4
    Sleep 3400
  send -9
    Sleep 300
  send 5
    Sleep 4300
  send -9
    Sleep 300
  send 6
    Sleep 3400
  send -9
    Sleep 300
  send 7
    Sleep 4300
  send -9
    Sleep 300
  send 8
    Sleep 3400

  if three_attack
    settimer, three_loop, -90
return

$4::
if four_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}

four_attack=1
    one_attack=0
    two_attack=0
    three_attack=0
    five_attack=0
    seven_attack=0
    settimer, watcher1, -100
    SetNumlockState, on
    return

watcher1:

cooldowns := 60
Loop {

if (cooldowns >= 42)

{

; primary weapon start swap
 
  BlockInput, On
  send {Click, Down Right}
  send {Click, Up Right} 

  CoordMode, Mouse, Screen
  MouseMove, 2415,1043

  send {Click, Down Left}
  send {Click, Up Left}

   Sleep 200
  CoordMode, Mouse, Screen
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2377,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; secondary weapon swap start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; cast slow 60 seconds

  send +9
  send +9
  send -9
    Sleep 200
  send 5
    Sleep 3400
  send 6

  cooldowns := 0

; secondary weapon swap-back start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; primary weapon swap-back start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2374,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}
  BlockInput, Off

}

else
  send +8
  send +8
  send -9
    Sleep 150
  send 1
    Sleep 3400

  send 9
    Sleep 150
  send -9
  cooldowns += 3.5

  send 2
    Sleep 6050

  send 9
    Sleep 100
  send -9
  cooldowns += 6.15

  send 3
    Sleep 6050

  send 9
    Sleep 150
  send -9
  cooldowns += 6.15

}

  if four_attack
    settimer, watcher1, -100
return


$7::
if seven_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
seven_attack=1
    one_attack=0
    two_attack=0
    three_attack=0
    five_attack=0
    settimer, seven_loop, -90
    SetNumlockState, on
    return

seven_loop:
  send +0
  send +0
  send -9
    Sleep 200
  send 1
    Sleep 3400

  send 9
    Sleep 200
  send -9

  send 2
    Sleep 6200

  send 9
    Sleep 200

  if seven_attack
    settimer, seven_loop, -90
return


$Mbutton::
if five_attack
{
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
five_attack=1
    one_attack=0
    two_attack=0
    three_attack=0
    four_attack=0
    seven_attack=0
    settimer, five_loop, -90
    SetNumlockState, on
    return

five_loop:
  send +3
  send -9
    Sleep 100
  send 1
    Sleep 3200
  send 9
    Sleep 100
  send 2
    Sleep 3200
  send 9
    Sleep 100
  send 3
    Sleep 3200
  send 9
    Sleep 100
  send 4
    Sleep 3200
  send 9
    Sleep 100
  send 5
    Sleep 3200
  send 9
    Sleep 100
  send 6
    Sleep 3200
  send 9
    Sleep 100
  send 1
    Sleep 3200
  send 9
    Sleep 100
  send 2
    Sleep 3200
  send 9
    Sleep 100
  send 3
    Sleep 3200
  send 9
    Sleep 100
  send 4
    Sleep 3200
  send 9
    Sleep 100
  send 5
    Sleep 3200
  send 9
    Sleep 100
  send 6
    Sleep 3200
 
  if five_attack
    settimer, five_loop, -90
return

$1::
if six_attack
{
    six_attack=0
    four_attack=0
    one_attack=0
    two_attack=0
    three_attack=0
    five_attack=0
    seven_attack=0
    SetNumlockState, off
    Reload
    return
}
six_attack=1 
    four_attack=0
    one_attack=0
    two_attack=0
    three_attack=0
    five_attack=0
    seven_attack=0
    settimer, watcher, -100
    SetNumlockState, on
    return

watcher:

cooldowns := 60
Loop {

if (cooldowns >= 42)

{

; primary weapon start swap
 
  BlockInput, On
  send {Click, Down Right}
  send {Click, Up Right} 

  CoordMode, Mouse, Screen
  MouseMove, 2415,1043

  send {Click, Down Left}
  send {Click, Up Left}


   Sleep 200
  CoordMode, Mouse, Screen
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2377,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; secondary weapon swap start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; cast slow 60 seconds

  send +9
  send +9
  send -9
    Sleep 200
  send 5
    Sleep 3400
  send 6

  cooldowns := 0

; secondary weapon swap-back start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; primary weapon swap-back start

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2374,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}
  BlockInput, Off

}

else
  send +9
  send -9
  send 1
    Sleep 6050
  send 9
    Sleep 100
  cooldowns += 6.15
}
  if six_attack
    settimer, watcher, -100
return


$`::
if kill_check
{
    kill_check=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}

kill_everything=1
  settimer, loop_kill, -90
  Reload
  SetNumlockState, off
  SetScrollLockState, off
  SetCapsLockState, off

loop_kill:
  send -9
  if kill_everything
    settimer, loop_kill, -90
return
