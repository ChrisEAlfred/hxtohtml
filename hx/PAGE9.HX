&TL20&ls12      sheet:  2.    &bi92 INTRODUCTION to Keyboard Sequencer
             3.    &bi93 FREE space on disk
             3.    &bi93 ASSIGN record && replay files
             4.    &bi94 RECORD command
             4.    &bi94 STOP command
             5.    &bi95 REPLAY command
             6.    &bi96 MERGE command
             7.    &bi97 OVERWRITE protection
             7.    &bi97 TRIM replay file
             8.    &bi98 CONTROLS/SWITCHES recorded or replayed
             8.    &bi98 KEYBOARD selection
             9.    &bi99 INPUT STREAM to keyboard number table
             9.    &bi99 SMPTE TRIGGERING option
            10.    &bi910 SPEED control
            11.    &bi911 SYNC selection: internal or external
            12.    &bi912 CLICK control&ls10

 For HELP  touch any BOX with LIGHTPEN, or TYPE: n<set>
                                        where: n  =  sheet no.
 For HELP with HELP PAGES , touch &bi12 THIS  or TYPE: H1<return>
 &TL12                 INTRODUCTION to KEYBOARD SEQUENCER
&bi94 RECORD When recording, music keyboard EVENTS are timed and
 stored on disk in a file created as the RECORD &bi93 FILE.  Events
 consist of KEY DEPRESSIONS (with VELOCITY), KEY RELEASES, and
 movements of the keyboard &bi98 CONTROLS and SWITCHES. (See PAGE 7
 HELP for use of controls, switches and key velocity.)  The
 currently &bi98 KEYBOARD SELECTION number for the master (or slave)
 keyboard is also recorded with key depressions and releases.

&bi95 REPLAY To replay, a previously recorded sequence is selected as
 the REPLAY &bi93 FILE, from which keyboard events are read back,
 timed and replayed.  Key releases and depressions are sorted
 into eight INPUT STREAMS, corresponding to the recorded
 keyboard numbers.  These input streams can be linked to any of
 the eight KEYBOARD NUMBERS through the &bi99 INPUT STREAM TO KEYBOARD
 NUMBER table.

&bi96 MERGE The merge function consists of recording and replaying
 at the same time.  Keyboard events are recorded exactly as in
 the RECORD function while the replay file is replayed and
 simultaneously re-recorded in the record file. This allows
 a new keyboard performance to be effectively OVERDUBBED. The
 resulting sequence can then be selected as the REPLAY FILE and
 the process repeated.
  DISK ID  shows name of disk in RH drive.

 FREE SPACE  shows size (in sectors) of LARGEST SINGLE BLOCK of
 free disk space on disk in RH drive.  When a RECORD FILE is
 assigned all of this space is given to the new file.  When
 recording (or merging) stops, any unused file space is
 returned to the disk; FREE SPACE then shows the size of the
 NEW largest single block. A 128-note sequence will require
 about 10 sectors of disk space.  The maximum sequence size
 (an entire disk) is over 50,000 notes.

 TO ASSIGN REPLAY or RECORD FILE
 Use <arrow> keys to select replay or record filename.
   TYPE:  filename<set>
   where: filename =  1-8 character filename without suffix.

 When the REPLAY file is assigned the &bi910 SPEED and &bi912 CLICK rate are
 read from the file.  When the RECORD file is assigned, the
 SPEED and CLICK rate are written to the file.  The replay or
 record files may also be specified as part of the typed RECORD,
 REPLAY or MERGE commands. See also &bi97 OVERWRITE PROTECTION.
  TO RECORD A SEQUENCE               TYPE:               LIGHTPEN:
 If record file assigned    -  REC<return>             <RECORD>
 To also assign record file -  REC,filename<return>      n/a&ls5

 EXAMPLE: REC,BOTTOM<return>    Record file = BOTTOM.SQ&ls10
          REC,BOTTOM;S<return>  Wait for SMPTE trigger&ls5

