&LS12       sheet: 2.   &BI32 REGISTER control
             2.       &BI32 NPHONY of a register
             3.       &BI33 TUNING of a register
             4.       &BI34 NAME/MODE of a voice
             5.   &BI35 KEYBOARD control
             5.       &BI35 SELECTION of a keyboard number
             6.       &BI36 MAPPING of registers to the keyboards
             7.       &BI37 PITCH/SCALE tuning controls
             8.   &BI38 VOICE files
             9.       &BI39 LOAD voice command
             9.       &BI39 SAVE voice command
            10.       &BI310 MULTI-VOICE load command
            11.       &BI311 CREATE voice command
            12.   &BI312 INSTRUMENT files
            12.       &BI312 LOAD instrument command
            13.       &BI313 SAVE instrument command
            13.   &BI313 PROTECTION against overwriting your files
            14.   &BI314 OPTIONS to use with the SAVE commands&LS10
   For HELP , touch any BOX with LIGHTPEN or type: n<set>  
                                          where: n = sheet no.
   For HELP with HELP PAGE , touch  &BI12 THIS  or type: H1<return>
&NS                        REGISTER CONTROL
 REGISTERS  are groups of 1 or more of the eight OUTPUT CHANNELS.
 You may have from 1 to 8 registers (identified by the letters:
 A-H) provided the TOTAL of their channels is not more than 8.
 Each register may be:   &BI39 LOADED with one or more voice files.
                         &BI36 MAPPED to any octaves of the keyboard
                                so the voice(s) may be played.
                         &BI33 TUNED  in three ranges.
  TO SET NPHONY of a REGISTER
 Use <arrow> keys to TAB to NPHONY for desired register.
       TYPE:   n<set>   
       where:  n = desired polyphony: 0 - 8
 Channels are allocated to each register BY THE SYSTEM according
 to the polyphonic capability desired (number of notes that can
 be played at once). This is the NPHONY for the register. The 
 default condition provides one register (A) with NPHONY=8; 
 consuming channels 1-8 and precluding any more registers.
  To CREATE a NEW REGISTER  reduce the NPHONY of the last register
  (bottom of NPHONY column).  When the channel total is LESS 
  than eight, a new register will be available with an NPHONY 
  of zero. TAB down and set the desired nphony.
  To DISPOSE of REGISTERS  set NPHONY to zero. This will dispose
  the register AND ALL REGISTERS BEYOND (higher letters).
   WARNING : any voices IN the disposed register(s) will be LOST.
&NS TO ADJUST TUNING of a REGISTER
 Use <arrow> keys to TAB to OCT SEMI or FINE for the register.
   TYPE:  nn<set>
   where: nn  =  OCT :  -6  -  +6  (octaves)
                 SEMI: -11  -  +11 (semitones)
                 FINE: -99  -  +99 (1/100 semitones)
   You may type <minus>nn to <set>,<add>,<sub> a negative value.

 This alters the tuning offset for the selected register. Any
 change will require a moment to take effect. You may make
 alterations as rapidly as you desire as long as you realize the
 CMI is "catching up" behind you. A short delay may occur when
 selecting some display pages just after tuning a register. The
 TUNING of REGISTERS is SAVED && LOADED with INSTRUMENT FILES.

 TO RESET PAGE 3  TYPE:  R<return>
 This resets PAGE 3 (the INSTRUMENT) to the start-up (default) 
 condition: 1 register (A) with NPHONY=8, no voices loaded.
 The following message will appear before proceeding:
           RESET INSTRUMENT - UNLOAD ALL VOICES (Y)?
  To reply Yes, type: Y<return> 
  To replay NO, type: N<return>  or  <return>  or  <ctrl-esc>.
  WARNING :  All voices will be "unloaded" and thus LOST if not 
  previously SAVED.  
