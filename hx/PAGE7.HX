 
&ls12sheet:                              sheet:

 2.   &bi72CONTROL PARAMETERS             11.   &bi711ATTACK
 2.   &bi72CONTROLS/SWITCHES on KEYBOARD  12.   &bi712SLUR
 3.   &bi73KEYBOARD FUNCTIONS             12.   &bi712GLISSANDO/PORTAMENTO
 4.   &bi74FUNCTIONS - User Defined       13.   &bi713PITCHBEND/BENDWIDTH
 4.   &bi74ASSIGN to CONTROL PARAMETERS   14.   &bi714DEAD-SPOT
 5.   &bi75CONTROL FILENAME               14.   &bi714START SEGMENT
 6.   &bi76LINK CONTROL FILE to VOICE     14.   &bi714SUSTAIN
 6.   &bi76SAVE/LOAD CONTROL FILE         15.   &bi715LOOP
 8.   &bi78QUICK REFERENCE for patches    16.   &bi716B/F LOOP
 9.   &bi79MODE                           16.   &bi716VIBRATO
10.   &bi710MAIN/AUX. LEVEL                17.   &bi717VOICE selection
10.   &bi710FILTER                         17.   &bi717RESET PAGE 7
11.   &bi711DAMPING&ls10

&ls10 For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.

 For HELP with HELP PAGES , touch &bi12THIS or type: H1<return>
  THE CONTROL PARAMETERS  displayed on PAGE 7 consist of a number
 of operational and expressive factors which can be selected,
 adjusted or patched independently for any loaded &bi717VOICE or
 saved as part of a voice. They are arranged as a table of
 variables for assignment. Either the <arrow> keys or LIGHTPEN
 can be used to TAB to the value of each parameter. A new value
 may be assigned according to the TYPE of the parameter -
  CONTROL TYPE: Discretely variable, or "sliding". May be
                assigned a number or patched to a  CONTROL .
   SWITCH TYPE: Two-state, or "on/off". May be set either
                "ON" or "OFF", or patched to a  SWITCH .
 THE KEYBOARD CONTROLS and SWITCHES  on the MASTER KEYBOARD (and
 optional FOOTPEDALS) correspond directly to the two types of
 control parameters - sliding and on/off. Dynamic readout of
 control/switch settings on bottom right-hand corner of screen.
 Any control parameter (except two) may be patched to a "device"
 of the matching type by assigning one of the following names:
                   devices              names               
            Keyboard controls = CONTRL1, CONTRL2, CONTRL3
            Keyboard switches = SWIT1, SWIT2
                   Footpedals = SWIT3, SWIT4, SWIT5
             3 extra controls = CONTRL4, CONTRL5, CONTRL6
 Software controls && switches = CONTRL1-64, SWIT 1-64
 (for MCL - PAGE C)
 
 KEYVEL  is key velocity, computed by the music keyboard for each
 key that is played. The &bi710LEVEL and &bi711ATTACK control parameters
 can both be patched to the KEY VELOCITY function for touch
 control of the voice's volume and (in &bi79MODE 4) attack time.

 KEYNUM  is similar in operation to KEYVEL, except that the data
 controlling the effect is derived from the number of that key
 from the left side of the music keyboard. Lowest F generates
 a KEYNUM of 0. Highest F generates a KEYNUM of 72.
 KEYNUM data can be used for cross-fades between &bi310multi-voice
 registers or to control filter response over the keyboard.

 KEYPRS  is key pressure. This is not generated by the CMI music
 keyboard. This patch makes use of the continuous key after-
 pressure data generated by many MIDI devices. Similar in
 operation to CONTRL patches, with the same range, 0 to 127.
 
 KEYREL  is key release. This is not generated by the CMI music
 keyboard, and presently is not patchable to any effect. It
 will make use of key release data generated by other MIDI
 equipment.
  FUNCTIONS  - User Defined are curves drawn on &biF1PAGE F and used on
 PAGE 7 letting you draw response curves for KEYVEL, KEYNUM,
 control faders, and KEYPRS. Some examples: a control fader
 could be given an exponential response, rather than linear; by
 doing a multi-voice load on Page 2, cross-fades between voices
 can be performed by KEYNUM or keyboard control faders; touch
 sensitivity of music keyboard can be varied.
 Sixteen functions, A to P, are possible as seen on Page F. For
 compact display, only functions A to J are lightpen hittable
 on Page 7. Function A is the default (linear) and is not seen
 if patched. If a function is not allowed for a particular
 patch, a warning message "UNRECOGNIZED ITEM" is displayed.

 To include a FUNCTION in a patch     TYPE:          LIGHTPEN: 
                                     PATCH,x<set>   x:PATCH
       where PATCH = KEYVEL, KEYNUM, KEYPRS, CONTROL
                 x = function letter

