&ls13
 help sheet: 2.   &biI2Description of Page I
             2.   &biI2GENERATING time code
             2.   &biI2READING time code and &biI2TRIGGER time
             3.   &biI3PAGE_R SMPTE
             3.   &biI3PAGE_9 SMPTE
             4.   &biI4PAGE_C SMPTE
             4.     &biI4SMPTE command
             5.     &biI5BASE command
             6.     &biI6TRIGGER command
             7.   &biI7SHEET_2 - INTERFACE CONFIGURATION
             7.   &biI7SHEET_2 - CHANNEL/KEYBOARD ASSIGNMENT
             8.   &biI8SHEET_3 - MIDI CONTROLS and SWITCHES
             8.   &biI8SHEET_4 - DEBUG DATA
             8.   &biI8SAVING/LOADING MIDI CONFIGURATION FILES&ls10

 For HELP , touch any BOX with lightpen or type: n<set>
                                        where: n = sheet number
 For HELP with HELP PAGES , touch &bi11THIS  or type: H1<return>
 &ls10Page I works in conjunction with an optional General Interface
 Card to provide a SMPTE time code generator/reader, 3 MIDI
 input ports and 4 MIDI output ports. MIDI is active whenever
 the CMI has been loaded from disk. Multiple ports allows
 faster response and more flexibility in sending/receiving MIDI
 to other devices.
Page I has 4 sheets. Select sheets by typing 1,2,3 or 4<return>
 Otherwise, point lightpen to numbers in the bottom left-hand
 corner of display.&ls6

&ls10 If SMPTE does not appear to function correctly, please check
 your tape levels, then Page I time-code reader display and
 TRIGGER times for correct SMPTE.&ls7

&ls10 TO GENERATE TIME CODE : Setup START TIME by moving cursor into
 time area and type <nn><set> where <nn> is 0-23 for hours,
 0-59 for minutes, 0-59 for seconds and 0-23,24,or 29 for
 frames. Set FRAME RATE for 24,25,or 30 and drop frame, if
 applicable. Record at levels of -20 to -10db.&ls6

Type S<return> to start or stop generator.

&ls10 TO READ TIME CODE and TRIGGER : Setup TRIGGER TIME by moving
 cursor into TRIGGER area and assigning numbers, as above. When
 the CLOCK time matches TRIGGER time, a sequence is started;
 provided the  ;S  option was included in the play command.
 

 USING THE TIME CODE READER WITH PAGE R - REAL-TIME COMPOSER :

 Setup the &biI2TRIGGER time in the trigger area on Page I or bottom
 left-hand corner of Page R display.

 Type  P;S<return> to play. Page R will wait for the CLOCK
 time to match the TRIGGER time before playing.


 USING THE TIME CODE READER WITH PAGE 9 - KEYBOARD SEQUENCER :

 Setup the &biI2TRIGGER time in the trigger area on Page I.

 Type  REP;S<return> to play. Page 9 will wait for the CLOCK
 time to match the TRIGGER time before replaying.

 
 USING THE TIME CODE READER WITH PAGE C - MCL :

Type  SMPTE=ON<return>  This replaces the ;S option as used on
                        Page 9 && R. PLAY command is unchanged.

 Page C sequence will &biI6TRIGGER from times inserted in to the
 sequence file. Times may be absolute or relative to the &biI5BASE
 time. Triggering is similar to the WAIT command, in that MCL
 waits for something to happen before playing. See MCL manual.

 SMPTE COMMAND  - given from the command line (not the editor).
 Used to enable or disable all SMPTE triggering. This command
 must be used before attempting any SMPTE triggering.

&ls10Type  SMPTE=ON<return>   to use embedded trigger times.
Type  SMPTE=OFF<return>  to ignore embedded trigger times.
Type  SMPTE<return>      to see the state of SMPTE.

If no SMPTE card installed, then a message will be displayed ..

                   SMPTE= NO CARD INSTALLED
  BASE COMMAND  - given from the command line (not the editor).
 This stores an absolute time value in hours, minutes, seconds
 and frames. BASE is setup by the user to contain the required
 start time for synchronizing PAGE C with external devices.
 BASE time is usually used as a zero reference point.&ls7

Type    BASE=<hours>:<minutes>:<seconds>:<frames><return>

