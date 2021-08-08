&TL60&LS12      sheet:  2.    &bi52 HARMONIC amplitude faders and levels
             2.    &bi53 CURRENT segment selection
             3.    &bi53 ZERO all harmonic faders
             3.    &bi53 FILL other segments
             4.    &bi54 COMPUTE waveform
             5.    &bi55 WAVE TABLE voice
             5.    &bi55 ANALYZE waveform
             5.    &bi55 ANALYZE FILTER VALUE
             5.    &bi55 SELECT any loaded voice
             5.    &bi55 LOAD/SAVE instrument and voice files&ls10




 For HELP  touch any BOX with LIGHTPEN or TYPE: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &bi12THIS or TYPE: H1<return>
 &TL12 HARMONIC AMPLITUDE FADERS  control the relative amplitudes of
 32 HARMONICS for individual WAVEFORM SEGMENTS. Amplitude
 levels  can be seen both as a level on a fader and a number.
 The &bi54COMPUTE  command mathematically processes these to
 generate the implied waveform in WAVEFORM MEMORY by ADDITIVE
 SYNTHESIS. The PROFILE GRAPH of PAGE 4 and the FADERS of
 PAGE 5 thus have similar functions; in fact any change in
 harmonic amplitudes on either of these pages will be reflected
 on the other since both are dealing with the SAME harmonics.
 Any loaded &bi56VOICE may be selected. PAGE 5 may be used in
 either MODE 1 or MODE 4.

 See PAGE 4 HELP for more about WAVEFORM SEGMENTS and MODE.

 TO SET a HARMONIC FADER with LIGHTPEN  touch fader with LIGHTPEN
 and position as required. Value appears beneath harmonic.

 TO SET a HARMONIC FADER by ASSIGNMENT  use <arrow> keys or
 LIGHTPEN to TAB to desired fader, TYPE:  n<set>
                                  where:  n  =  0 - 255
  TO SELECT CURRENT WAVEFORM SEGMENT  use <arrow> keys or LIGHTPEN
 to TAB to CURRENT SEGMENT, TYPE:  n<set>
                           where:  n  =  segment number
 Maximum segment numbers are: 32 in MODE 1 and 128 in MODE 4.
 The FADERS and WAVEFORM for the segment will be displayed.

 TO ZERO ALL HARMONIC FADERS  TYPE:           LIGHTPEN:
                             Z<return>       <ZERO>

 All HARMONICS for the current segment will be set to ZERO.
 No change occurs to the waveform until you &bi54COMPUTE.

 TO FILL OTHER SEGMENTS            TYPE:
   To fill segment n           -  F,n<return>
   To fill segments s thru e   -  F,s,e<return>
   To fill segments 1 thru 128 -  F,*<return>
     where:  n s e  =  segment numbers: max  32 in MODE 1
                                        max 128 in MODE 4
 EXAMPLES:  F,12    -  Fill segment 12
            F,4,32  -  Fill segments 4 thru 32

 This will FILL the specified segment(s) with the HARMONIC
 AMPLITUDES (not waveform) for the CURRENT SEGMENT. No change
 will occur to the waveform until &bi54COMPUTE command is given.
  TO COMPUTE WAVEFORM FROM HARMONICS   TYPE:           LIGHTPEN:
 To compute current segment only  -  C<return>      <COMPUTE>
 To compute segment n             -  C,n<return>       n/a
 To compute segments s thru e     -  C,s,e<return>     n/a
 To compute segments 1 thru 128   -  C,*<return>       n/a

     where:  n s e  =  segment numbers: max  32 in MODE 1
                                        max 128 in MODE 4
 EXAMPLES:  C<return>      -  Compute current segment
            C,12<return>   -  Compute segment 12
            C,1,98<return> -  Compute segments 1 thru 98
 The WAVEFORM for the selected segment(s) is generated and
 can be seen in the waveform display. If the voice selected is
 in MODE 4 the effect of the COMPUTE command on PAGE 5 is
 identical to that on PAGE 4 (except that any number of segments
 may be computed). If the voice is in MODE 1, note that the
 ENERGY PROFILE (amplitude envelope) of the voice will NOT be
 affected by a PAGE 5 COMPUTE. Thus if developing a MODE 1 voice
 on PAGE 5, the ENERGY and DURATION profiles should be set on
 PAGE 4 for amplitude and duration control. See PAGE 4 HELP.
 Depending on the number of segments being computed and their
 harmonic complexity the COMPUTE command will put your CMI
 "off the air" for a short period.
  WAVE TABLE VOICE  - See description on PAGE 4, &bi46HELP-SHEET-6.
 TO ANALYSE WAVEFORM                  TYPE:           LIGHTPEN:
 To analyze current segment only  -  A<return>      <ANALYZE>
 To analyze segment n             -  A,n<return>       n/a
 To analyze segments s thru e     -  A,s,e<return>     n/a
 To analyze segments 1 thru 128   -  A,*<return>       n/a
     where:  n s e  =  segment numbers: max  32 in MODE 1
                                        max 128 in MODE 4
 EXAMPLES:  A<return>      -  Analyze current segment
            A,12<return>   -  Analyze segment 12
            A,1,98<return> -  Analyze segments 1 thru 98
 This command does a Fourier analysis of a waveform, turning a
 sound into component harmonics. Opposite of COMPUTE. Waveform
 must be roughly symmetrical, start with a rising edge, and
 have no pitch change. If necessary, use &bi612ROTATE, &bi67INVERT
 and &bi617JUSTIFY commands on Page 6 to prepare waveform.
 ANALYZE FILTER VALUE  will filter out higher harmonics from
 analysis.       Filter value 0 is minimum - no effect
                 Filter value 2 is default
                 Filter value 7 is maximum - greatest filtering
 After analyzing, COMPUTE new sound from harmonics.

 TO SELECT any loaded VOICE  see PAGE 4, &bi410HELP-SHEET-10
 TO LOAD/SAVE VOICES or INSTRUMENTS  see PAGE 1, &bi18HELP-SHEET-8
                       