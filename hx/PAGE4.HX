&ls12      sheet: 2.    &bi42 PROFILE GRAPH
            3.    &bi43 HARMONIC amplitude profiles
            4.    &bi44 DURATION profile
            4.    &bi44 ENERGY profile
            5.    &bi45 DELETE command
            5.    &bi45 ZERO command
            6.    &bi46 WAVE TABLE voice
            7.    &bi47 COMPUTE command
            7.    &bi47 INTERP switch
            8.    &bi48 SCALE command
            8.    &bi48 JOIN/PLOT selector
            9.    &bi49 LOOP control
           10.    &bi410 CLEAR command
           10.    &bi410 RESET command
           10.    &bi410 VOICE selection
           10.    &bi410 LOADING/SAVING files
           11.    &bi411 WAVEFORM memory
           11.    &bi411 MODE of a voice&ls10
 For HELP  touch any BOX with LIGHTPEN or TYPE: n<set>
                                       where: n = sheet no.
 For HELP with HELP PAGES , touch &bi12 THIS or TYPE: H1<return>
  THE PROFILE GRAPH  allows changing parameters to be specified
 with the LIGHTPEN as PROFILES. The vertical scale represents
 AMPLITUDE (log); the horizontal represents TIME as &bi412 WAVEFORM
 SEGMENTS. &bi43 HARMONIC AMPLITUDE profiles provide control of the
 relative  amplitudes of 32 harmonics. These are mathematically
 processed by the COMPUTE command to yield the implied waveform
 by the principle of ADDITIVE synthesis. Any loaded &bi410 VOICE may be
 chosen for display or modification. The setup of the graph is
 preserved separately for each voice and is &bi411 SAVED/LOADED as part
 of VOICE files. The &bi412 MODE of the selected voice determines some
 important aspects of the profile graph and PAGE 4 in general.

  When voice is in MODE 1  -
     Each horizontal division represents  1  waveform segment.
     There are 32 waveform segments - 32 points per profile.
     The &bi44 DURATION profile sets time-duration of each segment.
     The &bi44 ENERGY profile controls voice amplitude envelope.
     The &bi48 SCALE command is provided.
  When voice is in MODE 4  -
     Each horizontal division represents  4  waveform segments.
     There are 128 waveform segments - 128 points per profile.
     Duration of each segment is one cycle.
     The MODE 4 ATTACK parameter is provided on PAGE 7.
     (See PAGES 7 && 6 HELP for amplitude control in MODE 4.)
  THE HARMONIC AMPLITUDE PROFILES  are represented by the numbers
 1-32 displayed across the screen. These numbers are lightpen
 switches to display each profile. If desired, all 32 profiles
 may be displayed on the graph simultaneously for viewing;
 however, more than about 10 at once usually looks confusing
 and can make the lightpen response sluggish. This means that
 it is possible for profiles to be un-displayed and yet still
 remain ACTIVE (contributing to the sound). For this reason,
 two INDICATOR lights (blank if off) are located under each
 harmonic number to show the status of that profile.
     (triangle) : display indicator - profile is now displayed.
        (cross) : active indicator - profile has NON-ZERO value.

 TO DISPLAY/OPEN a HARMONIC PROFILE  touch the desired number with
 the LIGHTPEN. The profile will be DISPLAYED (if not already)
 and OPENED for modification with the LIGHTPEN. A BOX around
 the harmonic number and a DOUBLE LINE on the profile graph
 identify the open profile. The lightpen may now be used to
 modify the profile on the graph. See &bi49 JOIN/PLOT. Only one
 profile can be open at a time. Opening a new profile leaves
 the previous one displayed. When harmonic profiles are altered
  no change  will be heard in the voice until the &bi47 COMPUTE command
 is given to translate the specified harmonic content into
 waveform. When OPEN the profile may be &bi45 DELETED or &bi45 ZEROED.
  TO DISPLAY/SELECT a BLOCK of 8 HARMONIC profiles  touch one of
 the BLOCK SELECTOR boxes centred under each group of 8 harmonic
 numbers. This will DISPLAY the 8 profiles on the graph. They
 are also now SELECTED for possible use of the DELETE or ZERO
 commands, which will act on ALL eight.

 THE ENERGY PROFILE  defines the overall amplitude envelope of
 the voice when in MODE 1 and MODE 4. The energy profile is
 generated automatically by the &bi47 COMPUTE command in MODE 1  and &bi45 OPENED and modified with the lightpen. In MODE 4,
