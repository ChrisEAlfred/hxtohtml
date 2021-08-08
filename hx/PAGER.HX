&ls12&LM12
sheet: 2.  &biR2EDITOR functions
       3.  &biR3SETTING UP Page 3 Keyboard Map
       4.  &biR4LOAD a file
       4.  &biR4NEW file creation
       5.  &biR5PLAY/RECORD
       7.  &biR7STOP
       7.  &biR7SPEED
       7.  &biR7CLICK
       8.  &biR8SYNC
       8.  &biR8SMPTE TRIGGERING
       9.  &biR9UNALLOCATE patterns
       9.  &biR9ADD patterns
      10.  &biR10EDITOR selection
&LM1&LS10
See next sheet for  PATTERN  editor and  SONG  editor facilities.

 For HELP  touch any BOX with LIGHTPEN or type:  n<set>
                                       where:  n = sheet no.

 For HELP with HELP PAGES , touch &bi11 THIS or type: H1<return>
 
&LM1&LS11 PATTERN EDITOR FUNCTIONS :          SONG EDITOR FUNCTIONS :

10. &biR10PATTERN editor                24. &biR24SONG-DISPLAY control
11. &biR11RECORD a keyboard             25. &biR25SECTION-DISPLAY control
11. &biR11TIME-RESOLUTION selection     25. &biR25SONG-TRACE function
12. &biR12VOICE display                 26. &biR26BLOCK editing
13. &biR13NOTE EDITING TABLE            27. &biR27ESCAPE
15. &biR15KEY (pitch) command           28. &biR28INSERT
16. &biR16VEL (velocity) command        30. &biR30OVERWRITE
16. &biR16DUR (duration) command        30. &biR30DUPLICATE
17. &biR17INSERT/DELETE                 31. &biR31DELETE
18. &biR18LOCK/CANCEL                   32. &biR32END
19. &biR19ZERO/FILL                     32. &biR32MAKE a section
19. &biR19GRAB a keyboard
20. &biR20TIME-SIGNATURE
20. &biR20COMMENT
20. &biR20RESET a pattern
21. &biR21COPY a pattern
22. &biR22BAR command
 
&LS10 SETTING UP THE KEYBOARDS :

For Page R to function correctly Page 3 must be set up in the following way:

REGISTER CONTROL ...               and KEYBOARD CONTROL ...
                                                           
  REGISTER  NPHONY  VOICE   CHANNELS      KBD MAP          
    A         1    1)      1.......     1   A A A A A A
    B         1    2)      .2......     2   B B B B B B
    C         1    3)      ..3.....     3   C C C C C C
    D         1    4)      ...4....     4   D D D D D D
    E         1    5)      ....5...     5   E E E E E E
    F         1    6)      .....6..     6   F F F F F F
    G         1    7)      ......7.     7   G G G G G G
    H         1    8)      .......8     8   H H H H H H
 
 To LOAD a previously created sequence :
    TYPE: L(OAD),filename<return>
    where  (OAD) is optional.

EXAMPLE   L,TUNE7<return>

Alternatively move CURSOR to space opposite "File:"
(press DOWN ARROW once) and TYPE: filename<set>.

Page R files can also be loaded from other pages.
On any page, TYPE:   L,RS,filename<return>
                  or L,filename.RS<return>.

 To CREATE a NEW FILE :
     TYPE: N(EW),filename[,number of patterns]<return>
    where:       filename = 1-8 character filename, suffix .RS
                [ ..... ] = brackets signify optional
       number of patterns = 1-255 (this is optional).

The total number of patterns available (used and unused) can be
seen in the top right-hand corner of the display.
 
EXAMPLES:
NEW MELODY 100<return> - MELODY.RS is created and has 100
                         patterns available - as yet unused.

NEW,CALYPSO<return> - CALYPSO.RS is created. With a blank disk
                      CALYPSO.RS is  255  patterns (3330 sectors).
 PLAY or RECORD :
