# hxtohtml

Convert `Fairlight CMI Series IIX` .HX help files to HTML.

## Credit and History

The original help file compiler (called `HCOMP`) was written at Fairlight by the amazing `Andrew Cannon` around April 1982.

Help files were stored in files with `.HX` file extension. The compiler converts the files to a format for display on the CMI with 'hit points' for light pen navigation.

The `HCOMP` is written in 6809 assembler, and is about 1400 line of code including comments.

`HCOMP` is similar to [TeX](https://en.wikipedia.org/wiki/TeX) written in 1978 by Donald Knuth.

# .HX format

- .HX files use `&` as the start of a formatting tag word.
- A tag consists of:
  - `&`
  - two letter case-insenstive tag name
  - one or more digits
  - space or non printing character
    - e.g. `"&tl12 Hello World"`
- Help pages are a maximum of `64` characters wide

## Tags

| tag | Description |
|-----|-------------|
| `&&` | `&` character |
| `&LM` | Set left margin in characters |
| `&RM` | Set right margin in characters |
| `&LS` | Set line spacing in pixels |
| `&TL` | Set top line vertical position in pixels |
| `&GC` | Go to column number |
| `&BX` | Define box with edges |
| `&BI` | Define inverted box |
| `&NL` | New line |
| `&NS` | New sheet |
| `&SU` | Start underline |
| `&EU` | End underline |