
&ls12      sheet: 2.   &bi22 FILENAMES and types 
            3.   &bi23 FREE SPACE on disk
            3.   &bi23 LIBRARY number
            3.   &bi23 SELECTING files (MULTI && CANCEL)
            4.   &bi24 CHANGING disk, user or file names
            4.   &bi24 QUERY command
            5.   &bi25 SAVING instrument or voice files
            5.   &bi25 LOADING instrument files
            6.   &bi26 LOADING voice files
            6.   &bi26 LOADING sequence files
            7.   &bi27 DELETE command
            8.   &bi28 TRANSFER command
            9.   &bi29 DELETE/OVERWRITE protection
           10.   &bi210 KEYPAD on master keyboard
           12.   &bi212 COMMAND shortcuts&ls10

 For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &bi12 THIS or type: H1<return>
&NS FILENAMES  on disk in RH drive are shown; up to 60 files may be
 seen at once.  Displayed for each file are a FILENAME, SUFFIX 
 and file NUMBER.  FILENAMES consist of 1-8 letters or numbers;
 the first of which must be a letter.  A 2-letter FILE SUFFIX 
 indicates the TYPE of file.  Files with different suffixes may
 have the same name, but no two files on a disk will be allowed
 to have the same name AND suffix.
                                                           
       group     suffix   FILE TYPES:       size     help  
    CMI files:   .IN  -  INSTRUMENT         24     PAGE 3
                 .VC  -  VOICE             172     PAGE 3
                 .CO  -  CONTROL            16     PAGE 7
                 .SQ  -  KBD SEQUENCE        x     PAGE 9
                 .AI  -  A.I.C (optional)   16       .
    MCL files:   .PC  -  PIECE               x   MCL manual
                 .PT  -  PART                x       .
                 .SS  -  SEQUENCE            x       .

 TO SELECT a FILE GROUP for DISPLAY   TYPE:         LIGHTPEN:
         CMI files                -<return>         <CMI>
         MCL files                +<return>         <MCL>
         ALL files (CMI + MCL)    *<return>         <ALL>

 CMI is default group, displayed whenever PAGE 2 is selected.
&NS FREE SPACE  shows size of largest single block of free disk 
 space. A blank disk will show 3980 free sectors. Chart of file
 &bi22 TYPES shows minimum required for creating files.  Sequence and
 MCL files have varying sizes.

 LIBRARY NUMBER  shows index number assigned to disk by 
 PAGE L DISK LIBRARY.

 SELECTING FILES for LIGHTPEN COMMANDS
 The PAGE 2 lightpen commands all operate on files and require 
 that filename(s) be selected before using a command.
 To select a single file , use <arrow> keys or lightpen to TAB
  to the filename (illuminating it). 
 To select multiple files  (shown by boxes around file numbers),
     TYPE:                               LIGHTPEN:
        (Choose file with <arrow> keys     Touch <MULTI>.
         or lightpen.)                     Touch desired files.
        Press <add> key to select file.    Touch <CANCEL> to 
        Press <sub> key to unselect file.    unselect.

 Descriptions below indicate these procedures with the terms:
    <select file>  and  <select files> .

 To RESET (cancel all multiple file selections)  TYPE: <clear> 
&NS TO CHANGE DISK NAME, USER NAME or FILENAME
 First, select item with <arrow> keys or LIGHTPEN.
  TYPE:
    <1-20 characters><set>    :USER NAME
    filename<set>             :FILENAME or DISK NAME
     where: filename = 1-8 letters or numbers;
                       1st must be a letter.
 When a filename is changed it will automatically be positioned
 alphabetically within the list of filenames.

 TO QUERY A FILE   TYPE:                    LIGHTPEN:
                    Q,file<return>           <select file>
                                             <QUERY>
 where: file = FILENAME.SF :filename with suffix
         or  
        file = ##    :file number

 EXAMPLES:  Q,JUNK.VC<return>
            Q,14<return>

 Version number, size and type will be displayed for selected
 file. VOICE names within INSTRUMENT files and CONTROL file 
 names within VOICE files will also be displayed.