TYPE:   P[LAY][,<thing>[,<count>]][,#<bar>][;<options>]<return>
          or
        REC[ORD]
where:  <thing> is one of these...

               *                  - &biR24SONG
               A or B or ... or Z - &biR25SECTION
               !                  - CURRENTLY DISPLAYED PATTERN
               1 or 2 or ...  255 - &biR10PATTERN NUMBER

<count>    is number from 0 to 127. 0 signifies infinity.

<bar>      is the  start  bar number from 1 to 65535 of <thing>.
           Bar number defaults to 1 if not included in command.
           See also &biR22BAR command.
 
<options>    W  - wait for any key on the alphanumeric keyboard
                  to be hit before starting.
             S  - wait for &biR8SMPTE trigger time.
             F  - free-run mode - maximum timing accuracy.
                  Used when finally recording onto tape.
                  Use when &biR8EXT ernal syncing.

At least  3  letters of the word RECORD need to be typed.
If using the lightpen point to "PLAY or "RECORD".

EXAMPLES:
P,*,0<return>    - play SONG forever; start at bar 1.
P A,2 #4<return> - play section A twice; start at bar 4.
REC 4;W<return>  - record pattern 4 once; wait until any key on
                   the alphanumeric keyboard is pressed.
P *;F<return>    - play SONG once; ready for final recording.
REC !<return>    - record displayed pattern continuously.
P<return>        - play exactly what was previously played
                   (same as using the lightpen).
P;S<return>      - wait for SMPTE trigger before playing.

The RECORD command format is exactly the same as PLAY command
format.
 
 STOP :  TYPE:   S(TOP)<return>      LIGHTPEN ==>STOP
            or <ctrl-esc> i.e.,hold down <ctrl> press <esc>
            or point lightpen at the word "STOP".
This command will stop playing or recording.

 SPEED :         TYPE: n<set>  or  n<add>  or  n<sub>.
               where n is a number between 500 and 65535.
               Default is 2618. (Crotchet = 120 M.M.)

This control sets the tempo of a song and behaves as on Page 9
and Page C. A SPEED of 2000 will play twice as fast as a SPEED
of 4000.

 CLICK : A click occurs for each beat in a pattern. The CLICK
metronome is always ON and comes out of the rear of the CMI at

       1)  Pin 3 of the SYNC socket
       2)  Monitor Speaker output
       3)  Phones output
  SYNC : This selects the Page R replay synchronization mode
either INT(ernal) - default or EXT(ernal).

When SYNC=INT (internal) the SPEED control defines the tempo of
a song.  TYPE:  INT<set>

When SYNC is in external mode the &biR7SPEED control is disabled.&ls7

&ls10TYPE: EXT<set> or n<set> where n is a number between 2 and 255.

For equal tempo between external and internal sync:&ls8

       SPEED=      2010.5          EXT. SYNC in KHz =  2010.5 &ls10
             EXT. SYNC in KHz                       SPEED&ls8

&ls10EXAMPLE:  An EXTernal SYNC tone of 1000Hz is equivalent to an
INTernal speed of 2010.

When SYNC=number between 2 and 255, the external tone is
divided by that number giving greater synchronizing accuracy.

 SMPTE TRIGGERING : Tab down to &biI2TRIGGER time in the bottom
 left-hand corner of Page R display and assign valid numbers
 for hours, minutes, seconds and frames. Page R will 'wait' for
 CLOCK time from tape to match the TRIGGER time before playing.
 
 To UNALLOCATE unused patterns:

TYPE: UN(ALLOCATE),no. of unused patterns<return>
At least  2  letters of the UNALLOCATE command must be typed.

When a composition has been completed, unused patterns
represent wasted disk space. The UNallocate command allows you
to dispose of unused patterns, thereby recovering the disk
space. UNALLOCATE is the converse of &biR9ADD .

EXAMPLE:
      Before ...     TYPE: UN,30<return>  After ...
Total Patterns:  100                Total Patterns:   70
Used:  20 Left:   80                Used:  20 Left:   50

 To ADD extra patterns to a currently loaded sequence :