&ls10 A RECORD &bi93 FILE must be assigned, either prior to or as part of
 the command. Recording begins when the word RECORD lights up.
 The &bi98 KEYBOARD SELECTION number determines the &bi99 INPUT STREAM with
 which the sequence will be associated when replayed. Play the
 music keyboard; give the STOP command when finished.  Keyboard
 &bi98 CONTROLS and SWITCHES will be recorded if not disabled. Note
 that the time from the BEGINNING until the FIRST event and the
 time from the LAST event until STOP are recorded (referred to
 as HEAD and TAIL times).  The sequencer must be STOPPED before
 the RECORD command can be given.  If the record file already
 exists, it will NOT be overwritten without your consent.

 TO STOP record, replay && merge     TYPE:               LIGHTPEN:
                         S<return>  or  <ctrl-esc>       <STOP>
 where: <ctrl-esc> = press && hold <ctrl>, press <esc>

 It is not necessary to STOP before changing display pages;
 this will happen automatically.
  TO REPLAY A SEQUENCE           TYPE:                   LIGHTPEN:
 If replay file assigned    -  REP<return>             <REPLAY>
 To also assign replay file -  REP,filename<return>      n/a
 To repeat replay xx times  -  REP,xx<return>            n/a&ls5

 where: xx = replay repeat count: 2-255&ls10

 EXAMPLES: REP,4<return>         (replay assigned file 4 times)
           REP,4;S<return>        (wait for SMPTE trigger) 
           REP,TOP<return>       (replay file TOP.SQ 1 time)
           REP,MIDDLE,48<return> (replay MIDDLE.SQ 48 times)

 A REPLAY &bi93 FILE must be assigned, either prior to or as part of
 the command.  Replay begins when the word REPLAY lights up and
 continues until the end of the sequence.  Once the file has
 played to its own conclusion (without being stopped) the HEAD
 and TAIL times will be displayed under REPLAY &bi97 TRIM.  Any
 &bi98 CONTROL or SWITCH events will be replayed if not disabled.
 KEY events are replayed through the INPUT STREAM corresponding
 to the &bi98 KEYBOARD SELECTION number which was assigned to the
 master (or slave) keyboard when recorded. Each input stream
 can be assigned to "play" any one of the 8 keyboard numbers
 via the &bi99 INPUT STREAM TO KEYBOARD NUMBER table.  The sequencer
 must be STOPPED before the REPLAY command can be given.
  TO MERGE A SEQUENCE           TYPE:                    LIGHTPEN:
 If both files assigned     - M<return>                <MERGE>
 To also assign replay file - M,repfile<return>          n/a
 To also assign both files  - M,repfile,recfile<return>  n/a
 To repeat replay xx times  - M,xx<return>               n/a&ls5

    where:  repfile = replay filename&ls10
            recfile = record filename
                 xx = replay repeat count: 2-255
 EXAMPLES:
  M<return>            Merge (current Replay and Record files)
  M;S<return>          Wait for SMPTE trigger
  M,BAS1,BAS2<return>  Replay file=BAS1.SQ; Record file=BAS2.SQ
  M,SOLO,16<return>    Replay file=SOLO.SQ - replay it 16 times
  M,S3,S4,8,<return>   Replay file=S3.SQ; Record file=S4.SQ -
                         replay 8 times
 REPLAY and RECORD &bi93 FILES must both be specified, either prior
 to or as part of the command.  The replay file is replayed the
 specified number of times and simultaneously re-recorded in
 the RECORD FILE along with the new keyboard performance.
 Recording will continue after the end of the replay file until
 the STOP command is given. The &bi99 INPUT STREAM TO KEYBOARD NUMBER
 table determines the keyboard numbers which will be recorded
 for the replay events. The sequencer must be STOPPED before
 the MERGE command can be given.
  OVERWRITE PROTECTION 
 The sequencer will never OVERWRITE an existing RECORD file
 before displaying the question:
                OVERWRITE filename.SQ (Y)?
         TO REPLY:                 TYPE:
     Yes, overwrite the file   -  Y<return>
     No, do NOT overwrite file -  N<return> or just <return> or
                                  <ctrl-esc>
 TO TRIM REPLAY FILE HEAD/TAIL 
 Use <arrow> keys to TAB to HEAD or TAIL, TYPE:  nnn<set>
     where: nnn = time in &bi910 MICROBEATS: 0 - 65535

 A REPLAY &bi93 FILE must be assigned. The HEAD TIME is the time
 from the beginning of the sequence to the 1st event. The
 TAIL TIME is the time from the last event to the end of the
 sequence. Head and tail time may be adjusted either when
 the sequencer is STOPPED or during REPLAY or MERGE. If the
 sequencer is STOPPED, the new head or tail time will be
 WRITTEN to the file. If the sequencer is in REPLAY or MERGE,
 the new times will only be used for the REMAINDER of the run.
 To obtain a smooth repeat, adjust these times while replaying.
 When the replay file is repeating smoothly, STOP and reassign
 the final settings, thereby writing them to the file. HEAD
 time should usually be set to zero.
  TO RECORD/REPLAY CONTROLS && SWITCHES 
 Use <arrow> keys to TAB to RECORD or REPLAY,  TYPE:
                   To ENABLE record/replay  -   ON<set>
                   To DISABLE record/replay -   OFF<set>
 When RECORD is ON, any use of the keyboard CONTROL faders or
 SWITCHES (including foot pedals) will be recorded during
 RECORD or MERGE. When REPLAY is ON, any CONTROL or SWITCH
 events in the REPLAY file will be played during REPLAY or
 MERGE. Thus during MERGE, if RECORD is OFF and REPLAY is ON,
 control or switch events will be replayed, but NOT recorded.
 Recording busy CONTROLS can require a lot of disk space.

 TO SET KEYBOARD SELECTION
 Use <arrow> keys to TAB to MASTER or SLAVE,  TYPE:  n<set>
        where: n = Keyboard number: 1 - 8
 The K command available on every page can also be used to set
 the keyboard selection number (see PAGE 3 HELP). This number
 determines which of the 8 KEYBOARD MAPS on PAGE 3 is linked
 with the selected music keyboard. When using &bi94 RECORD or &bi96 MERGE
 to record a keyboard performance the keyboard selection number
 determines the &bi99 INPUT STREAM with which that performance will
 be associated when &bi95 REPLAYED. When using MERGE to overdub
 successive performances a different keyboard number is usually
 assigned at  each  pass to retain the integrity of the parts.
  TO ASSIGN INPUT STREAM TO KEYBOARD NUMBER
 Use <arrow> keys to TAB to desired INPUT STREAM.
   TYPE:  n<set>          where: n = Keyboard number: 0 - 8
 This table allows each of the 8 INPUT STREAMS from the REPLAY
 &bi93 FILE to be linked with any of the 8 KEYBOARD MAPS which are
 presented on DISPLAY PAGE 3. This allows you to specify which
 REGISTER will be "played" by each input stream by setting up
 the desired keyboard configuration on PAGE 3.
 Assigning a keyboard number of ZERO will turn OFF an input
 stream. Keyboard numbers may be assigned to input streams
 DURING replay or merge. During &bi96 MERGE, this table determines
 the keyboard numbers which will be recorded for the replay
 events. Thus the input streams may be dynamically reassigned
 or turned off while merging, and the results will be saved in
 the RECORD &bi93 FILE.

 TO SMPTE TRIGGER START  setup &biI2TRIGGER time on Page I. On Page 9
 type ;S as an option for the REPLAY, RECORD && MERGE commands.
 Page 9 will enter a 'wait' state until the time code from tape
 matches the TRIGGER time.
