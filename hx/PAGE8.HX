&tl62&ls12      sheet: 2.   &bi82SOUND SAMPLING
            3.   &bi83SAMPLE RATE
            4.   &bi84FILTER LOW/HIGH
            5.   &bi85SAMPLE LEVEL
            5.   &bi85TRIGGER LEVEL
            5.   &bi85TRIGGER DELAY
            6.   &bi86SAMPLE EXTERNAL SIGNAL
            6.   &bi86DISPLAY AMPLITUDE
            7.   &bi87TABLE of SAMPLE RATES
            7.   &bi87SELECT any loaded VOICE
            7.   &bi87LOAD/SAVE INSTRUMENT and VOICE files&ls10&tl12



 For HELP  touch any BOX with LIGHTPEN or TYPE: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &bi12THIS or TYPE: H1<return>
  SOUND SAMPLING  is the process of creating a CMI voice waveform
 by analog-to-digital conversion of an external audio source.
 The source must be connected to the MIC IN or LINE IN socket
 on back panel and the input selection switch set accordingly.
 If the ADC (analog-to-digital direct) input is used, LOW and
 HIGH filters and SAMPLE LEVEL control are bypassed. This input
 requires approx. 10 Volts P-P level.

 A voice must be CREATED or LOADED and should be in MODE 4 and
 ready to play on the keyboard (see PAGE 3 HELP). A table of
 variables related to the sampling process occupies the top
 area of display page. These may be selected for assignment by
 using the <arrow> keys or LIGHTPEN to TAB to the displayed
 value. To modify, type number followed by <set>,<add>, or <sub>
 key; standard numeric assignment (see PAGE 1 HELP).

 A stroboscopic-type TUNING INDICATOR is provided to help
 sample perfectly in tune.

 The  USERS MANUAL  contains a full discussion of the sound
 sampling process and should be consulted if further guidance
 than this HELP page is required.
  SAMPLE RATE       range: 2100 - 30200 Hz
 This is the frequency at which the external signal is sampled
 and converted; thus determining two aspects of the sample:
    1. BANDWIDTH (fidelity) of the sample IMPROVES with
       increasing SAMPLE RATE. Bandwidth is approximately equal
       to half the sampling frequency.
    2. DURATION of the sample gets shorter with increasing
       SAMPLE RATE.
 The number of individual samples taken is fixed - the number of
 POINTS in the WAVEFORM MEMORY, i.e. 16,384. The faster these
 samples are taken, the shorter the duration of the sound
 becomes.

 The CORRECT setting of SAMPLE RATE  is critical with pitched
 sounds since the voice will only be IN TUNE if ONE CYCLE of
 the resulting sampled waveform fits exactly into one SEGMENT
 of waveform memory. This is achieved when the SAMPLE RATE
 equals the frequency of the source multiplied by 128 (128
 samples per cycle). The default setting (14080) is the correct
 sample rate for A=110 Hz. The TUNING INDICATOR display assists
 you in adjusting the SAMPLE RATE correctly. PAGE D has
 been designed for viewing the sampled waveform to quickly
 determine the accuracy of the sample rate; see PAGE D HELP.
 See also &bi87SAMPLE RATE TABLE.
  FILTER LOW/HIGH   range: 1-9
 These filters can be used as desired to remove unwanted high
 or low frequency components of the external source. The FILTER
 OUT socket on back panel allows the signal to be monitored
  after  these filters. It is a good practice to set FILTER HIGH
 to cutoff at about half the SAMPLE RATE (since this is the
 bandwidth limit). Frequencies greater than this are only likely
 to contribute a "dirty" quality to the voice.

 To bypass the filters and sample level control, use the ADC
 (Analog-To-Digital) input.

                                                            
      |   value   FILTER LOW cutoff     FILTER HIGH cutoff  |
           1            18  Hz                0.6 KHz
           2            26                    0.8
           3            37                    1.0
           4            52                    2
           5            73                    3
           6           104                    4
           7           147                    6
           8           208                    8
           9           294                   12
  SAMPLE LEVEL     range: 0 - 255
 The amplitude of the sampled waveform is determined by this
 control. It should be set so that the loudest section of the
 sound is neither CLIPPING or less than about 80% of full
 scale. The AMPLITUDE DISPLAY provided will indicate whether
 SAMPLE LEVEL should be increased or decreased.
 The TUNING INDICATOR will indicate clipping is occurring
 before you sample.

 TRIGGER LEVEL    range: -128 to 127
 This is the amplitude THRESHOLD at which the sampling process
 is triggered to begin. When the &bi86SAMPLE command is given the
 system will wait until this level is reached before proceeding.
 Note that a NEGATIVE value can be assigned if desired to cause
 triggering on a negative excursion of the signal.

 TRIGGER DELAY    range: 0 - 65535 msecs
 If desired, this can be used to cause a DELAY  after  the TRIGGER
 has occured. When sampling a taped source, a burst of tone can
 recorded shortly before the signal to sampled and used instead
 of the signal itself to TRIGGER the sampling process. TRIGGER
 DELAY can then be used to precisely define the point at which
 sampling will actualy begin. This is extremely useful for
 sounds with airy, gentle attack characteristics.
  TO SAMPLE EXTERNAL SIGNAL       TYPE:                 LIGHTPEN:
                                S<return>             <SAMPLE>
 If the TRIGGER LEVEL is  too high  or  no signal  is present
 the CMI will wait for about 15 seconds and finally give up
 with the message: TRIGGER TIMEOUT. If this occurs, check for
 signal - adjust TRIGGER LEVEL if necessary and try again.
 When the SAMPLE has completed the AMPLITUDE DISPLAY in lower-
 right will show the amplitude envelope of the waveform. If
 clipping or insufficient level can be seen adjust either
 SAMPLE LEVEL or source level accordingly. Use PAGE 6 for
 detailed inspection for clipping. Use PAGE D to assess the
 accuracy of SAMPLE RATE (see PAGE D HELP) or check TUNING
 of the new voice. If SHARP the SAMPLE RATE is too LOW.

 TO DISPLAY WAVEFORM AMPLITUDE   TYPE:                 LIGHTPEN:
                                D<return>             <DISPLAY>
 This command activates the AMPLITUDE DISPLAY as a convenient
 separate function. Any voice may be displayed but note that
 HARMONICALLY SYNTHESIZED MODE 1 voices will usually show no
 amplitude variation at all (amplitude envelope control in
 MODE 1 is provided by the ENERGY profile on PAGE 4). However
 the effects of PAGE 6 amplitude modification will be clearly
 visible. Hairlines are provided to assist with level settings
 and segment number identification.
 
                        SAMPLE RATE TABLE              
       |   note                  +8va    -8va   -16va  |
           A = 110 Hz: 14080   28160    7040    3520
           A#          14917   29835    7459    3729
           B           15804     .      7902    3951
           C           16744     .      8372    4186
           C#          17740     .      8870    4435
           D           18795     .      9397    4699
           D#          19912     .      9956    4978
           E           21096     .     10548    5274
           F           22351     .     11175    5588
           F#          23680     .     11840    5920
           G           25088     .     12544    6272
           G#          26580     .     13290    6645

 This table and the TUNING INDICATOR should be used to assess
 correct sample rate.
 If tuning indicator display drifts towards the "+" sign,
 increase sample rate. If tuning indicator display drifts
 towards the "-" sign, decrease sample rate.

 TO SELECT any loaded VOICE  see PAGE 4, &bi410HELP-SHEET-10
 TO LOAD/SAVE VOICES or INSTRUMENTS  see PAGE 1, &bi18HELP-SHEET-8
           