TYPE: AD(D),number of extra patterns<return>
At least  2  letters of the ADD command must be typed.
 Total  number of patterns (used and unused) cannot exceed 255.
 
 DISPLAY USED PATTERNS :         TYPE  X<return>
Shows which patterns out of the 255 possible pattern numbers
are &biR9USED . To return to the previous display  TYPE: <clear>.

 EDITOR SELECTION :
 To select PATTERN or SONG EDITOR
       Type:   E<return>
   lightpen:   <PATTERN>  or  <SONG>

 PATTERN NUMBER selection :
There are three ways to select a pattern for display:

1) TYPE: P=n<return>  where: n is any pattern number (1 to 255)

2) Move the CURSOR to the number opposite the word "Pattern".
   TYPE:   n<set> where n is a pattern number from 1 to 255
or use the <add> and <sub> keys to in/decrement number by one.

3) Use the &biR22BAR command.
 
 OPEN a keyboard :
A Keyboard must be  OPENED  before notes can be inserted or
deleted or &biR5RECORDED .
There are three ways to OPEN a keyboard ...

1) TYPE: Kn<return>  where n=1 to 8

2) Press the down arrow key repeatedly until the cursor
   reaches the keyboard area.

3) Point the lightpen at one of the big numbers 1 to 8 to the
   left of the actual note area.

 RECORD a KEYBOARD  :  Firstly OPEN a keyboard. Select TIME-
RESOLUTION. Then use the &biR5RECORD command as described.

TIME RESOLUTION may be changed in two ways:

 1) by pointing the light-pen at the collection of eight notes
in the bottom right-hand corner of the screen. Notes with
triangles signify "triplets" i.e., three notes played in the
time of two.
 
 2) by &biR11OPENING a keyboard and then repeatedly pressing
"+" or "-" on the alphanumeric keyboard to lower or raise
timing resolution.

 NOTE CURSOR : OPEN a Keyboard. A gap in the illuminated band of
light is the NOTE CURSOR. The note cursor can be moved left or
right to other "time-slots".

There are three ways to move the note cursor:

1) move the light-pen along the note area of the relevant
Keyboard.

2) TYPE:  >  to shift the note cursor  right 
          <  to shift the note cursor  left 

3) put the CMI in the &biR11RECORD mode. The note cursor follows
music keyboard performance in real time.

 VOICE display :  To left of screen is the voice display showing
which voices are loaded into the eight sequencers.
 Note dynamics  for each voice are in the NOTE EDITING TABLE.
 
 The NOTE EDITING TABLE  is "behind" the Voice names. &biR11OPEN any
Keyboard. By pointing the light-pen at any voice-name or
pressing the left-arrow key, voice names will change showing
 note dynamics  - KEY (pitch), VEL(ocity), and DUR(ation).
This area is a "scratch-pad" where  note dynamics  are adjusted
before insertion.

Changes can be made to KEY, VEL and DUR and &biR17INSERTED in the
pattern.
Depending on the position of the cursor within the Note Editing
Table, the <add> or <sub> keys function as a convenience by
raising or lowering values for KEY, VEL and DUR by one.

 Key  ranges from the lowest note to the highest.
Key shows black notes as flats.
To show black notes as sharps TYPE: <ctrl>S<return>.

 Vel  ranges from 1 (quiet) to 8 (loud). KEYVEL must be patched
to LEVELS and/or ATTACKS on Page 7 to fully utilize Page R
voice dynamics.

 Dur  ranges from 0 (shortest) to 48 (longest-one pattern).
 
To change any of these values  individually  move cursor to
relevant value ...

     Move cursor to Key value.
     Type the part(s) of the pitch (note-letter A to G,
accidental or octave 1 to 7) that you wish to change - then
press <set>.
The parts that you do NOT type will remain unchanged.
     For accidentals  <ctrl>S is sharp
                      <ctrl>F is flat
                      <ctrl>D is natural.

     Move cursor to Vel value.
     TYPE:    n<set> to set velocity where n = 1 to 8.

     Move cursor to Dur value.
     TYPE:    n<add> to  increase  duration by n.
              n<sub> to  decrease  duration by n.
              n<set> to  set  duration to n.
        where n = 0 to 48.