EXAMPLE: REP;S<return> Replay sequence, wait for SMPTE trigger.

 Note that the SMPTE card must be installed. If not, an error
 message is displayed.
  TO CHANGE SPEED  use <arrow> keys to select SPEED.
   TYPE:  nnnn<set>          or     TYPE: nn<add or sub>
   where: nnnn = 1000-65535         where: nn = 1-65535

 The sequencer measures time in units called MICROBEATS. The
 SPEED control defines the DURATION of a microbeat as a number
 of system clock cycles (1.00525 MHz). Thus the TEMPO of the
 REPLAY sequence is the SAME as the recorded performance IF the
 speed setting is exactly the same. The tempo can be made
 FASTER by REDUCING the speed setting (shorter microbeats) or
 made SLOWER by INCREASING it (longer microbeats). While
 recording, the smallest time interval which can be measured
 is one microbeat. The RESOLUTION (rhythm accuracy) of the
 recording process is therefore governed by the SPEED:
              SPEED   = resolution in milliseconds
             1000            (approx)
 When a sequence is recorded, the SPEED is stored in the file
 and will be automatically restored when the file is assigned
 as the REPLAY file. The speed may then be altered either
 before or DURING replay but this does not affect the setting
 stored in the file. See INTERNAL/EXTERNAL &bi911 SYNC.

 TO WRITE the CURRENT SPEED to the REPLAY FILE
      TYPE:    SPEED<return>     or     SP<return>
  TO SET INTERNAL/EXTERNAL SYNC  use <arrow> keys to TAB to SYNC.
    TO SELECT:                                     TYPE:
      internal sync                              -   INT<set>
      external sync                              -   EXT<set>
      external sync (DIVIDE external tone by nn) -   nn<set>
                     where: nn = 2 - 65535
 When INTERNAL SYNC is selected (normal) the &bi910 SPEED control
 defines the microbeat duration in cycles of the system clock
 as described. When EXTERNAL sync is selected, SPEED is
 ignored, and a microbeat becomes ONE CYCLE of the EXTERNAL
 SYNC INPUT (which must be connected at the back panel as
 described in the USERS MANUAL). This allows the replay tempo
 to be controlled by varying the external sync frequency. If a
 number "nn" is assigned to SYNC then a microbeat will be "nn"
 cycles of the external tone. The external sync facility can
 be used to coordinate multi-track overdubbing of sequences by
 taping the sync tone and using the "sync-head" replay from the
 recorder to feed the external sync input of the CMI. It is
 best to GATE the tone's start on tape, and to tape the tone by
 itself (or while monitoring the CMI) rather than while taping
 the music. For equal tempo between external and internal sync:

    SPEED =       2010           EXT SYNC in KHz =    2010  
            ext sync in KHz                       SPEED
  TO TURN CLICK ON/OFF  use <arrow> keys to TAB to CLICK.
   TYPE:   ON<set>  -  Turn click output on
          OFF<set>  -  Turn click output off

 The CLICK (metronome) output must be connected at the back
 panel as described in the USERS MANUAL.

 TO SET CLICK RATE  use <arrow> keys to TAB to RATE.
   TYPE:  nnn<set>
   where: nnn = desired click rate

 The CLICK RATE defines the number of &bi910 MICROBEATS in one BEAT of
 the click tempo for both internal and external &bi911 SYNC. The
 following calibration table can be used when using the click
 with INTERNAL sync for cinema or television applications.

          FOR                   SET     24 fps       25 fps
  microbeat calibration:       SPEED     5236         5026  
 1 beat = 1 sec ( 60 mm):   CLICK RATE   192          200
 1 beat =.5 sec (120 mm):       .         96          100
 1 beat = S seconds:            .      S x 192      S x 200
 Tempo = F frames per beat:     .      F x 8        F x 8
 Tempo = T beats per min:       .      T   x 192       T   x 200 
                                      60           60
                                                                                                