ENERGY will only be invoked if followed by SCALE command
 See also &bi47 SCALE and &bi49 LOOP.
 The DURATION PROFILE  sets the duration of each WAVEFORM SEGMENT
 in MODE 1. It can be &bi45 OPENED and modified with the lightpen.
 The default value is approx 50 msec per segment (condition
 after the &bi411 CREATE or &bi410 RESET commands). When the voice is played
 each segment is repeated for a number of cycles determined by
 the combination of the duration profile and the pitch being
 produced. This maintains a fairly constant net event length for
 any pitch. If the duration profile is ZEROED a special case is
 created where each segment is only played once regardless of
 pitch; resembling MODE 4. This can be useful in converting
 externally sampled voices that are non-pitched to MODE 1, since
 these will not respond well to having each segment repeated.
  TO DISPLAY/OPEN the ENERGY or DURATION PROFILE
 Touch: <ENG> or <DUR> with the LIGHTPEN. The profile will be
 DISPLAYED (if not already) and OPENED for modification with
 the lightpen - see &bi47 JOIN/PLOT. While open, the profile is
 displayed with a DOUBLE LINE on the graph and ENG or DUR is
 illuminated. The results of altering the energy or duration
 profile can be heard in the voice immediately (once you stop
 drawing). Display indicator lights (triangles) directly under
 ENG and DUR are lit whenever the profiles are displayed. When
 OPEN, either profile may be DELETED or ZEROED.

 TO DELETE or ZERO PROFILE(S)   TYPE:      or    LIGHTPEN:
   delete profile from graph - D<return>        <DELETE>
   set profile to zero value - Z<return>        <ZERO>

 If a profile is OPEN for modification then it will be DELETED
 or ZEROED accordingly. If a HARMONIC BLOCK has been selected
 by touching one of the selection boxes under each group of 8
 harmonics then those 8 harmonic profiles will be DELETED or
 ZEROED. Note that DELETE does not alter the value of a profile
 but only removes it from the graph - ZERO sets the value of
 the profile to zero for all segments.
 
 WAVE TABLE voice 

 Other waveforms instead of sinewaves can be used for additive
 synthesis. WAVE TABLE voice lets waveform segments from another
 loaded voice be the source of sound. Harmonic numbers become
 segment numbers of another specified voice. Note that current
 voice number cannot be selected as a WAVE TABLE.

       Move cursor to "WAVE TABLE voice:   "

       TYPE:   n<set>  where n = voice number from 1 to 8
       0 (default) uses existing SINE wave table for harmonics.

 Cross fades between the first 32 segments of specified voice
 are put into current voice after &bi47 COMPUTE command given.

 This feature is also on Page 5.

  TO COMPUTE WAVEFORM from HARMONICS  TYPE:         LIGHTPEN:
                                    C<return>    <COMPUTE>
 The COMPUTE command processes the &bi43 HARMONIC AMPLITUDE PROFILES
 to generate the implied waveform in each segment of &bi412 WAVEFORM
 MEMORY for the voice. In &bi412 MODE 4 this is done for  128  segments.
 In MODE 1,  32  segments are computed AND the &bi44 ENERGY profile
 is calculated from the combined harmonic amplitudes. The
 waveform is always generated at optimum amplitude; i.e., if
 viewed on the PAGE 6 Waveform Graph, the amplitude will be
 a perfect "fit" within the 8-bit audio range of the CMI. In
 MODE 1 the amplitude changes are expressed in the ENERGY
 profile. Depending on the harmonic complexity, the COMPUTE will
 require -  in MODE 1:  max about  6 secs
            in MODE 4:  max about 20 secs

 TO USE INTERPOLATION SWITCH  touch <ON> or <OFF> with LIGHTPEN.
 The INTERP switch allows you to choose whether or not an
 interpolation ("look-ahead") function is performed by the
 COMPUTE commmand. When ON, each waveform segment is computed
 from a  mix  of the harmonic profile values of that segment and
 those of the next segment. The difference can be subtle and is
 most obvious when rapid or spikey changes exist in the
 harmonic profiles. The best idea is to experiment.
  TO SCALE HARMONICS from ENERGY  TYPE:        LIGHTPEN:
                                S<return>   <SCALE> Mode 1 only
 When the COMPUTE command is given in MODE 1, a new ENERGY
 profile is generated from the combined amplitudes of the
 harmonic profiles. This energy profile may of course be
 modified with the lightpen but the harmonic profiles remain
 unaltered and another COMPUTE would only restore the original
 energy profile. The SCALE command will RE-DRAW the harmonic
 profiles FROM a modified ENERGY profile. If the message
 "OVERFLOW" appears it means at least one profile has reached
 its maximum amplitude and cannot be scaled up any further.
 Note that there is no sure way to return to the condition
 prior to the scale except to reload the voice.
 In MODE 4, SCALE will superimpose the ENERGY profile over  any 
 waveform, sampled or harmonic.
 No lightpen command for SCALE. Can only type S<return>.

 TO SELECT JOIN/PLOT  touch <JOIN> or <PLOT> with LIGHTPEN.
 This selector determines the way the lightpen functions when
 drawing on the profile graph. When JOIN is selected each
 point touched will be joined to the last by a line connecting
 the two. When PLOT is selected each point on the profile
 (32 in MODE 1 - 128 in MODE 4) may be set individually with
 the lightpen without affecting the others.
  THE LOOP
 One or more segments of a voice may be selected to be LOOPED
 (played repeatedly) for as long as the key is depressed and
 during the DAMPING period after release. See also PAGE 7 HELP.
 The LOOP area (if any) is displayed as a solid BAR on the
 dotted line beneath the profile graph. When in MODE 1 the
 effect of the ENERGY profile which lies within the LOOP is
 CUMULATIVE. If that portion of energy profile results in a net
 increase or decrease in volume then each repeat of the LOOP
 will be louder or softer that the preceding one. The ENERGY
 profile can be modified within the LOOP area to provide the
 desired effect.

 TO SET LOOP with LIGHTPEN  first touch <LOOP> with LIGHTPEN.
 Touching the PROFILE GRAPH will now control the LOOP postion
 which consists of a START segment and END segment (if these
 are the same, there is a one-segment LOOP).
      No loop prior to touch     -  create one-segment loop
      Touch left of LOOP centre  -  set START of loop
      Touch right of LOOP centre -  set END of loop

 TO ZERO (remove) the LOOP  first touch <LOOP> with LIGHTPEN
 (if not already illuminated) and then touch <ZERO>.
  TO CLEAR THE PROFILE GRAPH  touch <CLEAR> with the LIGHTPEN.
 This DELETES all profiles (harmonics, energy and duration)
 from the profile graph.

 TO RESET (ZERO all PROFILES)  TYPE:      or      LIGHTPEN:
                              R<return>          <RESET>
 This will RESET all profiles to ZERO. The DURATION profile
 is restored to the default 50ms per segment. The following
 question will appear:
             RESET PAGE 4 - ZERO ALL PROFILES (Y)?
   TO REPLY:            TYPE:
   Yes, do the reset  -  Y<return>
   No, do not reset   -  N<return>  or  <return>  or  <ctrl-esc>

 TO SELECT any loaded VOICE  for display or modification,
  TYPE:   V,filename<return>   or:   V,n<return>
    where:  filename  =  the name of a loaded voice
                   n  =  the number 1-8 of a loaded voice
  EXAMPLES:  V,TUBA<return>  - select voice TUBA
             V,4<return>     - select voice 4
 The NAME, NUMBER && MODE of the current voice are shown in the
 upper-right corner of the page. The names and numbers of all
 loaded voices are shown on PAGE 3.
 TO LOAD/SAVE VOICES or INSTRUMENTS   See PAGE 1, &bi18HELP-SHEET-8.
  WAVEFORM MEMORY  contains the voice waveform in digital form,
 stored in the 16,384 bytes of memory provided in each channel.
 This memory is divided into 128  WAVEFORM SEGMENTS , each with
 128  POINTS  (bytes) of waveform. The basic principle of the
 CMI is to "replay" this memory at the rate required to produce
 the desired pitch. Each segment of memory contains exactly ONE
 CYCLE (period) of the waveform.

 VOICE MODE  controls the function of the waveform memory when a
 voice is played. There are 2 MODES: called MODE 1 and MODE 4.
 When developing a new voice, the mode should usually be chosen
 according to the method of waveform generation to be used:
               Harmonic synthesis  (PAGES 4,5) - MODE 1
        Drawing/External sampling  (PAGES 6,8) - MODE 4
 However these are not RULES and the mode may be changed at
 any time. Each has quite different characteristics.
  MODE 1 : Segments 1-32 are used. Each segment in turn is
  sustained according to the &bi44 DURATION profile position for the
  segment. During this time the amplitude is modulated according
  to the slope of the &bi44 ENERGY profile. The net event duration
  remains virtually constant for any pitch.
  MODE 4 : Segments 1-128 are used. Each is played once before
  moving to the next segment (1 segment per cycle). The net
  event duration is (inversely) related to the pitch.
  COMPUTE COMMAND - MODE 1 :
                                    duration   :
                                    profile    :
                                               :
                                    energy     :
                                   /profile    :
                                  /            : = MODE 1 voice
   harmonic profiles--> COMPUTE -->(             :
                                  \            :
                                   \waveform   :
                                    segments   :
                                      (32)     :

 COMPUTE COMMAND - MODE 4 :
                                    waveform   :
    harmonic profiles--> COMPUTE -->  segments   : = MODE 4 voice
                                     (128)     :



 SCALE COMMAND (MODE 1 only) :
                                    amplitudes
         energy profile--> SCALE -->  of harmonic
                                    profiles
                                               