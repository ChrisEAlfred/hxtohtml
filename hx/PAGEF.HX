&ls15
       sheet:  2.  &biF2 USER-DEFINED FUNCTIONS
               3.  &biF3 PRESET FUNCTIONS
               3.  &biF3 SELECT a FUNCTION for DRAWING
               4.  &biF4 DRAW command
               4.  &biF4 STORE command
               5.  &biF5 ZERO command
               5.  &biF5 INVERT command
               5.  &biF5 UNLOCK command
               6.  &biF6 LOAD/SAVE FUNCTIONS
               6.  &biF6 LOAD/SAVE VOICES


&ls12 For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.&ls10

 For HELP with HELP PAGES , touch &bi12THIS or type: H1<return>

 
 USER DEFINED FUNCTIONS  are curves drawn on PAGE F and used on
 PAGE 7 letting you shape response curves for &bi73KEYVEL, &bi73KEYNUM,
 &bi72CONTROL faders, and &bi73KEYPRS. Some examples: a control fader
 could be given an exponential response, rather than linear; by
 doing a multi-voice load on Page 2, cross-fades between voices
 can be performed by KEYNUM or keyboard control faders; touch
 sensitivity of music keyboard can be varied.
 Sixteen functions letters, A to P, are presented on the bottom  of the screen.

 For a drawn function to have an effect, it must be patched to
 desired control parameter on Page 7. A function can be drawn
 on the screen with lightpen, similar to &bi64WAVEFORM DRAWING on
 PAGE 6. For detailed work, the alphanumeric keyboard can be
 used. All this works in real time, so that if a function is
 included in a PAGE 7 patch, and is being drawn, you can hear
 the results immediately.

  PRESET FUNCTIONS 
 Three preset functions are loaded into function slots A, B and
 C at CMI start-up time. Function A is the default setting
 (x=y) and is not able to be re-drawn. Functions B and C are
 specific to &bi710AUX. LEVEL on Page 7 and are such that a &bi72CONTROL
 FADER or &bi73KEYNUM can be used to pan smoothly between two voices
 loaded in a &bi310multi-voice register. To do this, load a register
 with two voices on Page 2, go to PAGE 7 and patch AUX. LEVEL
 on one voice to KEYNUM,C or a control with function B. On the
 second voice, patch AUX. LEVEL to KEYNUM,C or a control with
 function C. This can improve realism with MODE 4 sounds, as
 well as allowing you to create some very interesting effects.
 Unlike function "A", functions "B" and "C" can be re-drawn but
 once re-drawn, the original 'system defined' functions will be
 lost until the CMI is next re-booted.

 TO SELECT a FUNCTION for DRAWING  point LIGHTPEN at a function
 letter. Then DRAW desired function curve. Alternatively, the
 cursor control keys and POINT/LEVEL assignment may be used for
 fine detail. When drawing is complete, point lightpen at STORE
 or type ST,function letter<return>. A bar will appear above
 stored function signifying that the function is "locked". To
 perform further modification, the function must be UNLOCKED.
 See &biF5UNLOCK description.
 
 DRAW command      TYPE:           LIGHTPEN:
                 D,x<return>     ==>x
                                 ==>DRAW
       where x = function letter A to P

This command displays current contents of selected function. By using DRAW, then selecting another function letter and STORING, curves may transferred between functions.

 STORE command     TYPE:           LIGHTPEN:
                 ST,x<return>    ==>x
                                ==>STORE
       where x = function letter B to P

 Currently displayed curve is stored in function slot and a bar
 appears above function letter. This signifies overwrite
 protection. Opposite of UNLOCK. If functions are loaded from
 disk via &bi75CONTROL files (.CO), they are automatically assigned
 over-write protection.
 NOTE: Function A is a system preset and permanently protected.
 
 ZERO command      TYPE:           LIGHTPEN:
                 Z<return>       ==>ZERO

 Currently displayed curve is zeroed.

 INVERT command    TYPE:           LIGHTPEN:
                 I<return>       ==>INVERT

 Currently displayed curve is inverted horizontally. This is
 useful, for example, when panning between two voices loaded in
 one register using one control fader.

 UNLOCK command    TYPE:           LIGHTPEN:
                 UN,x<return>    ==>x
                                 ==>UNLOCK
       where x = function letter B to P

 Opposite of STORE. Function loses over-write protection and
 may be re-drawn. Bar disappears above function letter.
 NOTE: Function A is a system preset and cannot be UNLOCKED.
 
 LOAD/SAVE FUNCTIONS 
 PAGE F function curves are stored as part of PAGE 7 CONTROL 
 to which they relate. If a control file contains several
 patches making use of functions, then saving that control file
 to disk will also save the appropriate functions as part of
 that control file. Loading that control file will then restore
 those functions to their appropriate slots in memory. Function
 data already in those slots will be overwritten. If it is
 desired to preserve functions already loaded into memory, but
 the slots occupied clash with the function letters specified
 in the control file to be loaded, then a new load command
 option may be used. The "S" for SHUFFLE option causes the
 function tables contained in the control file being loaded to
 be assigned to the first free slots in memory, regardless of
 their function letters. The CMI then adjusts any function
 letters specified in patches to match the position of the
 actual function within memory. To save the adjusted patches to
 disk, save the control file in the normal way. A maximum of 10
 function tables can be stored in a control file.
    
 TO SELECT any loaded VOICE  see PAGE 4, &bi410HELP-SHEET-10
 TO LOAD/SAVE VOICES or INSTRUMENTS  see PAGE 1, &bi18HELP-SHEET-8
                                                                                                       