To change many Key, Vel or Dur values at once use the
Key, Vel or Dur commands.
 
 KEY command : transposes pitch relatively, selected keyboards
over current pattern or range of patterns.

TYPE:   KE(Y),offset,pattern range,(keyboard mask)<return>
where:  at least  2  letters of KEY must be typed.
         offset  is -71 to +71 semitones. Can leave + out.
         range of patterns  is from 1 to 255 (if available)
        If not specified default to 1.
        ( keyboard mask ) is from 1 to 8. If preceded by
        a - sign those keyboards are excluded. Must be
        surrounded by round brackets  ( and ) .
        If not specified  all  8 keyboards are transposed.
EXAMPLES:
KEY,1              transpose up 1 semitone, currently displayed
                   pattern, all keyboards.
KE,12,8            transpose up 1 octave (12 semitones),
                   pattern 8 all keyboards.
KE -3,4,(678)      transpose down 3 semitones, pattern 4
                   keyboards 6, 7, and 8 only.
KE -36 16-31 (-12) transpose down 3 octaves, patterns 16-31
                   but exclude keyboards 1 and 2.
 
 VELOCITY and DURATION commands 
Vel or Dur values are increased or decreased for selected
keyboards over current pattern or range of patterns.

TYPE:   VE(LOCITY),offset,pattern range,(keyboard mask)<return>
            or
        DU(RATION)

where:  at least  2  letters of Vel or Dur must be typed.
         offset  is  -7 to  +7 for Vel. Can leave + out.
                  -48 to +48 for Dur. Can leave + out.

         range of patterns  is from 1 to 255 (if available)
        If not specified default to 1.

        ( keyboard mask ) is from 1 to 8. If preceded by
        a - sign those keyboards are excluded. Must be
        surrounded by round brackets  ( and ) .

        If keyboard mask not specified values for  all  8
        keyboards are modified.
 
EXAMPLES:
VE,1                increase Vel by 1, current displayed
                    pattern, all keyboards.
DUR,12,8            increase Dur by 12, pattern 8
                    all keyboards.
VELOC 7,4,(678)     increase Vel by 7 (to the maximum),
                    pattern 4 keyboards 6, 7, and 8 only.
DU -48 16-31 (-12)  reduce Dur by 48 (to the minimum),
                    patterns 16-31, exclude keyboards 1 and 2.

 INSERT : A Keyboard must be &biR11OPENED and the &biR12NOTE CURSOR
positioned. The KEY (pitch), VEL(ocity) and DUR(ation) values
in the NOTE editing table will be inserted into the current
NOTE CURSOR position.

There are three ways to insert notes into patterns:

1)  TYPE:  I<return>
2)  LIGHTPEN ==>INSERT
3)  put the CMI into &biR11RECORD . Insert is automatic while
the  keyboard is played.
 
 DELETE : is the opposite of INSERT. A note will be deleted from
the current &biR12NOTE CURSOR position. See &biR19ZERO and &biR20RESET also.

There are two ways to delete a note in a pattern after
positioning the note cursor:

1)  TYPE:  D<return>

2)  LIGHTPEN ==>DELETE

 LOCK : will lock INSERT or DELETE on until CANCELLED.

 CANCEL :   TYPE: C<return>      LIGHTPEN ==>CANCEL
Cancel the LOCK. Opposite of LOCK. Release INSERT or DELETE
from being ON.

 INSERT-LOCK :   TYPE:  I,L<return>      LIGHTPEN ==>LOCK
                                  then LIGHTPEN ==>INSERT
Insert is locked ON. Notes will be inserted wherever the
&biR12NOTE CURSOR moves in the note area. The KEY, VEL and DUR value
will be derived from the &biR13NOTE EDITING TABLE.
 
 DELETE-LOCK :   TYPE:  D,L<return>      LIGHTPEN ==>LOCK
                                  then LIGHTPEN ==>DELETE