EXAMPLES:       KEYVEL,C<set>     C6,P<set>     KEYNUM,M<set>

 ASSIGN TO CONTROL PARAMETERS  by FIRST using <arrow> keys or
 LIGHTPEN to TAB to desired item; THEN type or use lightpen as
 indicated below to make assignments. The LIGHTPEN "targets"
 are located in a MENU at the bottom of the display page.
 
  To SET value of CONTROL-TYPE  TYPE:       LIGHTPEN:  
                                n<set>      <ZERO>
   where:  n  =  number - numeric assignment (see PAGE 1 HELP)
  To SET SWITCH-TYPE ON or OFF  TYPE:       LIGHTPEN:  
                                ON<set>     <ON>
                                OFF<set>    <OFF>
  To PATCH                      TYPE:       LIGHTPEN:  
       CONTROL number (m) -     Cm<set>     <TENS-UNITS-CONTRL>
        SWITCH number (n) -     Sn<set>     <TENS-UNITS-SWITCH>
             KEY VELOCITY -     KEYVEL<set> <KEYVEL>
               KEY NUMBER -     KEYNUM<set> <KEYNUM>
where: m = CONTRL number 1-6, 7-64 for MCL.   Examples: C2<set>
       n = SWIT number 1-5, 6-64 for MCL.               S4<set>

 A CONTROL FILE  (.CO suffix) can be &bi76SAVED on the RH disk to
 preserve the setup of control/function patching for a voice.
 By &bi77LOADING the file, all settings, patches and functions will
 be restored. A control file can be LINKED to a voice, causing
 it to be loaded  automatically  whenever that voice is loaded.

 NOTE: If no control filename is supplied, current Page 7
 setting is saved as part of the voice. However, any PAGE F
 functions must be saved in a control filename.
  TO SET CONTROL FILENAME for current VOICE  use <arrow> keys or
 LIGHTPEN to TAB to CONTROL FILE, TYPE: filename<set>
   where: filename  =  1-8 character filename (see PAGE 2 HELP)

 This effectively assigns a name to the displayed setup of the
 control parameters. When a VOICE is saved and the LNK command
 is used, this name is saved as part of the voice file. If the
 name is not  blank , loading the voice will cause the CONTROL
 FILE of that name to be loaded also - the control file is thus
  LINKED  to the voice.

 TO LINK CONTROL FILENAME to current VOICE  TYPE: LNK<return>
 This writes the displayed CONTROL FILENAME to the VOICE FILE
 for the currently selected voice (like saving just this part
 of the voice). To UNLINK a control file, LINK a  blank  name.

 TO SET BLANK CONTROL FILENAME      TYPE: <space><set>
   where: <space>  =  a space, i.e. " "

 TO SAVE CONTROL FILE setting                   TYPE:
  within a voice file, but with no functions -  S<return>
  to use displayed CONTROL FILENAME    -  S,CO,filename<return>
  to use new CONTROL FILENAME           -  S,CO,newname<return>
   where: filename  =  1-8 character filename (see PAGE 2 HELP)
  EXAMPLES:      S,CO,PLUCK<return>    Save PLUCK.CO
             or S,PLUCK.CO<return>    Same effect as above
 The setup of all CONTROL PARAMETERS for selected voice will
 be SAVED. NOTE: Previously saved settings will be OVERWRITTEN.

 Loading PAGE F functions: Because different voices may use the
 SAME function letters for different things, the ;S option may
 be typed. This will SHUFFLE functions around when loading so
 that functions with the same letter are not overwritten.
 A maximum of 16 functions may be loaded at once.

 TO LOAD CONTROL FILE setting                   TYPE:
