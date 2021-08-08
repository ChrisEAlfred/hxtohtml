&tl72&ls12
     sheet: 2.   &biD2 VOICE WAVEFORM DISPLAY
            3.   &biD3 FORMATTING Selectors
            4.   &biD4 DISPLAY Waveform
            4.   &biD4 SELECT any loaded Voice
            4.   &biD4 LOAD/SAVE Instrument or Voice files&ls10&tl12           








 For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &bi12 THIS or type: H1<return>
&NS VOICE WAVEFORM DISPLAY  allows the entire WAVEFORM MEMORY for
 a voice to be displayed on the screen at once. PAGE D is a
 purely visual page. The format of the display has been 
 designed to reveal as much as possible about the voice 
 waveform in a single glance, particularly when creating a 
 voice by SAMPLING an EXTERNAL SOURCE (see PAGE 8 HELP).
 The waveform display will show immediately whether the SAMPLE 
 RATE was appropriate for a pitched external source:
    If SAMPLE RATE was appropriate  (i.e., voice is in tune with
     the system) waveform crests and troughs will proceed in
     linear, orderly way along the display - varying little
     in their position within each successive segment.
    If SAMPLE RATE was almost appropriate  (i.e., voice is
     slightly flat or sharp; a 1-segment LOOP produces a sudden
     slight pitch shift) waveform crests and troughs will
     "drift" laterally through the display. If this drift is
     to the RIGHT then sample rate was too HIGH - if to the 
     LEFT then sample rate was too LOW.
    If SAMPLE RATE was totally wrong  then the display will
     usually be a hopeless jumble.  The relationship of one
     cycle of signal to each segment of waveform memory 
     necessary for correct tuning is also the relationship
     required for a visually coherent display. Thus voices
     that  look good  will inevitably  sound good  too.
&NS FORMAT SELECTOR  provides the choice of 2 display formats.
  FORMAT (A) is "tilted" diagonally for a 3-dimensional effect.
  FORMAT (B) is vertically aligned with the screen. The display
             resolution is greater and fine detail is more 
             easily distinguished&ls15
  To select FORMAT  touch <A> or <B> with LIGHTPEN. The format&ls10
  may also be specified as part of the typed &biD4 DISPLAY command.&ls15
 A FORMAT (A) display is provided automatically whenever PAGE D&ls10
 is selected. Any loaded VOICE may be selected for display.&ls15
 END SEGMENT SELECTOR  indicates the SEGMENT number of the last&ls10
 segment displayed.  This can be 128, 64 or 32.&ls15
  To select END SEGMENT  touch desired number with LIGHTPEN. The&ls10
  END SEGMENT may also be specified as part of the typed 
  DISPLAY command.&ls15
 STEP SELECTOR  determines the NUMBER of SEGMENTS skipped between&ls10
 display traces. Thus if STEP = 4 every fourth segment is 
 displayed. The STEP can be 1, 2, 4, or 8 within limits which
 are automatically displayed depending on the FORMAT selected.&ls15
  To select STEP  touch desired number with LIGHTPEN. The STEP&ls10
  value may also be specified as part of the typed DISPLAY
  command.
&NS TO DISPLAY WAVEFORM                  TYPE:             LIGHTPEN:
   with current settings         -  D<return>         <DISPLAY>
   select Format A               -  DA<return>           n/a
   select Format B               -  DB<return>           n/a
   select (new) End Segment      -  D,e<return>          n/a
   select (new) End Seg and Step -  D,e,s<return>        n/a

     where:  e  =  end segment number: 32,64,128 only
             s  =  step value: 1,2,4,8 only
  EXAMPLES:
   DA,128<return>      Display Format A, end seg = 128
   DB,32,1<return>     Display Format B, end seg = 32, step = 1
   D,64<return>        Display, end seg = 64
   D,,2<return>        Display, step = 2

 The voice WAVEFORM MEMORY is displayed with the selected
 format, end segment and step.

 To INTERRUPT the DISPLAY  for any reason, press <ctrl-esc>.
   Press && hold <ctrl> - press <esc>.

 TO SELECT any loaded VOICE  see PAGE 4, &bi410HELP-SHEET-10
 TO LOAD/SAVE VOICES or INSTRUMENTS  see PAGE 1, &bi18HELP-SHEET-8
                                                                                                        