Delete is locked ON. Notes will be deleted wherever the
NOTE CURSOR moves in the note area.

 ZERO :   TYPE: Z<return>        LIGHTPEN ==>ZERO
Delete all notes from open keyboard. Converse of FILL.

 FILL :   TYPE: F<return>        LIGHTPEN ==>FILL
Fill all notes on open keyboard of a pattern. Note value comes
from the current value in the &biR13NOTE EDITING TABLE. Number of
notes depends on &biR11TIMING RESOLUTION selected.

 GRAB :  TYPE:  G(RAB),n<return>  where n=keyboard number 1 to 8

Notes in keyboard  n  are copied to the currently &biR11OPEN keyboard.
This command may be used while playing or recording.

EXAMPLE:  G 4<return>  - Copy contents of keyboard 4 to
                         currently open keyboard.
 
 TIME SIGNATURE :   TYPE:  TI(ME),n/b<return>
where:  n = no. of beats in bar (range 1 to twice beat value)
        b = beat value (2,4,8,16)
        and / can be a comma, space, slash etc.
At least  2  letters of the TIME command must be typed.
The default time signature is 4/4. This can be modified to any
default time signature  e.g., 12/8, 7/4. Only UNUSED patterns
are affected. This command may not be used while playing.

To change time signature for an  individual  pattern, move cursor
to time signature and type: n/b<set>

 COMMENT :   TYPE:  (a maximum of 16 characters)<set>
This 16 character area to the right of the time signature
allows you to put a relevant comment for your own use.

 RESET :   TYPE: RES(ET)<return>
At least  3  letters of the RESET command must be typed. Deletes
all notes in the current pattern, blanks out the &biR20COMMENT
area, changes the &biR20TIME SIGNATURE to the default value and
returns the pattern being USED to UNUSED. This is reflected in
the top right-hand corner of the screen. Many patterns may be
RESET (UNUSED) by &biR21COPYING a reset pattern into used patterns.
 
 COPY command :
This command allows copying blocks of patterns into other
patterns, selectively including or excluding keyboards.
The only restriction is that the range of patterns being copied
'from' cannot overlap any patterns being copied 'to'.

TYPE: C(OPY),from pattern(s),to pattern(s),(kbd. mask)<return>

where:   from  pattern(s) range from 1 to 255

         to   pattern(s)  range from 1 to 255
        (if not specified default is displayed pattern)

        CMI will give a message if pattern blocks  overlap 

        ( keyboard mask ) is from 1 to 8. If preceded by
        a - sign those keyboards are excluded. Must be
        surrounded by round brackets  ( and ) .

        If not specified  all  8 keyboards are copied.
 
EXAMPLES:
C,2         Copy pattern 2 to currently displayed pattern
            all keyboards.
COPY 12 20  Copy pattern 12 into pattern 20, all keyboards.
CO,12 20-23 Copy pattern 12 into patterns 20 to 23
            all keyboards.
C 4 (12347) Copy pattern 4 into currently displayed pattern
            only keyboards 1, 2, 3, 4 and 7.
C 1-3 8-13  Copy pattern 1 into  8, 2 into  9,    3 into 10,
                         1 into 11, 2 into 12 and 3 into 13.
C,1 (-36)   Copy pattern into currently displayed pattern
            but exclude keyboards 3 and 6.
C 1-4 2-5   Invalid. Patterns 2, 3 and 4 overlap.

 BAR command : TYPE: B(AR),n<return> where n=1 to 65535.
This displays the bar number related to the linking of patterns
in the &biR24SONG EDITOR.
 

 AUDIBLE :     TYPE: ON<set> or OFF<set>   Default ON.

This gives you audible feedback for KEY (pitch) and VEL(ocity)
whenever:
1) the &biR12NOTE CURSOR is made to pass over a note either with the
lightpen or by typing > or <.

2) KEY, VEL or DUR are changed in the &biR13NOTE EDITING TABLE.

 COMMAND SYNTAX :

Commands that require at least 2 letters:  &biR9AD D
                                           &biR9UN ALLOCATE
                                           &biR15KE Y
                                           &biR16VE LOCITY
                                           &biR16DU RATION
                                           &biR20TI ME
