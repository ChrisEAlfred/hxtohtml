&ls12&lm10&tl24
sheet: &lm17 2.  &biS2 CREATE a Screen Image File
2.  &biS2 FILENAME selection
2.  &biS2 MAINTAINANCE of Screen Image Files
3.  &biS3 DISPLAY a Screen Image File
3.  &biS3 FORMFEED printer
4.  &biS4 PRINT a Screen Image File
5.  &biS5 FORMAT selector
5.  &biS5 MARGIN setting
5.  &biS5 INVERT selector
5.  &biS5 EDGE width selector
6.  &biS6 AUTO-FF selector
6.  &biS6 CYCLIC functions
6.  &biS6 BAUD RATE setting


&lm1  For HELP  touch any BOX with LIGHTPEN or type: n<set>
                                       where: n  =  sheet no.
 For HELP with HELP PAGES , touch &BI12 THIS or type: H1<return>&ls10&tl20
  CREATE A SCREEN IMAGE FILE

&LM2To save the CMI screen image type control-P (hold <ctrl>, press "P") on any page except page C. The screen will be saved under the current filename selected on Page S. If the file already exists then it will be overwritten with the new image. If it does not exist then it will be created. The size of a Page S file is 129 sectors.

&lm1 FILENAME SELECTION
&LM2To change the current Page S filename tab to the "File" field using arrow keys or light pen and <set> a new filename. This filename is used both for creation of screen image files and for the &biS3 DISPLAY and &biS4 PRINT commands.
Immediately after power-on the current filename will be set to "DEFAULT.PX".

&LM1 FILE MAINTAINANCE
&LM2Page S files are displayed by Page 2 along with other CMI files. They may be deleted, transferred and queried in the normal way.
 &LM1 DISPLAY A SCREEN IMAGE FILE

&LM2The currently selected screen image file may be displayed prior to &biS4 PRINTING by hitting the "DISPLAY" command with the light pen or by typing "D<return>" on the alpha keyboard.

The image will remain until any key is struck, after which the display will return to page S.

&lm1 FORMFEED

&LM2The formfeed command causes the printer to move to the end of the current page. If the print head is already at the end of the page then one complete page will be ejected.
 &LM1 PRINT A SCREEN IMAGE FILE

&LM2The currently selected screen image file may be printed by hitting the "PRINT" command with the light pen or by typing "P"<return> on the alpha keyboard.
Various &biS5 FORMAT variables are provided to control the appearance of the printed image.
The contents of the file may be &biS3 DISPLAYED before being printed.

To abort the printing of a file press <control-esc> (hold down <ctrl>, press <esc>). The printer may continue to print for a short time until its internal buffer is empty.

If the printer is not ready (ie switched off or out of paper) when the print command is given then the message "PRINTER NOT READY" will be displayed and the command aborted.
If the printer becomes "not ready" during the printing process then the message will be displayed but the command will not be aborted unless <control-esc> is pressed. If the "not ready" condition is remedied then the command will continue.
 &LM1 FORMAT
&LM2The orientation and size of the printed image for each page format are displayed in the format selection field. To select a format hit the line describing the required format with the lightpen OR tab to the "Format" field with the arrow keys or lightpen and assign the required format number.

&lm1 MARGINS
&lm2The position within the page is controlled by the Top Margin and Left Margin fields. Whenever a new format is selected the margins will be set to the correct values to centre the image in a standard 280mm x 380mm (11" x 15") page.

&lm1 INVERT
&lm2If the Invert indicator is set to "ON" (using the lightpen) then the printed image will be inverted with respect to light and dark. Toggle ON or OFF by typing  I<return>.

&lm1 EDGE WIDTH
&LM2This field determines the width (in dots) of the border to be drawn around the outside edge of the printed image. A width of zero will cause no edge to be drawn.
 &lm1 AUTO FF
&lm2The Auto Formfeed function (normally ON) ejects a page from the printer after printing. This function may be switched OFF (using the lightpen) to allow several images to be printed on the same page. The page may finally be ejected by using the &biS3 FORMFEED command.  Toggle ON or OFF by typing  A<return>.

&lm1 CYCLIC FUNCTIONS
&lm2These are "special effects" which operate only on the diagonal &biS5 FORMATS (11-14). These formats cause the image to be printed several times. The cyclic functions affect only those images which are an odd number of images from the centre one (referred to as "odd cycles"). The effects are:
 CYCLIC NULL :   Odd cycles are blanked out.
 CYCLIC BORDER : A border is drawn at the edge of each odd cycle.
 CYCLIC INVERT : Odd cycles are inverted.

&lm1 BAUD RATE
&lm2This is the data transmission rate from the CMI to the printer for Page S and C. Ensure that CMI and printer have the same baud rate or garbage will result. To set baud rate, type  n<SET> where n = 9600,7200,4800,3600,2400,1800,1200,600,300 or 150. Protocol is: start bit, 8 data bits, stop bit, no parity.
                                                         