&NS TO SAVE INSTRUMENT or VOICE FILE   TYPE:
                 INSTRUMENT:  S,filename.IN<return>
                                      or
                              S,IN,filename<return>
                      VOICE:  S,filename<return>
  
  EXAMPLE: S,ORCHY.IN<return>    (save instrument:ORCHY)
           S,FLUTE<return>       (save voice:FLUTE)

  See PAGE 3 HELP for more about SAVE command.

 TO LOAD INSTRUMENT FILE  (.IN suffix)
    TYPE:                             LIGHTPEN:
     L,filename.IN<return>             <select file>
             or                        <LOAD>
     L,IN,filename<return>

     EXAMPLE: L,NICEINST.IN<return>
              L,IN,NICEINST<return>

 An INSTRUMENT file will not load if any of the required VOICE 
 files are not found (see PAGE 3 HELP).  Use &bi24 QUERY command to 
 see voice names within an instrument file.    
&NS TO LOAD VOICE FILE  (.VC suffix) 
   TYPE:                             LIGHTPEN:  
     L,r,filename<return>              <select files>
      where: r = register: "A-H"       <select REGISTER>
                                       <LOAD>
     EXAMPLE: L,B,TRUMPS<return>

 When using the lightpen, <select REGISTER> means touch the
 desired register in the REGISTER SELECTOR (inside LOAD box).
 This determines into which register the voice will be loaded. 
 There are eight possible registers A-H depending on the setting
 of NPHONY on PAGE 3.  Empty selection boxes indicate further
 possible registers. If the desired register is already selected
 (illuminated) then this step may be omitted. Loading INSTRUMENT
 files may change the number of available registers. Note that 
 multiple VOICE files may be loaded into a single register if 
 NPHONY has been set accordingly. See PAGE 3 HELP.    

 TO LOAD KEYBOARD SEQUENCE FILE  (.SQ suffix)
    TYPE:                                LIGHTPEN:
     L,filename.SQ<return>                <select file>
                                          <LOAD>

 Loads PAGE 9 KEYBOARD SEQUENCER REPLAY FILE (see PAGE 9 HELP).
&NS TO DELETE FILE(S) FROM DISK
    TYPE:                                LIGHTPEN:
     D,file<return>                       <select files>
          or                              <DELETE>
     D,file,file,file(,...etc)<return>
   where: file = FILENAME.SF  :filename including SUFFIX 
           or
          file = ##    :displayed number of file (eg,"17")
           or
          file = ##-## :range of file numbers (eg,"4-27")
           or
          file = * (asterisk) :ALL FILES ON DISK 

 EXAMPLES:    D,THING.VC<return>
              D,2,5-9,REGS2.IN,THING.CO,27<return>
              D,*<return>

 When a file is DELETED it is permanently removed from the disk,
 freeing the space it occupied. See &bi29 DELETE/OVERWRITE PROTECTION.

 TO CREATE a BLANK DISK   TYPE:  D,*;Y<return>
 Due to the scope of this operation, two confirmation messages 
 will appear; reply to both by typing:   Y<return>.    
  ALL  files on the disk will be DELETED.
&NS TO TRANSFER FILES TO ANOTHER DISK
  TYPE:                                 LIGHTPEN:
    T,file<return>                        <select files>
         or                               <TRANSFER>
    T,file,file,file(,...etc)<return>
 where: file = FILENAME.SF  or  ##  or  ##-##  or  *
               (same as DELETE; see above)

 EXAMPLES:  T,CHORUS.IN<return>
            T,4-18,ABLE.VC,25<return>
 Files will be copied FROM disk in RH drive (DISK A) TO another
 disk in LH drive (DISK B).  Give TRANSFER command with system 
 disk in LH drive and DISK A in RH drive.  When the message:
               PLACE FILE DISK IN LH DRIVE 
 appears, place DISK B in LH drive.  When the transfer is 
 completed a final message will request the replacement of the 
 system disk.  If a file already exists on DISK B (has same 
 name and suffix as file on DISK A), it will NOT be overwritten
 without your consent. See also &bi29 DELETE/OVERWRITE PROTECTION.

 TO COPY an ENTIRE DISK   TYPE:  T,*<return>
  When the message appears place a &bi27 BLANK file disk in LH drive.
  Replace system disk when completed.  New disk will usually
  show an increase in FREE SPACE available.