Commands that require at least 3 letters:  &biR20RES ET
                                           &biR5REC ORD
 
 SONG EDITOR :
The SONG EDITOR links patterns together into sections. To use
this facility we must change the position of the "windows",
through which different steps or sections are displayed.

 SONG-DISPLAY control :
There are two ways to move the song list window:

1)  Use the lightpen to point to the large horizontal  right  or
 left  arrows. The window will shift accordingly. Point to the
word "END" and the  end  of the song list will appear. Point to
the number "1" and the  beginning  of the song list will appear.

2)  Move the cursor to any of the step numbers.
TYPE:  <add> to move the window right
       <sub> to move the window left
    nnn<set> to move the window to step number nnn (1 to 255)
 
 SECTION-DISPLAY control :
There are two ways to move the section list window.

1)  Use the lightpen to point to the large vertical  down  or  up 
arrows. Point to the letter "Z" and the last five section lists
(V to Z) will appear. Point to the letter "A" and the first
five section lists (A to E) will appear.

2)  Move the cursor to any of the big section letters.
TYPE:  <add> to move the window down.
       <sub> to move the window up.
      X<set> to move the window to section letter X (A to Z)

 STEPS : Each step has two items in it: a pattern number or
section letter and number of times to repeat, situated
immediately below the step number.

 SONG EDITOR TRACE FUNCTION :
Whenever cursor is positioned within SONG list or SECTION list
it will automatically trace progress of the song during <PLAY>.
No tabbing or assignments are allowed. To escape from this
(e.g., to change SPEED) press <home> key.
 


 BLOCK COMMANDS :
In addition to using the <add>, <sub>, and <set> keys to modify
STEP values one at a time, there are several commands which
operate on a BLOCK, or consecutive group of steps within the
&biR24SONG or &biR25SECTION lists. These block editing commands enable the
linking of many patterns or sections, and take effect from the
 CURRENT CURSOR POSITION .

SUMMARY of commands:

>&biR27ESCAPE function.
>&biR28INSERT one or more steps with specified values.
>&biR30OVERWRITE one or more steps with specified values.
>&biR30DUPLICATE one or more steps, INSERTING new step(s).
>&biR31DUPLICATE one or more steps, OVERWRITING existing step(s).
>&biR31DELETE one or more steps.
>&biR32END
>&biR32MAKE a section.

 
 ESCAPE function :
Also known as the OOPS! command.
ESCAPE reverses the effect of the SONG EDITOR block commands.
To "escape" from an editor operation press the <esc> key.
This message will appear:

       "ESCAPE FROM LAST OPERATION - (Y)??"

To un-do the last thing you just did, TYPE: Y<return>.
Otherwise just press <return> or <ctrl-esc> (hold down <ctrl>,
press <esc>).

 INSERTION versus OVERWRITING 
An understanding of these two concepts is crucial for effective
 use of the block commands.

When INSERTING, existing step values are NOT wiped out
instead, new steps are effectively created by "bumping"
existing values along to make room for the new values.

When OVERWRITING, existing STEP VALUES are wiped out and
replaced with new values. Using the <add>, <sub> and <set> keys
also results in overwriting.
 
 INSERT :   TYPE:   I(NSERT)[,list of step values]<return>

One or more steps may be inserted from the  CURSORED  step.
Ranges of values may be specified for the insertion of
sequentially incrementing (or decrementing) blocks of either
pattern numbers or section letters with repeats. Current steps
are bumped along. If insuffient steps exist then nothing will
change. A warning will be given.

EXAMPLES:
To set up the CMI to play straight through the first 100
patterns of the SONG without repeating any patterns (like a
tape recorder):

TYPE: I 1-100<return>.

The first 10 steps of the song list will look like this:

       Song:                                          
| step|1    2    3    4    5    6    7    8    9   10 
|play|1    2    3    4    5    6    7    8    9   10
| x's|1    1    1    1    1    1    1    1    1    1
 
If the cursor position is at step  4  of the previous song list,
then the following commands will have the following effects:

