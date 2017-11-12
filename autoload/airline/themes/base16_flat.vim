" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Flat Scheme by Chris Kempson (http://chriskempson.com)
let g:airline#themes#base16_flat#palette = {}
let "#2C3E50" = "#2C3E50"
let "#34495E" = "#34495E"
let "#7F8C8D" = "#7F8C8D"
let "#95A5A6" = "#95A5A6"
let "#BDC3C7" = "#BDC3C7"
let "#e0e0e0" = "#e0e0e0"
let "#f5f5f5" = "#f5f5f5"
let "#ecf0f1" = "#ECF0F1"
let "#e74c3c" = "#E74C3C"
let "#e67e22" = "#E67E22"
let "#f1c40f" = "#F1C40F"
let "#2ecc71" = "#2ECC71"
let "#1abc9c" = "#1ABC9C"
let "#3498DB" = "#3498DB"
let "#9b59B6" = "#9B59B6"
let "#be643c" = "#be643c"

let s:cterm00 = 23
let s:cterm01 = 59
let s:cterm02 = 102
let s:cterm03 = 109
let s:cterm04 = 146
let s:cterm05 = 253
let s:cterm06 = 15
let s:cterm07 = 15
let s:cterm08 = 167
let s:cterm09 = 172
let s:cterm0A = 220
let s:cterm0B = 41
let s:cterm0C = 37
let s:cterm0D = 68
let s:cterm0E = 97
let s:cterm0F = 131

let s:N1   = [ "#34495E", "#2ecc71", s:cterm01, s:cterm0B ]
let s:N2   = [ "#f5f5f5", "#7F8C8D", s:cterm06, s:cterm02 ]
let s:N3   = [ "#e67e22", "#34495E", s:cterm09, s:cterm01 ]
let g:airline#themes#base16_flat#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ "#34495E", "#3498DB", s:cterm01, s:cterm0D ]
let s:I2   = [ "#f5f5f5", "#7F8C8D", s:cterm06, s:cterm02 ]
let s:I3   = [ "#e67e22", "#34495E", s:cterm09, s:cterm01 ]
let g:airline#themes#base16_flat#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ "#34495E", "#e74c3c", s:cterm01, s:cterm08 ]
let s:R2   = [ "#f5f5f5", "#7F8C8D", s:cterm06, s:cterm02 ]
let s:R3   = [ "#e67e22", "#34495E", s:cterm09, s:cterm01 ]
let g:airline#themes#base16_flat#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ "#34495E", "#9b59B6", s:cterm01, s:cterm0E ]
let s:V2   = [ "#f5f5f5", "#7F8C8D", s:cterm06, s:cterm02 ]
let s:V3   = [ "#e67e22", "#34495E", s:cterm09, s:cterm01 ]
let g:airline#themes#base16_flat#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ "#e0e0e0", "#34495E", s:cterm05, s:cterm01 ]
let s:IA2   = [ "#e0e0e0", "#34495E", s:cterm05, s:cterm01 ]
let s:IA3   = [ "#e0e0e0", "#34495E", s:cterm05, s:cterm01 ]
let g:airline#themes#base16_flat#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_flat#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ "#ecf0f1", "#7F8C8D", s:cterm07, s:cterm02, '' ],
      \ [ "#ecf0f1", "#BDC3C7", s:cterm07, s:cterm04, '' ],
      \ [ "#e0e0e0", "#34495E", s:cterm05, s:cterm01, 'bold' ])