&NS DELETE/OVERWRITE PROTECTION
 As a safeguard, the &bi28 TRANSFER and &bi27 DELETE commands will not
 overwrite (write to an existing file) or delete a file without
 first requesting your confirmation.  The message:
             DELETE/OVERWRITE <filename> (Y)??
 will appear and the system waits for your reply.

  TO REPLY:                  TYPE:
   YES, go ahead.             Y<return>
   NO, skip to next 
    specified file (if any).  N<return>  (or just <return>)
   NO, stop the command.      press && hold <ctrl>, press <esc>

 This will occur for EACH file to be deleted or overwritten if
 more than one file is specified in the command.  To restrict
 this protection to a single confirmation for all selected 
 files, type "<semicolon>Y" before pressing <return> for the 
 command.  Then reply as above to the message which appears.

  EXAMPLES:  D,10-19;Y<return>   
             T,ANICE.VC,ANICE.CO;Y<return>
&NS MUSIC KEYBOARD KEYPAD && LED DISPLAY

                                         TYPE (on keypad):
    To DISPLAY last ERROR MESSAGE:        <*>
    To DISPLAY a FILENAME:                D##<*>
    To LOAD .IN or .SQ FILE:              ##<*>      
                   .VC FILE:              ##<*> or ##r<*>
    To display DISKNAME:                  DD<*>
    To display next filename:             D<*>
     (just like down arrow except won't
      go past last filename)

 where:  <*> = "*" on keypad - equivalent to <return>.
          ## = FILE NUMBER on PAGE 2 (not <#> key; see below)
          r  = REGISTER: "A-D". If register is not specified 
               when loading a voice, the REGISTER SELECTOR on 
               PAGE 2 will determine the register loaded.

  note:  <#> key on keypad functions like <rubout> key to
             delete last key typed.

 EXAMPLES: D13<*>    :DISPLAY name of file 13.
           32B<*>    :Load (voice) file 32 into register B.
&NS Keypad commands may be given from ALL standard display pages,
 and cause PAGE 2 to be automatically selected. See also
 COMMAND &bi212 SHORTCUTS.
 It is possible to execute all CMI commands using the keypad
 display instead of the graphics monitor. The display
 automatically scrolls allowing you to see what you are typing.
 Whenever the CMI is waiting for a reply to a question (e.g.,
 "DELETE FILENAME.SF - Y??") the display will now show "PLEASE
 REPLY". Pressing the <*> key or <CTRL-E> will reprint the
 question on the keypad display. If the keypad shows "ERROR" or
 "PLEASE REPLY", the message in the status line will be printed.
 These messages can be displayed as often as you like.

 ALPHA-NUMERIC commands :

 <CTRL-Q>:   causes the entire command line to scroll past on
 the keypad display. Useful to review a long command before
 pressing <return>, or after a syntax error.

 <CTRL-Z>:   will clear the command line. (Rather than using
 <CLEAR> which rewrites the entire display on the graphics
 display.)
&NS                       COMMAND SHORTCUTS
 Loading files : All KEYPAD commands may also be typed on your 
 ALPHANUMERIC keyboard by using <ctrl-E> (press && hold <ctrl>,
 press <E>) instead of the keypad <*> key. This allows files to
 be loaded by typing only the file NUMBER and <ctrl-E>.  
 Registers A-H may also be specified when loading voice files. 
 This may be done from ANY standard display page.
    EXAMPLES:                  
             12<ctrl-E>  :LOAD file 12.
             7C<ctrl-E>  :LOAD (voice) file 7 into register C.

 All PAGE 2 TYPED Commands : If only the 1st letter of a command 
 is typed followed by <return> then filenames may be chosen as 
 for a lightpen command ( see &bi23 SELECTING FILES).

 EXAMPLES:
  To DELETE files   - <select files> then type: D<return>

  To QUERY any file - <select file>  then type: Q<return>

  To LOAD any file  - <select file>  then type: L<return>

  To LOAD MULTIPLE VOICES - <select files> type: L<return>
                                                                                                   