as internal part of voice (no functions) -  L;I<return>
               to use CONTROL FILENAME -  L,CO,filename<return>
to shuffle functions, no overwriting -  L,CO,filename;S<return>

   where: filename  =  1-8 character filename (see &bi22PAGE-2 HELP)

 EXAMPLE:     L,CO,TRUMP<return>    Load TRUMP.CO
              L,TRUMP.CO<return>    Same effect as above

 The setup of the CONTROL PARAMETERS previously SAVED will be
 completely restored.
  QUICK REFERENCE CHART  shows ranges and possible patches...

 Control Parameter      Range:  Patch:  Function :
MODE                   1,4    NO PATCH     NO
MAIN LEVEL             0-255     C KEYVEL YES
AUX. LEVEL             0-127     C        YES
FILTER                 1-127     C KEYNUM YES
DAMP-MODE              1,2       S C       NO    Controls 1-6,
DAMPING 1 && 2          0-65535   C        YES    Switches 1-5
ATTACK                 0-16383   C KEYVEL  NO    are real-time,
SLUR                   ON,OFF    S         NO    adjustable
GLISSANDO/PORTAMENTO   ON,OFF    S         NO    from the music
SPEED                  0-127     C         NO    keyboard.
CONSTANT TIME          ON,OFF    S         NO
PITCHBEND, BENDWIDTH   0-127     C         NO    Controls 1-64,
DEAD-SPOT              ON,OFF    S         NO    Switches 1-64
START SEGMENT          1-128     C         NO    are adjustable
SUSTAIN                ON,OFF    S         NO    through the
LOOP CONTROL           ON,OFF    S         NO    Page C - MCL.
LOOP START             1-128     C         NO
LOOP LENGTH            0-128     C         NO
BACKWARD/FORWARD LOOP  ON,OFF  NO PATCH - Mode 1 only
VIBRATO DEPTH          0-127     C        YES
 -SPEED, DELAY, ATTACK 0-127     C         NO
 
 MODE           range:  1 or 4          patch: (n/a)        
 This selects either of two modes of operation for the OUTPUT
 CHANNELS allocated to the voice.&ls15
      MODE 1 : 32 waveform segments are utilized. ENERGY and&ls10
             DURATION profiles on PAGE 4 determine the
             amplitude/duration characteristics of the voice.
             &bi711ATTACK control parameter is not active.
              Usually  chosen for voices which are SYNTHESIZED
             from HARMONICS on PAGE 4.&ls15
      MODE 4 : 128 waveform segments are utilized. Amplitude is&ls10
             a direct function of individual segment waveform
             amplitudes. ATTACK control parameter is active.
             Should always be used when EXTERNAL SAMPLING is
             being performed on PAGE 8 and is  usually  chosen for
             voices to be SYNTHESIZED with combined facilities
             of PAGES 5 and 6.

 Voice MODE may also be changed on PAGE 3 for convenience when
 CREATING voices. See also &bi412PAGE-4 HELP for more about WAVEFORM
 SEGMENTS and MODE.
 
 MAIN LEVEL     range:  0-255          patch: CONTRL,KEYVEL 
 This is the VOLUME control for the voice. Setting LEVEL to
 zero will mute the voice completely. Note that this parameter
 may be patched to KEY VELOCITY for touch-sensitive control of
 voice dynamics. REAL-TIME COMPOSER - PAGE R, KEYBOARD SEQUENCER
 - PAGE 9 and MCL - PAGE C provide the ability to program KEY
 VELOCITY for individual note volumes; to use this facility,
 LEVEL must be patched to KEYVEL on PAGE 7.

 AUX. LEVEL     range:  0-127           patch: CONTRL       
 This allows a secondary volume control. For example, if KEYVEL
 were patched to MAIN LEVEL, AUX. LEVEL could control overall
 volume range of KEYVEL. Patching to functions allows cross-
 fades between multi-voice registers.

 FILTER         range:  1-127           patch: CONTRL,KEYNUM 
 A LOW-PASS tracking filter which is used for attenuating any
 unwanted high-frequency content present in the voice; cutoff
 frequency is raised by increasing the value. If set to 127,
 the filter is bypassed completely. Set filter to at  least  20
 when EXTERNAL SAMPLING on PAGE 8. A patch to KEYNUM,function
 allows customised filter response over the music keyboard.
 
 DAMP-MODE           range:  1,2         patch: SWIT,CONTRL 
 This allows switching between the two damping rates (below).

 DAMPING-1 and -2    range:  0-65535 msecs   patch: CONTRL  
 Range is reduced to 16383 msecs in MODE 4. These parameters
 are  not active  when &bi714SUSTAIN is  ON . Provided SUSTAIN is off,
 the values determine FINAL DECAY time of the voice (time from
 key release to silence). If a &bi715LOOP is active, the voice will
 "hang" in the loop for specified time when key is released;
 otherwise the voice will continue through remaining segments.
 If end of waveform is reached before DAMPING period expires
 then the voice will stop abruptly. Setting DAMPING to zero
 will usually cause a click at end of the voice. Two damping
 rates allow switching between two presets (via DAMP-MODE). 

 ATTACK         range:  0-16383 msecs   patch: CONTRL,KEYVEL
 This defines the ATTACK TIME for MODE 4 voices;  not active  in
 MODE 1. May be patched to KEY VELOCITY for touch-sensitive
 control of the attack time. Note that both the KEYBOARD
 SEQUENCER - PAGE 9 and the MCL - PAGE C can program key
 velocity for individual notes, thus allowing programmable
 attack time if ATTACK is patched to KEYVEL on PAGE 7.
  SLUR           range:  ON,OFF          patch: SWIT         
 If this switch is ON  and  there is a LOOP active, each channel
 will sustain infinitely in the LOOP until a new note is to
 played. At that time it will  start  the new note at the LOOP
 without playing any preceding segments. This can be very
 effective when patched to the same KEYBOARD SWITCH or FOOT
 PEDAL as the GLISSANDO or PORTAMENTO switches - allowing
 both SLUR and a glide function to be switched simultaneously.

 GLISSANDO      range:  ON,OFF          patch: SWIT         
 When ON, each channel allocated to the voice will produce a
 chromatic glissando between each new pitch it is to play and,
 the last pitch it played. The SPEED and &bi713CONSTANT TIME
 parameters determine the rate and type of the gliss. Usually
 patched to a KEYBOARD SWITCH or FOOT PEDAL.

 PORTAMENTO     range:  ON,OFF          patch: SWIT         
 When ON, each channel allocated to the voice will produce a
 continuous portamento (glide) between each new pitch it is to
 play and the last pitch it played. The SPEED and CONSTANT TIME
 parameters determine the rate and type of the glide. Note
 that if GLISSANDO and PORTAMENTO are BOTH ON, PORTAMENTO will
 take precedence. This is usually patched to a KEYBOARD SWITCH
 or FOOT PEDAL.
  SPEED          range:  0-127           patch: CONTRL       
 This is the SPEED control for the GLISSANDO and PORTAMENTO
 functions. See also CONSTANT TIME below.

 CONSTANT TIME  range:  ON,OFF          patch: SWIT         
 This switch allows selection of two types of &bi712GLISSANDO and
 &bi712PORTAMENTO. When ON, the same time is taken to travel any
 interval - the RATE of change alters according to the pitch
 distance (hence CONSTANT TIME). When OFF, the RATE of change
 remains fixed (determined by SPEED) and the time taken varies
 with the size of the interval.

 PITCHBEND      range:  0-128           patch: CONTRL       
 This shifts pitch of note being played. Active whenever
 BENDWIDTH greater than zero. Usually patched to a control.
               0 = maximum bendwidth down
              64 = normal pitch (default)
             128 = maximum bendwidth up

 BENDWIDTH       range:  0-128           patch: CONTRL      
 This controls amount of pitchbend. Typically set to a number.
               0 = disable pitchbend (default)
               1 = +/- quarter-tone bend
             127 = +/- four octave bend
  DEAD-SPOT       range:  ON,OFF          patch: SWIT        
 When DEAD-SPOT is ON, an area between 57 to 71 exists where
 no &bi713PITCHBEND occurs to help centre control to normal pitch.
 When DEAD-SPOT is OFF, pitchbend occurs for all values.

 START SEG      range:  1-128 segment   patch: CONTRL       
 This control allows the STARTING SEGMENT of the voice to
 be modified; i.e., at what segment the voice will begin when
 activated by a key. Note that by patching LOOP START and START
 SEG to the same KEYBOARD CONTROL, the two parameters can be
 modified in parallel (most effective in MODE 4).

 SUSTAIN        range:  ON,OFF          patch: SWIT         
 This switch determines voice behaviour voice upon key release.
    When SUSTAIN is OFF , a key release causes voice amplitude to
    begin decaying at a rate controlled by &bi711DAMPING. If there
    is a &bi715LOOP, the voice will continue looping until DAMPING
    time has expired; otherwise it will continue playing the
    remaining segments until the end of the waveform is reached
    or the DAMPING time expires - whichever comes first.
    When SUSTAIN is ON , DAMPING is ignored. The entire waveform
    is always played (all segments heard). If there is a LOOP,
    the voice will stop LOOPING and continue to the last
    segment with no decay in amplitude. See USERS MANUAL.
 
 LOOP CONTROL   range:  ON,OFF          patch: SWIT         
 Set this switch ON to use any of the following LOOP CONTROL
 PARAMETERS. When OFF they are not active. The LOOP consists
 of a range of 1 or more waveform segments which are to played
 continuously for the duration of a key depression. In MODE 1
 the effect of the portion of the ENERGY PROFILE enclosed by
 the LOOP is CUMULATIVE; i.e., looping through a diminishing
 energy profile will quickly bring the amplitude to zero (see
 PAGE 4 HELP for more about this effect). See also &bi714SUSTAIN.

 LOOP START     range:  1-128 segment   patch: CONTRL       
 This allows you to specify the number of the 1st segment of
 the LOOP. By patching this parameter and LOOP LENGTH to
 KEYBOARD CONTROLS extremely precise adjustments can easily be
 made to the loop position - even while sustaining the voice.
 If assigned a numeric value, modification of loop on PAGE 4
 will cause the assigned number to change accordingly.

 LOOP LENGTH    range:  0-128 segments  patch: CONTRL       
 This determines the number of segments in the LOOP. If set
 to ZERO, the LOOP is removed completely. If assigned a numeric
 value, modification of the loop on PAGE 4 will cause the
 assigned length to change accordingly.
 
 B/F LOOP       range:  ON,OFF          patch: NO PATCH     
 This is BACKWARDS/FORWARDS (bi-directional) loop - Mode 1 only
 When end of loop reached, segments are played in reverse
 order, rather than jumping to start of loop.


 VIB DEPTH      range:  0-127           patch: CONTRL       
 Provides control of the depth of the vibrato function.
 Zero produces NO vibrato.

 VIB SPEED      range:  0-127           patch: CONTRL       
 Provides control of the rate of the vibrato cycle.

 VIB DELAY      range:  0-127           patch: CONTRL       
 Vibrato effect comes in some time after the start of the note.
 Zero produces immediate vibrato.

 VIB ATTACK     range:  0-127           patch: CONTRL       
 Rate at which delayed vibrato effect comes in.
 Zero is fast attack.
 
 TO SELECT any loaded VOICE  TYPE:                 LIGHTPEN:
                            V,voice<return>       <voice>

 where:  voice = the name OR number (1-8) of a loaded voice

  EXAMPLES:  V,TUBA<return>  - select voice TUBA
             V,4<return>     - select voice 4

 The names of all loaded voices are shown inside the box at
 bottom left of screen. When using LIGHTPEN, select voice by
 touching its name. The name and number of the current voice
 are shown in the upper-right corner of the page. The names and
 numbers of all loaded voices can be seen on PAGE 3.

 TO RESET all CONTROL PARAMETERS  TYPE: R<return>

 Reset all control parameters for the current voice to default
 values and blank the CONTROL FILENAME.
                                                           