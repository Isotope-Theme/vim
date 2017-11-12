" vim-airline template by chartoin (http://github.com/chartoin)

let g:airline#themes#isotope#palette = {}
function! airline#themes#isotope#refresh()

  let s:background = get(g:, 'airline_isotope_bg', &background)

  " Palette: {{{
  let s:ui = {}

  let s:ui.light_red         = ['#FF8961', 216]
  let s:ui.red               = ['#F44336', 203]
  let s:ui.dark_red          = ['#BA000D', 160]
  let s:ui.light_pink        = ['#FF6090', 211]
  let s:ui.pink              = ['#E91E63', 204]
  let s:ui.dark_pink         = ['#B0003A', 125]
  let s:ui.light_purple      = ['#D05CE3', 176]
  let s:ui.purple            = ['#9C27B0', 133]
  let s:ui.dark_purple       = ['#6A0080', 091]
  let s:ui.light_deep_purple = ['#9A67EA', 141]
  let s:ui.deep_purple       = ['#673AB7', 098]
  let s:ui.dark_deep_purple  = ['#320B86', 055]
  let s:ui.light_indigo      = ['#757DE8', 105]
  let s:ui.indigo            = ['#3F51B5', 068]
  let s:ui.dark_indigo       = ['#002984', 025]
  let s:ui.light_blue        = ['#6EC6FF', 117]
  let s:ui.blue              = ['#2196F3', 075]
  let s:ui.dark_blue         = ['#0069C0', 032]
  let s:ui.light_pale_blue   = ['#67DAFF', 117]
  let s:ui.pale_blue         = ['#03A9F4', 039]
  let s:ui.dark_pale_blue    = ['#007AC1', 032]
  let s:ui.light_cyan        = ['#62EFFF', 123]
  let s:ui.cyan              = ['#00BCD4', 044]
  let s:ui.dark_cyan         = ['#008BA3', 037]
  let s:ui.light_teal        = ['#52C7B8', 116]
  let s:ui.teal              = ['#009688', 037]
  let s:ui.dark_teal         = ['#00675B', 030]
  let s:ui.light_green       = ['#80E27E', 150]
  let s:ui.green             = ['#4CAF50', 072]
  let s:ui.dark_green        = ['#087F23', 029]
  let s:ui.light_pale_green  = ['#BEF67A', 192]
  let s:ui.pale_green        = ['#8BC34A', 149]
  let s:ui.dark_pale_green   = ['#5A9216', 106]
  let s:ui.light_lime        = ['#FFFF6E', 228]
  let s:ui.lime              = ['#CDDC39', 185]
  let s:ui.dark_lime         = ['#99AA00', 142]
  let s:ui.light_yellow      = ['#FFFF72', 228]
  let s:ui.yellow            = ['#FFEB3B', 227]
  let s:ui.dark_yellow       = ['#C8B900', 184]
  let s:ui.light_amber       = ['#FFF350', 228]
  let s:ui.amber             = ['#FFC107', 220]
  let s:ui.dark_amber        = ['#C79100', 178]
  let s:ui.light_orange      = ['#FFc947', 221]
  let s:ui.orange            = ['#FF9800', 214]
  let s:ui.dark_orange       = ['#C66900', 172]
  let s:ui.light_deep_orange = ['#FF8A50', 216]
  let s:ui.deep_orange       = ['#FF5722', 209]
  let s:ui.dark_deep_orange  = ['#C41C00', 166]
  let s:ui.light_brown       = ['#A98274', 144]
  let s:ui.brown             = ['#795548', 101]
  let s:ui.dark_brown        = ['#4B2C20', 059]

  let s:ui.grey0 = ['#ECEFF1', 231]
  let s:ui.grey1 = ['#CFD8DC', 188]
  let s:ui.grey2 = ['#B0BEC5', 152]
  let s:ui.grey3 = ['#90A4AE', 145]
  let s:ui.grey4 = ['#78909C', 109]
  let s:ui.grey5 = ['#607D8B', 103]
  let s:ui.grey6 = ['#546E7A', 102]
  let s:ui.grey7 = ['#455A64', 066]
  let s:ui.grey8 = ['#37474F', 060]
  let s:ui.grey9 = ['#263238', 059]

  let s:ui.white = ['#FFFFFF', 255]
  let s:ui.black = ['#000000', 016]

  if s:background == 'dark'
    let s:base0  = s:ui.grey0
    let s:base1  = s:ui.grey1
    let s:base2  = s:ui.grey2
    let s:base3  = s:ui.grey3
    let s:base4  = s:ui.grey4
    let s:base00 = s:ui.grey9
    let s:base01 = s:ui.grey8
    let s:base02 = s:ui.grey7
    let s:base03 = s:ui.grey6
    let s:base04 = s:ui.grey5
  else
    let s:base0  = s:ui.grey9
    let s:base1  = s:ui.grey8
    let s:base2  = s:ui.grey7
    let s:base3  = s:ui.grey6
    let s:base4  = s:ui.grey5
    let s:base00 = s:ui.grey0
    let s:base01 = s:ui.grey1
    let s:base02 = s:ui.grey2
    let s:base03 = s:ui.grey3
    let s:base04 = s:ui.grey4
  endif

  " }}}

  let s:N1   = [ s:ui.grey8[0], s:ui.green[0], s:ui.grey8[1], s:ui.green[1] ]
  let s:N2   = [ s:base1[0], s:base02[0], s:base1[1], s:base02[1] ]
  let s:N3   = [ g:primary[0], s:base01[0], g:primary[1], s:base01[1] ]
  let g:airline#themes#isotope#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let s:I1   = [ s:ui.grey8[0], s:ui.blue[0], s:ui.grey8[1], s:ui.blue[1] ]
  let s:I2   = [ s:base1[0], s:base02[0], s:base1[1], s:base02[1] ]
  let s:I3   = [ g:primary[0], s:base01[0], g:primary[1], s:base01[1] ]
  let g:airline#themes#isotope#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

  let s:R1   = [ s:ui.grey8[0], s:ui.red[0], s:ui.grey8[1], s:ui.red[1] ]
  let s:R2   = [ s:base1[0], s:base02[0], s:base1[1], s:base02[1] ]
  let s:R3   = [ g:primary[0], s:base01[0], g:primary[1], s:base01[1] ]
  let g:airline#themes#isotope#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

  let s:V1   = [ s:ui.grey8[0], s:ui.purple[0], s:ui.grey8[1], s:ui.purple[1]]
  let s:V2   = [ s:base1[0], s:base02[0], s:base1[1], s:base02[1] ]
  let s:V3   = [ g:primary[0], s:base01[0], g:primary[1], s:base01[1] ]
  let g:airline#themes#isotope#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

  let s:IA1   = [ g:primary[0], s:base01[0], g:primary[1], s:base01[1] ]
  let s:IA2   = [ s:base1[0], s:base01[0], s:base1[1], s:base01[1] ]
  let s:IA3   = [ s:base1[0], s:base01[0], s:base1[1], s:base01[1] ]
  let g:airline#themes#isotope#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

  " Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
  " variable so that related functionality is loaded iff the user is using
  " ctrlp. Note that this is optional, and if you do not define ctrlp colors
  " they will be chosen automatically from the existing palette.
  if !get(g:, 'loaded_ctrlp', 0)
    finish
  endif
  let g:airline#themes#isotope#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ [ s:base0[0], s:base01[0], s:base0[1], s:base01[1], '' ],
        \ [ s:base0[0], s:base02[0], s:base0[1], s:base02[1], '' ],
        \ [ s:ui.grey8[0], g:primary[0], s:ui.grey8[1], g:primary[1], 'bold' ])
endfunction

call airline#themes#isotope#refresh()