I,40<return>  - insert pattern 40 with 1 (default) repeat.
       Song:          current cursor position         
| step|1    2    3   |4|   5    6    7    8    9   10 
|play|1    2    3    40   4    5    6    7    8    9
| x's|1    1    1    1    1    1    1    1    1    1

IN 8-11:6<return> - insert patterns 8 to 11 with 6 repeats.

       Song:          current cursor position         
| step|1    2    3   |4|   5    6    7    8    9   10 
|play|1    2    3    8    9   10   11    4    5    6
| x's|1    1    1    6    6    6    6    1    1    1

I F-H:127 1:2<return> - insert sections F to H, 127 repeats,
                               then pattern 1, 2 repeats.

I 9-6 Z-X<return> - insert patterns 9 to 6 (decreasing),
                           sections Z to X (decreasing).
                             1 (default) repeat each.
  OVERWRITE :    TYPE:   O(VERWRITE)[,list of step values]<return>

One or more steps are overwritten from the  CURSORED  step.
Syntax is identical to INSERT command.

 DUPLICATE INSERT command :
TYPE: D(UPLICATE)I(NSERT),[section A to Z],[step range]<return>
                       or [pattern 1 to 255]
                       or (song *) (default)

A range of one or more steps may be duplicated, starting at the
CURRENT CURSOR POSITION, inserting new values and "bumping"
existing values to the right.

The range of steps to be duplicated may be selected from the
SONG list or any SECTION list. An error message will be given
if more than a total of 8 values will occur in a section.

EXAMPLES:
DI,8        - insert step 8 of song
D I *8-12   - insert steps 8-12 of song
DI A        - insert section A
D I C4      - insert step 4 of section C
 
 DUPLICATE OVERWRITE command :  TYPE:

   D(UPLICATE)O(VERWRITE),[section A to Z],[step range]<return>
                       or [pattern 1 to 255]
                       or [song *] (default)

Syntax is identical to DUPLICATE INSERT. A range of one or more
steps may be duplicated, starting at the CURRENT CURSOR
POSITION and overwriting existing values.

 DELETE :  TYPE: D(ELETE),n<return>
         where n=number between 1 and 255.

This command deletes step values. The converse of INSERT.

EXAMPLE:
Before...                     After  typing D,2<return>
                              (Delete 2 step values)
       Song:     cursor                Song:     cursor     
| step|1    2   |3|   4    5    | step|1    2   |3|   4    5 
|play|1    2    3    4    5   |play|1    2    5
| x's|1    1    1    1    1   | x's|1    1    1
  END :   TYPE:   END<set>
This command deletes all step items, from the current cursor
position. End of SONG or SECTION.

EXAMPLE:
Before...                      After typing:  END<set>
       Song:     cursor                 Song:     cursor
| step|1    2    3    4          | step|1    2    3    4 
|play|5    7   |2|   9         |play|5    7   | |
| x's|2    1    6    3         | x's|2    1

 MAKE SECTION command :

TYPE:  M(AKE),(section A to Z),[step count],<return>.

This single command combines the functions of several other
commands in a single common operation - the creation of a
section list. Starting at the CURRENT CURSOR POSITION, a block
of from 1 to 8 steps is duplicated in the desired section list.
Original block is deleted, and replaced by a section letter. If
specified section is not empty then a prompt will appear ...

   "OVERWRITE SECTION  - (Y)??".    Reply Y<return> to proceed.
 
EXAMPLE:   Before...
       Song:     cursor                     
| step|1    2   |3|   4    5    6    7    8 
|play|1    2    3    4    5    6    7    8
| x's|1    1    1    1    1    1    1    1


TYPE:  M,A 4<return> - make section A from the next 4 steps
                       beginning at the current cursor position.

After...
       Song:     cursor                     
| step|1    2   |3|   4    5    6    7    8 
|play|1    2    A    7    8
| x's|1    1    1    1    1

         and section A contains:
                              
         | A | 3   4   5   6
         |   |  1   1   1   1 
         | B |
                                                                                 