&NS  TO ASSIGN A VOICE NAME
 Use <arrow> keys to TAB to name in the "VOICE" column.
   TYPE:  filename<set>
   where: filename = 1-8 character filename without suffix
                     (See PAGE 2 HELP)
 This simply changes the name of the voice AS LOADED - and has 
 nothing to do with the VOICE FILENAME on disk (which may be 
 changed on PAGE 2).  You may assign to a BLANK voice name 
 (in an un-loaded register) in which case the result is the
 same as &BI311 CREATING a VOICE (see below) execpt the WAVEFORM is 
 NOT zeroed and the voice will not be automatically saved.

 TO SET MODE of a VOICE
 Use <arrow> keys to TAB to MODE for desired voice.
   TYPE:  n<set>
   where: n = desired MODE: 1 or 4
 This changes the operating MODE of the channels assigned to
 the voice. See PAGE 4 && 7 HELP for more about MODE. 
 The MODE setting is LOADED && SAVED as part of a VOICE FILE.

 CHANNEL DISPLAY  shows which AUDIO OUTPUT CHANNELS are allocated
 to each voice.  These numbers correspond to the audio output
 sockets on the back panel. 

&NS                        KEYBOARD CONTROL
 THE KEYBOARD MAPS  each consist of a KEYBOARD NUMBER followed by
 six letters indicating the REGISTER assigned to each octave. 
 The SELECTION table allows you to assign any of the eight 
 keyboard numbers to the MASTER or SLAVE music keyboard, thus
 "linking" it to the corresponding map. Keys in any octave will 
 then activate the register chosen for that octave. Sequences 
 made with the KEYBOARD SEQUENCER or M.C.L. also have keyboard 
 numbers determining the map to which they link when replayed. 
 The KEYBOARD MAPS are LOADED && SAVED as part of an INSTRUMENT
 FILE.

 TO SET KEYBOARD SELECTION NUMBER
 Use <arrow> keys to TAB to MASTER or SLAVE, TYPE: n<set>

     where:  n = keyboard map no. 1 - 8

 This links the selected MUSIC keyboard to the desired KEYBOARD
 MAP.  The selection is NOT confined to PAGE 3 - the keyboard
 will now remain linked to the map on any page.

 TO SET KEYBOARD SELECTION NUMBER from ANY DISPLAY PAGE  
 TYPE:  Kn<return>  - to set master kbd
        KSn<return> - to set slave kbd
&NS TO ASSIGN REGISTERS to KEYBOARD MAPS
 To assign to ALL SIX octaves of a keyboard...
    TYPE:                                    LIGHTPEN:
      Use <arrow> keys to TAB to keyboard     <select REG>
            number in "KBD" column.           <select KBD>
      r<set>
 
 To assign to ONE octave of a keyboard...
    TYPE:                                    LIGHTPEN:
      Use <arrow> keys to TAB to octave       <select REG>
            within keyboard map.              <select octave>
      r<set>

 where:  r = desired register A - H

 When using the lightpen <select REG> means touch the desired
 register in the "REG" column.  If the register is ALREADY
 selected (illuminated), this step is unnecessary.  Once a
 register is selected, just touch the keyboard number or octave
 to <select KBD> or <select octave>.    

&NS TO ADJUST SYSTEM MASTER PITCH  
 Use <arrow> keys to TAB to PITCH, TYPE:  n<set>       
    where: n = 0 - 255  
 This provides a tuning adjustment for the entire system of 
 about +- 1/2 semitone. The normal (default) setting is 128 and
 will produce A = 440 Hz.  The master pitch will be SAVED and 
 LOADED as part of an INSTRUMENT FILE.

 TO DEFINE KEYBOARD SCALE FUNCTION
 Use <arrow> keys to TAB to desired item, TYPE:  n<set>
    where: n = desired value
 The SCALE function sets the PITCH INCREMENT (change in pitch 
 between keys) for the system. The normal (default) setting 
 is:                
        12 \/ 2.00  (pronounced: twelfth root of two)

 The 12 is the ROOT, 2 is the BASE(integer) and 00 is the
 BASE(fraction).  This setting defines the standard tempered 
 scale by specifying that 12 keys change the pitch by a factor
 of 2 (1 octave). For example to specify a 1/4-tone scale, set 
 ROOT to 24 and BASE to 2; i.e, 24 keys = 1 octave. The SCALE 
 setting will be SAVED && LOADED as part of an INSTRUMENT FILE.

  RANGES : ROOT=1-255  BASE(integer)=1-7  BASE(fraction)=0-99
