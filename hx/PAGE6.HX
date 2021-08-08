
&ls12sheet:                    sheet:

2.  &bi62 WAVEFORM GRAPH         9. &bi69 GAIN command
3.  &bi63 CURRENT SEGMENT       10. &bi610 MERGE command
3.  &bi63 DISPLAY command       11. &bi611 MIX command
4.  &bi64 START/STOP stepping   12. &bi612 ROTATE command
4.  &bi64 LIGHTPEN waveforms    13. &bi613 REFLECT command
5.  &bi65 POINT/LEVEL waveforms 13. &bi613 REVERSE command
6.  &bi66 JOIN/PLOT switch      14. &bi614 TRANSFER command
6.  &bi66 ZERO command          15. &bi615 ADD command
7.  &bi67 INVERT command        16. &bi616 BLEND command
7.  &bi67 TRADITIONAL waveforms 17. &bi617 JUSTIFY command
7.  &bi67 WHITE NOISE           17. &bi617 VOICE selection
8.  &bi68 FILL command          17. &bi617 LOAD/SAVE instrument, voice files

&LS10 For HELP  touch any BOX with LIGHTPEN or TYPE: n<set>
                                       where: n  =  sheet no.

 For HELP with HELP PAGES , touch &bi12 THIS or TYPE: H1<return>
  THE WAVEFORM GRAPH  displays one SEGMENT (128 points) of the
 WAVEFORM MEMORY of a voice as an oscilloscope-like image. Any
 segment or range of segments may be displayed. Waveforms can be
 created or altered either by drawing on the graph with the
 &bi65 LIGHTPEN or by assigning &bi65 LEVELS to individual waveform points.
 Horizontal divisions mark 1, 8 and 16 point intervals across
 the graph. Any loaded VOICE may be &bi618 SELECTED for display
 or modification. The voice may be in either MODE 1 or MODE 4,
 but remember that in MODE 1 the amplitude envelope is specified
 with the ENERGY profile on PAGE 4. See PAGE 4 HELP for more
 about waveform memory, segments and voice mode.
 The DISPLAY and FILL functions  are exact opposites of each
 other. The DISPLAY function refers to the moving of a waveform
 segment INTO the GRAPH; the FILL function refers to the moving
 of the waveform displayed on the graph INTO a WAVEFORM SEGMENT.
 This allows a segment to be displayed and then modified to any
 degree without losing the original (which remains unaltered in
 waveform memory) until the segment is filled with the waveform
 displayed on the graph. Thus the graph is a kind of scratch-pad
 for waveform development. The features of PAGE 6 fall into two
 groups: those which directly modify the waveform memory of the
 voice, and those which change only the displayed waveform and
 thus require you to use the &bi68 FILL command before the voice
 will actually be modified.
  TO SET CURRENT SEGMENT NUMBER  use <arrow> keys or LIGHTPEN
 to TAB to CURRENT SEGMENT, TYPE: s<set>
      where:  s  =  waveform segment number, range 1 - 128
 The selected segment of WAVEFORM MEMORY will be DISPLAYED on
 the waveform graph. This is now the CURRENT SEGMENT.

 TO DISPLAY a WAVEFORM SEGMENT    TYPE:              LIGHTPEN:
  display current segment      - D<return>          <DISPLAY>
  display segment (s)          - D,s<return>          n/a
  display segment (s) thru (e) - D,s,e<return>        n/a
  display ALL segments         - D,*<return>          n/a
     where:  s e  =  segment numbers, range 1 - 128

  EXAMPLES:   D,24<return>     Display segment 24
              D,1,16<return>   Display segments 1 thru 16
 If only 1 segment number is specified (as in 1st example) the
 waveform segment is displayed and becomes the new CURRENT
 SEGMENT. If a RANGE of segments is specified they will be
 displayed sequentially, called a  STEPPING DISPLAY , at a speed
 set by the STEP RATE fader. The LAST segment of the range will
 be the new current segment. If no segments are specified with
 the command, the current segment will be re-displayed. Note
 that any modifications to the displayed waveform that have not
 been &bi68 FILLED will be lost.
  TO USE CURRENT SEGMENT FADER  touch fader with the LIGHTPEN and
 position as desired. Any segment may be DISPLAYED by movement
 of this fader (located to right of current segment number).

 TO START/STOP STEPPING DISPLAY      TYPE:            LIGHTPEN:
  start display (when stopped)    - S<return>        <START>
  stop display (when in progress) - S<return>        <STOP>

 If a STEPPING DISPLAY is in progess, you may STOP it whenever
 desired. Last segment displayed will be new CURRENT SEGMENT.
 Also, you may START a stepping display at any time which will
 proceed from CURRENT SEGMENT to last segment (128).  STEP RATE 
 fader sets time for which each segment is displayed, and is
 adjusted by positioning it with LIGHTPEN (even while stepping
 display in progress). A stepping display may also be STOPPED
 by pressing <ctrl-esc>. (Press && hold <ctrl> - press <esc> ).

 TO CREATE or MODIFY DISPLAYED WAVEFORM with LIGHTPEN  simply draw
 on WAVEFORM GRAPH with lightpen. When drawing, best accuracy
 will be usually be obtained by triggering lightpen with a
 single quick "blip" of the finger rather than with a prolonged
 touch. Large flowing shapes are best drawn by selecting JOIN
 (see &bi66 JOIN/PLOT switch) and using a prolonged trigger.
  Remember, the waveform graph is a scratch pad:  &bi68 FILL command
 MUST be used to move whatever is drawn into WAVEFORM MEMORY
 before it becomes part of the voice (to be heard  or  saved).
 A good way to explore PAGE 6 is to put a LOOP (PAGE 4 or 7) in
  segment 1 of a MODE 4 voice.
 Then simply draw, touch <FILL> and play your creation.

 TO CREATE or MODIFY DISPLAYED WAVEFORM with POINT/LEVEL  use
 <arrow> keys or LIGHTPEN to TAB to POINT / LEVEL, TYPE: n<set>
      where:  n  =  for POINT: desired point in segment, 1 - 128
                    for LEVEL: desired amplitude, -128 to 127
 The LEVEL value will ALWAYS show the amplitude of the single
 point of the waveform segment indicated by POINT (even during
 a stepping display). When you tab to either LEVEL or POINT a
 marker appears on the WAVEFORM GRAPH to identify the selected
 point. Select desired POINT and then set LEVEL to modify the
 displayed waveform. Note that the WAVEFORM MEMORY is NOT
 affected until the &bi68 FILL command is used. See &bi66 JOIN/PLOT.

 When cursor is tabbed to POINT or LEVEL, operation of lightpen
 is different.
  POINT: touching graph selects new POINT, displaying its LEVEL
  LEVEL: touching graph assigns new LEVEL to selected point.
Lightpen reverts to normal when you tab away from POINT/LEVEL.
  THE JOIN/PLOT SWITCH  selects the way in which the WAVEFORM GRAPH
 responds to alteration by the &bi65 LIGHTPEN or assignment to &bi65 LEVEL.
 There are 128 points in the displayed waveform. Both the level
 control and lightpen work by setting the amplitudes of single
 points. However, when JOIN is selected each subsequent
 alteration will be JOINED to the last by a straight line (the
 points between are set automatically). If PLOT is selected each
 point can be individually altered without affecting the others.
 JOIN is good for creating waveforms or large-scale alterations.
 PLOT is better for fine detail.

  To SELECT JOIN or PLOT   TYPE:            LIGHTPEN:
       select JOIN    -   J<return>        <JOIN>
       select PLOT    -   P<return>        <PLOT>

 TO ZERO the DISPLAYED WAVEFORM  TYPE:                  LIGHTPEN:
                                Z<return>              <ZERO>
 This will ZERO the waveform displayed on the WAVEFORM GRAPH.
 Note that the WAVEFORM MEMORY is NOT affected until the &bi68FILL
 command is used.

  To ZERO entire WAVEFORM MEMORY (silent voice) 
    TYPE: Z<return>   - zero display waveform
          F,*<return> - Fill all segments
   TO INVERT the DISPLAYED WAVEFORM  TYPE:             LIGHTPEN:
                                  I<return>         <INVERT>
 This will INVERT the PHASE of the waveform displayed on the
 WAVEFORM GRAPH. Note that the WAVEFORM MEMORY is automatically
 &bi68 FILLED when INVERT is used.

 TO GENERATE TRADITIONAL WAVEFORMS  touch desired waveshape image
 with LIGHTPEN. TRIANGLE, RAMP or variable-width PULSE waveform
 will be generated on the graph.
 Otherwise type:   TRI<return>  for TRIANGLE waveform
                   SAW<return>  for SAWTOOTH waveform
                   SQ<return>   for SQUARE waveform
 Note that the WAVEFORM MEMORY is NOT affected until the FILL
 command is used. SINE waveforms are generated on Page 5.
  To set PULSE WIDTH  use <arrow> keys or LIGHTPEN to TAB to
  width control (to right of pulse image).
     TYPE: n<set>   where:  n = 1 - 99
  Touching the pulse image will  then  generate a pulse wave of
  the width specified.

 TO GENERATE WHITE NOISE 
 TYPE:    NO,sss,eee<return>     where sss,eee = 1 to 128
 FILL segments sss to eee with noise, default current segment.
  TO FILL WAVEFORM SEGMENT(S) with DISPLAYED WAVEFORM
                                 TYPE:             LIGHTPEN:
   fill the current segment   -   F<return>         <FILL>
   fill segment (s)           -   F,s<return>        n/a
   fill segments (s) thru (e) -   F,s,e<return>      n/a
   fill ALL segments          -   F,*<return>        n/a

      where:  s e  =  segment numbers, range 1 - 128

 EXAMPLES:  F,68<return>       Fill segment 68
            F,119,127<return>  Fill segments 119 thru 127

 The DISPLAYED waveform is moved into the selected segment(s)
 of WAVEFORM MEMORY for the current voice. Modifications made
 to the displayed waveform by: LIGHTPEN drawing
                               POINT/LEVEL assignment
                               ZERO and INVERT commands
 do  not  affect the waveform memory (sound) of the voice  until 
 the FILL command is used. Before FILLED, these modifications
 exist only on the WAVEFORM GRAPH and are discarded if you
 display another segment or select another display page. When
 FILLED, the changes become part of the voice - the previous
 content of the FILLED segment(s) is gone and can only be
 restored by &bi618LOADING the voice again.
  TO MODIFY AMPLITUDE (GAIN) OF SEGMENT(S)  TYPE:
   modify current segment             -   G,p<return>
   modify segment (s)                 -   G,p,n<return>
   modify segments (s) thru (e)       -   G,p,s,e<return>
   modify ALL segments                -   G,p,*<return>
      where:     p  =  desired GAIN as a PERCENTAGE
             n s e  =  segment numbers, range 1 - 128
 EXAMPLES:
 G,50<return>       Gain 50% current segment (half or -6db)
 G,110,4<return>    Gain 110% segment 4
 G,33,10,64<return> Gain 33% segments 10 thru 64
 G,200,*<return>    Gain 200% all segments (double)
 G,MAX<return>      Gain current segment to maximum
 G,=75,*<return>    Gain all segments to 75% of maximum

 The AMPLITUDE of the selected segment(s) of WAVEFORM MEMORY is
 modified according to the GAIN specified. If the specifed gain
 will exceed maximum range this question will appear:
        CLIPPING WILL OCCUR - PROCEED (Y)?
   To reply: Yes  - type: Y<return>
             No   -       N<return>  or  <return>
 If you decline then nothing will have changed, otherwise the
 GAIN command will proceed and at least one of the waveform
 segments will CLIP. Clipping may be desired, of course.
  TO MERGE BETWEEN TWO WAVEFORM SEGMENTS      TYPE:
   merge from segment (s) to (e)         -  ME,s,e<return>
   merge from segment 1 to 128           -  ME,*<return>
   merge from current segment+(o)...
      to current segment                 -  ME,o<return>
   where:  s e  =  segment numbers, range 1 - 128
             o  =  offset, range -127 - +127
 EXAMPLES:
     ME,1,8<return>    Merge from segment 1 to segment 8
     ME,-32<return>    Merge from current seg-32 to current seg
     ME,+60<return>    Merge from current seg+60 to current seg

 This will generate a "crossfade" between the 2 segments - there
 must be at  least  one segment in between. The START segment (1st
 number specified) and END segment (2nd number specifed) are not
 affected. The WAVEFORM MEMORY of the segments in between is
 modified to contain the merge - the previous content of these
 segments is not important. Only the START and END segments
 have any significance in the MERGE command. Merging from 1-128
 will take about 18 seconds. See also &bi611 MIX.

      Start segment          (fading out )..........
                   .........( fading in)            End segment
  TO MIX BETWEEN TWO WAVEFORM SEGMENTS      TYPE:
   mix from segment (s) to (e)         -  MI,s,e<return>
   mix from segment 1 to 128           -  MI,*<return>
   mix from current segment+(o)...
      to current segment               -  MI,o<return>
   where:  s e  =  segment numbers, range 1 - 128
             o  =  offset, range -127 - +127
 EXAMPLES:
     MI,1,8<return>    Mix from segment 1 to segment 8
     MI,48,5<return>   Mix from segment 48 to segment 5
     MI,-32<return>    Mix from current seg-32 to current seg
     MI,+60<return>    Mix from current seg+60 to current seg
 Like the &bi610 MERGE command, this will generate a "crossfade"
 between the 2 segments - there must be at  least  one segment in
 between. The START segment (1st number specified) and END
 segment (2nd number specified) are not affected. The WAVEFORM
 MEMORY of each segment in between will contain a MIX of the
 existing waveform of the segment (decreasing) and that of the
 the END segment (increasing). The start segment number can be
 GREATER than the end segment. Mixing from 1-128 will take about
 20 seconds.
                              (fading out ).........
     Start segment, next seg, next seg, next seg,
                    .........( fading in)            End segment
  TO ROTATE ENTIRE WAVEFORM MEMORY       TYPE:
 rotate right 1 point               - ROR<return>
 rotate right (s) segments          - ROR,s<return>
 rotate right (s) segs && (p) points - ROR,s,p<return>
 rotate left (just the same, but use: ROL instead of ROR)
      where:  s  =  segment number, range 1 - 128
              p  =  point (byte) number, range 1 - 128
 EXAMPLES:
      ROR,1<return>       Rotate right 1 segment
      ROL,8,32<return>    Rotate left 8 segments and 32 points
      ROR,0,2<return>     Rotate right 2 points (zero segments)
 The entire WAVEFORM MEMORY of the voice will be ROTATED RIGHT
 or LEFT as desired. Consider the first example above which
 specifies a ROTATE RIGHT of 1 segment. This will cause segment
 1 to be moved to segment 2, segment 2 to segment 3, and so on.
 This procedure will "wrap-around" - meaning that segment 128
 will be moved to segment 1 (hence the name ROTATE). If a ROTATE
 RIGHT of 2 points is requested (3rd example), point 1 will be
 moved to point 3, point 2 to 4, point 16,383 to point 1, and
 point 16,384 to point 2. (There are 16,384 points: 128 segs
 with 128 points each.) See &bi614TABLE below. This can be used to
 trim the start of an externally sampled voice, or (with use of
 the &bi614TRANSFER and &bi615ADD commands) to generate "doubling" or phase
 cancellation/reinforcment effects.
  TO REFLECT WAVEFORM MEMORY                TYPE:
 reflect around segment 64 point 1      - REF<return>
 reflect around segment (s) point 1     - REF,s<return>
 reflect around segment (s) point (p)   - REF,s,p<return>
      where:  s  =  segment number, range 1 - 128
              p  =  point (byte) number, range 1 - 128
  EXAMPLES:  REF,14<return>     Reflect around seg 14 point 1
             REF,32,64<return>  Reflect around seg 32 point 64
 The WAVEFORM MEMORY is symmetrically REFLECTED around the
 specified point - points preceding the reflection point are
 repeated after it in  reverse  order. See table below.

 TO REVERSE ENTIRE WAVEFORM MEMORY   TYPE: REV<return>
 The entire WAVEFORM MEMORY is completely REVERSED end-for-end.

 This table illustrates the effects of the REVERSE, ROTATE and
 REFLECT commands by using the alphabet to represent WAVEFORM
 MEMORY of a voice. Letters represent single waveform POINTS.
                                                        
       original "waveform":   &bi60 A BCDEFGHIJKLMNOPQRSTUVWXYZ
                 REVERSED:   ZYXWVUTSRQPONMLKJIHGFEDCB&bi60 A 
          ROTATED RIGHT 6:   UVWXYZ&bi60 A BCDEFGHIJKLMNOPQRST
           ROTATED LEFT 4:   EFGHIJKLMNOPQRSTUVWXYZ&bi60 A BCD
       REFLECTED AROUND  G :   &bi60 A BCDEF G GFEDCB&bi60 A HIJKLMNOPQRS
  TO TRANSFER SEGMENT(S) from another VOICE      TYPE:
 transfer current segment from voice (v)     - T,v<return>
 transfer segment (s) from voice (v)         - T,v:s<return>
 transfer segments (s) to (e) from voice (v) - T,v:s,e<return>
 transfer ALL segments from voice (v)        - T,v:*<return>

    where:   v  =  name  or  number (1-8) of any loaded voice
           s e  =  segment numbers, range 1 - 128
 EXAMPLES:
    T,FUDGE<return>    Transfer current seg from voice FUDGE
    T,FUDGE:16<return> Transfer segment 16 from voice FUDGE
    T,2:16,100<return> Transfer segments 16 to 100 from voice 2
    T,4:*<return>      Transfer ALL segments from voice 4

 The selected segment(s) will be TRANSFERRED  from  the specified
 voice  to  the current voice. It is often handy to create a
 scratch voice for temporary storage of waveform segments while
 developing sounds on PAGE 6. To place segments  into  the scratch
 voice, &bi618SELECT it as the current voice and TRANSFER  from 
 the voice you are developing. Remember that the current voice
 (shown in upper-right) will always be the RECEIVER of the
 transferred segments.
  TO ADD IN SEGMENTS(S) from another VOICE
 add in current segment from voice (v)     - A,v<return>
 add in segment (s) from voice (v)         - A,v:s<return>
 add in segments (s) to (e) from voice (v) - A,v:s,e<return>
 add in ALL segments from voice (v)        - A,v:*<return>

    where:   v  =  name  or  number (1-8) of any loaded voice
           s e  =  segment numbers, range 1 - 128
 EXAMPLES:
     A,FUDGE<return>     Add in current seg from voice FUDGE
     A,FUDGE:16<return>  Add in segment 16 from voice FUDGE
     A,2:16,100<return>  Add in segments 16 to 100 from voice 2
     A,4:*<return>       Add in ALL segments from voice 4
 The ADD command allows segment(s) of two voices to be blended.
 The WAVEFORM MEMORY of the currently selected voice will be
 modified to contain an equal mix of the waveforms already in
 the specified segments and those from the selected voice.
 An interesting operation involves the combined use of the
 &bi614TRANSFER, &bi612ROTATE, and &bi615ADD commands to achieve "doubling".
 Use TRANSFER to move all segments to another (scratch) voice
 and then ROTATE it RIGHT by some amount (say, 48 points) thus
 DELAYING it. Now reselect  original  voice and ADD all segments
 back in. Experiment with different rotation (delay) factors.
 This works best in best in MODE 4.
  TO BLEND a looped voice 
 TYPE:   B,<filename>,<segments><return>
    where:  filename  =  the name of a loaded voice
            segments  =  1 to 128