&ls10 Spaces may be used instead of :
 A parameter may be skipped over by typing : twice.
 Some valid examples are:
   BASE=12:13:14:15<return>
   BASE 12 13 14 15<return>  same as above
   BASE 11:::14<return>      change only the hours and frames

Type  BASE<return>  to see current stored base time.
 Alternatively, type Q<return> to see the total state of Page C&ls8

 A typical display ...
     :   :&ls7
     :   :&ls8
   WAIT=OFF
   WARN=OFF
   PROMPT=OFF
   FREE MEMORY = $3C00/15630
   SMPTE=ON  01:15:25:00
   BASE= 01:15:31:20            <== look here&ls10
  TRIGGER COMMAND  - embedded within a sequence file (.SS). It
 starts and ends with the '@' character.  It's function is to
 specify either an absolute time value or an offset value
 relative to the BASE register to allow SMPTE synchronizing
 within an MCL composition. When inside the editor, type ..&ls7

   @<A or R><hours>:<minutes>:<seconds>:<frames>@<return>

&ls10The command must start and end with a  @  character. Similar to
 PROMPT MESSAGES starting and ending with  [  and ] . Spaces
 may replace :. The letter A or R before the hour setting is
 optional.

A = absolute trigger time - the time is the actual trigger time
    for SMPTE. Base time has no effect.
R = relative trigger time - the time is relative to BASE time.
    Think of BASE time as a local zero reference time.
If A or R option is not typed then default is A (absolute).&ls6

EXAMPLES
                                                     &ls10
 @A 12:55:59:23@  - absolute        @R 00:04:16:22@   - relative&ls6
                                                     &ls10
 @A12 55 59:23@   - same as above   @4:45:01:19@      - absolute
                                                    (careful!)
  SHEET 2 - INTERFACE CONFIGURATION 
 Other brands of MIDI instruments have subtle differences when
 transferring MIDI data. INTERFACE CONFIGURATION sets up the
 CMI MIDI ports to be compatible with other MIDI equipment.&ls7

 To configure the MIDI ports, tab to the INSTRUMENT field and&ls10
 type the first letter of the manufacturer's product name using
 that port. Then type <SET>. Valid letters are F,Y,S,N,R and N.
 To disable a port, tab to corresponding MODE. Type FF<SET>.&ls7

 The lower half of SHEET 2 display has port/channel/FAIRLIGHT&ls10
 keyboards assigment, ECHO, and output MODE. Any port/MIDI
 channel combination may be patched to any of the 8 FAIRLIGHT
 keyboards and vice versa. ECHO (on input) means data received
 will be transmitted to output unaffected. MODE (on output) can
 be POLY (chords) or MONO (solo). This is  not  MIDI POLY/MONO.&ls7

To  PATCH  the following parameters tab to the appropriate field.&ls10
 To switch individual ECHO on or off, type ON or OFF<SET>.
 To patch any port to a CMI keyboard, type <port letters><SET>.
 To disconnect a port from a CMI keyboard, type X<SET>.
 To patch a MIDI channel to a CMI keyboard type <channel><SET>.
 To set MODE type P or M<SET>. For PAGE R set all outputs Mono.&ls12
  ..where channel = 1-16, port letters = A-C input, A-D output.&ls16
 Because patching is extremely flexible, care must be taken!!&ls10
 
 SHEET 3 - MIDI/FAIRLIGHT CONTROL/SWITCH NUMBER CONFIGURATION 
 Fairlight 64 controls and switches are split into groups of
 eight. Port and MIDI channel numbers can be patched to banks
 of controls and switches.
 See preceding page for how to &biI7PATCH.

 SHEET 4 - DEBUG 
 Used for diagnostic purposes. No musical use. You may see the
 actual MIDI data received by the CMI in the FRAME BUFFER box.

 SAVING MIDI CONFIGURATION FILES 
 All MIDI settings may be saved/loaded to a .MC file from Page
 I only. Some SMPTE parameters are saved. These are: reader and
 generator frame rate, drop frame switch, jam sync switch.

 To save a MIDI setup, type S(AVE) <filename>.MC<return>.
 To load a MIDI setup, type L(OAD) <filename>.MC<return>.
 To reset Page I, save the default (unmodified) setup as a file
 then load that file later when desired.

 The current filename is displayed in the &biI0CFG: area at
 the bottom left of screen.
                                                                                               