&NS                  LOADING and SAVING VOICES
 A VOICE is a CMI "sound" consisting of:
    WAVEFORM
       Digital waveform for the voice; synthesized on PAGES 4-6
       or sampled from external source on PAGE 8.
    HARMONIC AMPLITUDE PROFILES
       Dynamic amplitude profiles for 32 harmonics; used on
       PAGES 4 and 5 for timbre and amplitude modification.
    MODE && LOOP
       Operating mode for output channels and waveform loop
       position (see PAGE 7 && 4 HELP).
    CONTROL FILE NAME
       The name (if any) assigned to CONTROL FILENAME on PAGE 7.

 This may all be SAVED on RH disk as a VOICE FILE (.VC suffix).
 By LOADING the file all characteristics of the voice will be
 restored.  If there is a CONTROL FILE NAME on PAGE 7 when the
 voice is SAVED then that CONTROL FILE will be automatically
 loaded with the VOICE FILE (see PAGE 7 HELP for more about
 control files). The SAVE/LOAD/CREATE voice commands described 
 below may be used from ALL standard display pages EXCEPT 7 && 9.

   NOTE: As in most CMI commands, wherever commas are indicated
   spaces may be used instead.
&NS TO LOAD A VOICE    TYPE: L,r,filename<return>
   where:    r  =  register A - H
      filename  =  1-8 character voice filename with or without
                    the .VC suffix (see PAGE 2 HELP)
   EXAMPLE:  L,H,CYMB3<return> -  Load CYMB3.VC into register H

 The register must exist, i.e.: NPHONY not zero.  If the file is
 found on RH disk it will be loaded. If a CONTROL FILE NAME was
 linked to the voice with the SAVE or PAGE 7 "LNK" commands it 
 will be loaded after the voice; otherwise the PAGE 7 CONTROL 
 PARAMETERS will be reset to their defaults (see PAGE 7 HELP).

 TO SAVE A VOICE   TYPE: S,filename<return>
                   or: S,filename,newname<return>

   where: filename = name of a loaded voice (shown on PAGE 3)
                      with or without .VC suffix
           newname = new filename; to SAVE with a different name

   EXAMPLE:  S,FLUID<return>        - Save voice FLUID.VC
             S,FLUID,FLUID2<return> - Save voice FLUID.VC in
                                      file FLUID2.VC
 The selected VOICE will be SAVED, with a new name if desired.
 See also OVERWRITE &BI313 PROTECTION and SAVE COMMAND &BI314 OPTIONS below.
&NS TO LOAD MULTIPLE-VOICES  TYPE: L,r,filename,filename,...<return>

   where:    r  =  register A - H
      filename  =  1-8 character voice filename with or without
                    .VC suffix (see PAGE 2 HELP)
          ,...  =  continue up to eight filenames        

   EXAMPLE:  
     L,B,DRUM,BRICK,DOG<return> - Load voice files: DRUM.VC,
                                  BRICK.VC and DOG.VC into
                                  register B
 If more than one VOICE is loaded into a register the number of
 channels required by the register will be NPHONY multiplied by
 the NUMBER of VOICES. Thus the &BI32 NPHONY must be set such that
 the channel TOTAL does not exceed 8 BEFORE loading multiple 
 voices. The register becomes a  MULTI-VOICE REGISTER : one key 
 will play all its voices. For example, if NPHONY of register A
 is set to 1 and B to 0, register A may be loaded with EIGHT 
 voices - all of which will play when the register is activated.
            type: L,A,V1,V2,V3,V4,V5,V6,V7,V8<return>
            where: V1,V2,etc  =  eight voice filenames

 See PAGE 2 HELP to LOAD multiple voices by LIGHTPEN.

&NS TO CREATE A NEW (BLANK) VOICE   TYPE: C,r,filename<return>

   where:    r  =  register A - H
      filename  =  1-8 character voice filename with or without
                    the .VC suffix (see PAGE 2 HELP)

   EXAMPLE:  C,A,BOOM<return>  -  Create new voice BOOM.VC
                                  in register A
 The register must exist, i.e: &BI32 NPHONY not zero. A new VOICE will
 be created in the register with a null WAVEFORM and HARMONIC 
 PROFILES (PAGE 4).  CONTROL PARAMETERS (PAGE 7) will all be 
 reset to default values. The VOICE MODE may be set before the 
 CREATE command is given. Once created, the new voice is 
 automatically SAVED.  However, if the CREATE command is given 
 with a full disk, or NO disk in the RH drive, the voice will 
 still have been successfully created in the register. See also
 OVERWRITE &BI313 PROTECTION , SAVE COMMAND &BI314 OPTIONS and TO &BI34 ASSIGN A 
 VOICE NAME.
&NS               LOADING and SAVING INSTRUMENTS
 The INSTRUMENT consists of:
      REGISTER CONTROL SETTINGS
          Including the NPHONY and TUNING for all registers.
      VOICE NAMES
          The names of all loaded VOICES.
      KEYBOARD CONTROL SETTINGS
          The KEYBOARD MAPS and MASTER TUNING controls.
 Thus DISPLAY PAGE 3  is  the INSTRUMENT and may be SAVED as an
 INSTRUMENT FILE (.IN suffix).  By LOADING the file, the entire
 previous state of the CMI can be restored - all VOICE FILES 
 will be automatically LOADED again PROVIDED they are all found
 on the RH disk. The LOAD/SAVE instrument commands described
 below may be used from ALL standard display pages EXCEPT 7 && 9.

 TO LOAD AN INSTRUMENT   TYPE: L,filename.IN<return>
                         or: L,IN,filename<return> (old format)
   where: filename = 1-8 character filename (see PAGE 2 HELP)
   EXAMPLE:  L,BRASS.IN<return> - Load instrument file BRASS.IN

 The REGISTER CONTROL and KEYBOARD CONTROL settings are LOADED 
 and then all VOICE FILES are LOADED. 
  To HALT the loading for any reason , type:  <ctrl-esc> 
    ( press && hold <ctrl> - press <esc> ).
&NS TO SAVE AN INSTRUMENT  TYPE: S,filename.IN<return>
                        or: S,IN,filename<return>  (old format)

   where:  filename = 1-8 character filename (see PAGE 2 HELP)

   EXAMPLE:  S,PERC.IN<return>  - Save instrument file PERC.IN

 The VOICE NAMES, REGISTER CONTROL and KEYBOARD CONTROL settings are SAVED. Note that an instrument file may be saved even when
 NO voices are loaded - thus favourite configurations may be 
 saved as "setup templates" (these take only a moment to load).
  To save VOICE FILES with instrument  see SAVE COMMAND &BI314 OPTIONS.

 OVERWRITE PROTECTION
 When saving / creating voice or instrument files, if there is
 ALREADY a file on the disk with the same name && suffix this 
 question will appear:
                   OVERWRITE filename.sf (Y)?
     TO REPLY:
   Yes, overwrite file  - Y<return>
   No, do not overwrite - N<return>  or  <return>  or <ctrl-esc>
        ( <ctrl-esc> = press && hold <ctrl> - press <esc> )
 If desired, this protection may be turned-off by using the
 "yes" option - see SAVE COMMAND OPTIONS below.
&NS SAVE COMMAND OPTIONS 
 There are three options that may be used in conjunction with
 the commmands to save voices and instruments.  To use any or
 all of these, 
   TYPE:  ;o   before pressing <return> for the command.
   where:  o = option(s):  V - "voice" option; save voice
                                 files with instrument file.
                           C - "control" option; save control 
                                 files with voices.
                           Y - "yes" option; overwrite any
                                 existing files.
 EXAMPLES:
   S,FLUTES.IN;V<return>    - Save instrument FLUTES and all
                               loaded voices.
   S,FLUTE1;C<return>       - Save voice FLUTE1 and its control
                               file.
   S,BIGONE.IN;VC<return>   - Save instrument BIGONE and all
                               loaded voices AND control files.
   S,EASY;Y<return>         - Save voice EASY, overwrite the
                               file if it exists.
   S,BIGGEST.IN;YVC<return> - Save instrument BIGGEST including
                               all voice and control files,
                               overwrite any existing files.
                            end
                                                                                              