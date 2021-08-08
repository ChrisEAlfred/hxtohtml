#--------------------------------------------------------------------
# Convert .HX to HTML
# Chris Alfred 2021
#--------------------------------------------------------------------
import sys
from typing import Tuple

#--------------------------------------------------------------------
# Local imports
#--------------------------------------------------------------------

#--------------------------------------------------------------------
# Constants
#--------------------------------------------------------------------
HTML_PRE = """
<html>
  <head>
    <style>
      .normalText
      {
        color:green;
	    background-color:black;
      }
      .reverseText
      {
        color:black;
	    background-color:green;
      }
    </style>
  </head>
  <body style="background-color:black;font-family:'Courier New'">
"""

HTML_POST = """
  </body>
</html>
"""

HTML_SPACE = '&nbsp;'
HTML_AMP = '&amp;'
HTML_NEWLINE = '<\p>'
HTML_LEFT_ANGLE_BRACKET = '&lt;'
HTML_RIGHT_ANGLE_BRACKET = '&gt;'

HTML_NORMAL_TEXT = '<span class="normalText">'
HTML_REVERSE_TEXT = '<span class="reverseText">'
HTML_TEXT_END_OF_LINE = '<span><br>'

# HX definitions

HX_WIDTH = 64
HX_ESCAPE = '&'

#--------------------------------------------------------------------
# Private
#--------------------------------------------------------------------
def add_to_html_line(html_line, s):
    if len(html_line) == 0:
        html_line = HTML_NORMAL_TEXT
    html_line = html_line + s
    return html_line

def write_html(f, s):
    f.write(s)
    #print(s)

def process_escape(html_line, escape):

    if escape[:2].upper() == 'TL':
        html_line = add_to_html_line(html_line, '<span>')    
        html_line = add_to_html_line(html_line, '<br><br>')

    elif escape[:2].upper() == 'BI':
        html_line = add_to_html_line(html_line, '<span>')    
        html_line = add_to_html_line(html_line, HTML_REVERSE_TEXT)

    elif escape[:2].upper() == 'NS':
        html_line = add_to_html_line(html_line, '<span>')    
        html_line = add_to_html_line(html_line, '<br><br><br><br>')

    elif escape[:2].upper() == 'LS':
        html_line = add_to_html_line(html_line, '<span>')    
        html_line = add_to_html_line(html_line, '<br>')

    elif escape[:2].upper() == 'LM':
        # TODO
        pass

    else:
        print(f'****** unknown tag: {escape}')

    return html_line

def convert(source_file, destination_file):

    html_line = ''
    line_pos = 0
    inEscape = False
    escape = ''

    with open(destination_file, 'w') as f_destination:

        write_html(f_destination, HTML_PRE)

        with open(source_file) as f_source:

            while(True):

                c = f_source.read(1)
                if not c:
                    break

                if c == HX_ESCAPE:

                    # Detected escape character

                    if not inEscape:
                        inEscape = True
                        escape = ''

                    else:
                        if len(escape) != 0:
                            # Start of new escape
                            html_line = process_escape(html_line, escape)
                            inEscape = True
                            escape = ''

                        else:
                            # This is a real &
                            html_line = add_to_html_line(html_line, HTML_AMP)
                            line_pos = line_pos + 1
                            inEscape = False

                elif c == ' ':

                    if inEscape:

                        # End of escape sequence
                        html_line = process_escape(html_line, escape)
                        inEscape = False
                        escape = ''
                    
                    else:
                        html_line = add_to_html_line(html_line, HTML_SPACE)
                        line_pos = line_pos + 1

                elif c == '<':
                    html_line = add_to_html_line(html_line, HTML_LEFT_ANGLE_BRACKET)
                    line_pos = line_pos + 1

                elif c == '>':
                    html_line = add_to_html_line(html_line, HTML_RIGHT_ANGLE_BRACKET)
                    line_pos = line_pos + 1

                elif not c.isprintable():

                    # Non printing character, so end of line
                    html_line = add_to_html_line(html_line, HTML_TEXT_END_OF_LINE + '\n')
                    write_html(f_destination, html_line)
                    html_line = ''
                    line_pos = 0    

                else:

                    if inEscape:
                        escape = escape + c
                    else:
                        html_line = add_to_html_line(html_line, c)
                        line_pos = line_pos + 1

                # Check for end of line

                if line_pos > HX_WIDTH:
                    html_line = add_to_html_line(html_line, HTML_TEXT_END_OF_LINE + '\n')
                    write_html(f_destination, html_line)
                    html_line = ''
                    line_pos = 0    

            # Close off any line
            if len(html_line) != 0:
                html_line = add_to_html_line(html_line, HTML_TEXT_END_OF_LINE + '\n')
                write_html(f_destination, html_line)            

        write_html(f_destination, HTML_POST)

#--------------------------------------------------------------------
# Main
#--------------------------------------------------------------------

def main():

    #if len(sys.argv) < 2:
    #    print(f'Usage: hx2html.py <hx input file> <html output file>')
    #    exit()

    hx_filename = sys.argv[1]
    html_filename = sys.argv[2]
    convert(hx_filename, html_filename)

if __name__ == '__main__':
    main()