EXAMPLES:
 B<return>       blend current voice within default loop
 B,2<return>     voice 2=>current voice with default loop
 B,2,*<return>   voice 2=>current voice loop over 128 segs.
 B,10,20<return> blend current voice, loop over segs. 10 to 20

BLEND makes a looped sound smoother by taking the loop length,
dividing it into two halves, and fading the first into the
second. After BLENDING loop length is one half the original.
<filename> is transferred to current voice and blended over
specified segments. Current voice is overwritten.
If no segments are specified then defaults to current loop
position in <filename>. If no current loop in <filename> then
default loop is current Page 6 sement to segment 128.
If <filename> not specified then current voice is blended.

Also available is the ;L option, which causes the BLEND to use
a linear ramping function instead of the default square root
ramping function. This may be useful for regular repetitive
waveforms such as Page 4 and 5 generated sounds.
  TO JUSTIFY a VOICE waveform     TYPE:   JU,s,a,p<return>

    where:  s = start point as <segment'point>
            a = alignment point as <segment'point>
                must be equal to or greater than start
            p = period 1 to 16383
EXAMPLE
JU,1'31,1'31,126<return> - Justify from seg 1 point 31 aligning
                           (into tune) from seg 1 point 31.
                           Make 126 points of waveform fit into
                           1 segment.

 JUSTIFY will shrink or stretch waveforms to fit segment bound-
 aries. Waveforms can be pulled into tune, making it easier to
 &bi49LOOP or &bi55ANALYZE the waveform. JUSTIFY always looks for
 waveform starting from zero with a positive rising edge.
 Start point should have a LEVEL of zero and positive going.
 Alignment point is where waveform justification begins.
 Period is the number of points of pre-justified waveform from
 one zero rising edge to the next that will be squeezed or
 stretched into 1 segment.

 TO SELECT any loaded VOICE  see PAGE 4, &bi410HELP-SHEET-10
 TO LOAD/SAVE VOICES or INSTRUMENTS  see PAGE 1, &bi18HELP-SHEET-8
                                                                                                          