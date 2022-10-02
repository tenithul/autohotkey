$Numpad1::; // Trigger to start the loop.   
if weapon_swap; // Start of the loop. Set inital parameters of the loops. 
{
    weapon_swap=0
    SetNumlockState, off
    Reload
    return
}

weapon_swap=1
    settimer, watcher, -100
    SetNumlockState, on
    return

watcher:; // Nested if statement loop.  

cooldowns := 60; // Set the counter var for your timed event. For example if you want your triggered event to occur at the start of the loop set this higher than the if statement check against it. 

if (cooldowns >= 42); // Set the counter for your timed event. This interval could be seconds, minutes or whatever interval you choose. 

{

  BlockInput, On; // Disable all keyboard input 
  send {Click, Down Right}; // This is to unlock the mouse if you were holding a right click before swapping. 
  send {Click, Up Right}; // This is to unlock the mouse if you were holding a right click before swapping. 

  CoordMode, Mouse, Screen; // This moves the mouse to the safezone to not change targets in the game. 
  MouseMove, 2415,1043

  send {Click, Down Left}; // This is to unlock the mouse if you were holding a right click before swapping. 
  send {Click, Up Left}; // This is to unlock the mouse if you were holding a right click before swapping. 

   Sleep 200; // Primary weapon start swap.
  CoordMode, Mouse, Screen; // Primary weapon is picked up from position #1.
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen;  // Primary weapon is swapped to position #2.
  MouseMove, 2377,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150; // Secondary weapon swap start.
  CoordMode, Mouse, Screen
  MouseMove, 2418,843; // Secondary weapon is picked up from position #1.
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880; // Secondary weapon is swapped to position #2.  Replacement weapon is now in the mouse cursor at positon #2.
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen; // Replacement weapon is swapped to position #1.
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

; // Performs slow while holding the replacement weapon in secondary position. 

  send +9; // Changes to in-game hotbutton bank 1-10 
  send +9; // Changes to in-game hotbutton bank 1-10 
  send -9; // Sends '-' which is bounds to cancel spell.  The number '9' is bound to hotkey bank '9' in-game.
    Sleep 200
  send 5; // Sends the '5' key in-game.
    Sleep 3400
  send 6;  // Sends the '6' key in-game.
  cooldowns := 0; '// Reset cooldowns counter var. 

   Sleep 150
  CoordMode, Mouse, Screen;  // Replacement weapon is picked up from position #1.
  MouseMove, 2418,843
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2420,880; // Replacement weapon is swapped to position #2. Secondary weapon is now in the mouse cursor at positon #2.
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen
  MouseMove, 2418,843; // Secondary weapon is swapped to position #1.
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen; // Primary weapon is picked up from position #2.
  MouseMove, 2374,880
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}

   Sleep 150
  CoordMode, Mouse, Screen; // Primary weapon is swapped to position #1.
  MouseMove, 2374,838
   Sleep 150

   Sleep 150
  send {click down}
   Sleep 25
  send {click up}
  BlockInput, Off

}

else; // Else loop that determins what to do when 'cooldowns' route isn't being triggered.

  send +8; // Changes to in-game hotbutton bank 1-10 
  send +8; // Changes to in-game hotbutton bank 1-10 
  send -9; // Sends '-' which is bounds to cancel spell.  The number '9' is bound to hotkey bank '9' in-game.
    Sleep 150
  send 1; // Sends the '1' key in-game.
    Sleep 3400

  send 9; // Sends the 9' key in-game.
    Sleep 150
  send -9; // Sends '-' which is bounds to cancel spell.  The number '9' is bound to hotkey bank '9' in-game.
  cooldowns += 3.5; // Adds 3.5 seconds to the cooldowns counter based on the Sleep durations. 

  send 2
    Sleep 6050

  send 9; // Sends the 9' key in-game.
    Sleep 100
  send -9
  cooldowns += 6.15; // Adds 6.15 seconds to the cooldowns counter based on the Sleep durations. 

  send 3; // Sends the 9' key in-game.
    Sleep 6050

  send 9; // Sends the 9' key in-game.
    Sleep 150
  send -9; // Sends '-' which is bounds to cancel spell.  The number '9' is bound to hotkey bank '9' in-game.
  cooldowns += 6.15; // Adds 6.15 seconds to the cooldowns counter based on the Sleep durations. 

}

  if weapon_swap; // End of loopp, reset timers and return.
    settimer, watcher, -100
return



$Mbutton::; // Trigger kill button.  This should kill all running loops.  Several nested loops to set a default state with nothing running.  Needs re-evaluation. 
if kill_check
{
    kill_check=0
    SetNumlockState, off
    SetScrollLockState, off
    SetCapsLockState, off
    return
}

kill_everything=1
  settimer, loop_kill, -100
  Reload
  BlockInput, Off
  SetNumlockState, off
  SetScrollLockState, off
  SetCapsLockState, off

loop_kill:
  if kill_everything
    settimer, loop_kill, -100
return
