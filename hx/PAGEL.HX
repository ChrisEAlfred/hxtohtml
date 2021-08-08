&tl72&ls12      sheet: 2.   &biL2 DISK LIBRARY
            3.   &BIL3 BUILD the library
            4.   &BIL4 READ a disk into library
            5.   &BIL5 FIND files in library
            6.   &BIL6 EXAMPLES of FIND command&ls10&tl12









 For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &BI12 THIS or type: H1<return>
&NS THE DISK LIBRARY  allows all filenames on all your disks to be
 kept for quick reference on your CMI SYSTEM DISK. The &biL5 FIND
 command enables you to easily identify the disk on which any
 single file is found. Up to eighty disks can be maintained
 in the disk library. Each disk is given a NUMBER when the
 the library is originally created with the &biL3 BUILD command.
 These numbers serve to identify the disks to the library
 (even if the DISKNAMES are changed) whenever the &biL4 READ command 
 is used to update the library for a single disk.

 The FIND command allows individual files to be found as
 well as providing a PARTIAL MATCH facility by which various
 sorts of searches can be made through the library. For
 example you could display all VOICE files beginning with the
 letters "VIO", or display all files of any type which have
 the name "FRED".

 To simply DISPLAY ALL FILES on a DISK , touch the DISKNAME with
 the LIGHTPEN. To return to the DISKNAME display, touch the
 TITLE of the PAGE: <DISK LIBRARY>.
&NS TO BUILD A NEW LIBRARY  first sort all your disks into some
 order meaningful to you. DISK NUMBERS will be assigned 
 sequentially as each disk is READ into the LIBRARY. Place the
 first disk in the RH drive.&ls15
 To begin the BUILD , TYPE: B<return>
 This question will appear:
            READ DISK IN RH DRIVE - ASSIGN NO. 1 (Y)?
  TO REPLY:                 TYPE:&ls10
   Yes, proceed with BUILD.  Y<return>
   No, stop the BUILD.       N<return> or <return> or <ctrl-esc>&ls15
 When the disk has been READ the same question will appear&ls10
 again; this time requesting approval to READ disk and assign 
 the number 2. Place the next disk in the RH drive and REPLY as
 before. Continue this until ALL disks have been READ. At that
 time reply NO to the question (as shown above). The LIBRARY is
 now ready for use. See &biL5 FIND command.
&NS TO READ A DISK INTO LIBRARY           TYPE:
  Read disk                        -  R<return>
  Read disk, assign new number (n) -  R;n<return>&ls15
    where:  n = new disk number, not larger than the number of&ls10
                disks now in the library  plus 1 .&ls15
 This question will appear:&ls10
                 READ DISK IN RH DRIVE - (Y)?
  TO REPLY:                 TYPE:&ls10
   Yes, READ the disk.       Y<return>
   No, do not READ disk.     N<return> or <return> or <ctrl-esc>&ls15
 To keep your LIBRARY up to date, the READ command must be used&ls10
 whenever the content of a disk changes significantly.

&NS FINDING FILES IN THE LIBRARY
 The FIND command is used to located files in the library. It
 can be used in two ways:&ls15
  1. SEARCH for a single, specific filename.&ls10
     In this case, each disk in the library is searched for the
     file; the name of any disk on which it was found will
     be displayed.
  2. SEARCH for an incomplete, or partial filename.
     In this case the library is searched disk-by-disk. For
     each disk on which any files are found matching the 
     partial name, the name of the disk and all matching files
     are displayed.

 TO FIND A FILENAME  TYPE: F,filename.sf<return>
   where:  filename.sf  =  a complete or partial filename&ls15
 If the filename  and  suffix are specified then the name is&ls10
 COMPLETE. If the filename or suffix or BOTH are  missing , the
 name is INCOMPLETE. The name is also incomplete if the special
 character "*" is used. This character indicates a "don't care"
 condition and its use is best described through the examples
 on next sheet.
&NS FIND COMMAND EXAMPLES :

  F,TUBA2.VC<return> -      Complete name: find all copies of 
                                file TUBA.VC.
  F,TUBA2<return>    -      Incomplete name: find all files of 
                                 any  suffix with the name TUBA2.
  F,TUB*.CO<return>  -      Incomplete name ("*" used): find 
                                all .CO files that begin with 
                                letters "TUB" ( don't care  about 
                                rest of name).
  F,.IN<return>      -      Incomplete name: find  all  .IN files
  F<return>          -      Incomplete name: find  all  files.
  F,T*.*<return>     -      Incomplete name: find all files
                                beginning with letter "T".

 Whenever an incomplete name is specified, the system will
 print this message and wait whenever matches are found on a
 disk:
               TYPE <RETURN> TO CONTINUE SEARCH
 To proceed with the search  press the <return> key. To halt
 the search at this point, press <ctrl-esc>;
   (press && hold <ctrl> - press <esc> ).
                                                                                                          