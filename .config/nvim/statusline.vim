"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"unicodes =    █                       ● ›‹

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LightLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {'colorscheme':'onehalfdark' }
let g:lightline.separator = { 'left':'', 'right':'' }
let g:lightline.subseparator = { 'left': '›', 'right': '‹'  }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='onehalfdark'
"let g:airline_solarized_bg='dark' 
let g:airline_left_sep = ' '
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_iminsert=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode