set nocompatible              " be iMproved, required
filetype off                  " required
"set TERM=xterm-256color

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set nobackup                    " No auto backups
set noswapfile                  " No swaip
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
set cursorline
hi clear cursorline
"set cursorcolumn
set scl=yes
syntax enable
let g:rehash256 = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr
set mouse=a
set scrolloff=10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fix Sizing Bug With Alacritty Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/AppData/Local/nvim/plugged')

    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'                       " Lightline statusbar
    Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
    Plug 'ap/vim-css-color'                            " Color previews for CSS
    Plug 'scrooloose/nerdtree'                         " Nerdtree
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'junegunn/goyo.vim'                           " Distraction-free viewing
    Plug 'junegunn/limelight.vim'                      " Hyperfocus on a range
    Plug 'junegunn/vim-emoji'                          " Vim needs emojis!
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtrre  
    Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    Plug 'kyoh86/momiji', { 'rtp': 'vim' }
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"unicodes =    █                       ● ›‹
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LightLine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {'colorscheme':'catppuccin' }
let g:lightline.separator = { 'left':'', 'right':'' }
let g:lightline.subseparator = { 'left': '›', 'right': '‹'  }
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>Colorscheme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme catppuccin-mocha " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha, embark, nightfox, terafox, duskfox, carbonfox, dayfox, dawnfox, onehalfdrk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='catppuccin'
"let g:airline_solarized_bg='dark'
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_detect_modified=1
"let g:airline_detect_paste=1
"let g:airline_detect_crypt=1
"let g:airline_detect_iminsert=0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Neovide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("g:neovide") 
    let g:neovide_refresh_rate=60
    let g:neovide_transparency=0.94
    let g:neovide_floating_blur_amount_x=3.0
    let g:neovide_floating_blur_amount_y=3.0
    set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h10:#h-normal:#e-subpixelantialias
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Theming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Normal           guifg=#dfdfdf ctermfg=15   guibg=#282c34 ctermbg=none  cterm=none
highlight LineNr           guifg=#5b6268 ctermfg=8    guibg=#282c34 ctermbg=none  cterm=none
highlight CursorLineNr     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
highlight VertSplit        guifg=#1c1f24 ctermfg=0    guifg=#5b6268 ctermbg=8     cterm=none
highlight Statement        guifg=#98be65 ctermfg=2    guibg=none    ctermbg=none  cterm=none
highlight Directory        guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
highlight StatusLine       guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
highlight StatusLineNC     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
highlight NERDTreeClosable guifg=#98be65 ctermfg=2
highlight NERDTreeOpenable guifg=#5b6268 ctermfg=8
highlight Comment          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=italic
highlight Constant         guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
highlight Special          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
highlight Identifier       guifg=#5699af ctermfg=6    guibg=none    ctermbg=none  cterm=none
highlight PreProc          guifg=#c678dd ctermfg=5    guibg=none    ctermbg=none  cterm=none
highlight String           guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
highlight Number           guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
highlight Function         guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
highlight Visual           guifg=#dfdfdf ctermfg=1    guibg=#1c1f24 ctermbg=none  cterm=none
"highlight CursorLine       guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
"highlight CursorColumn     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none

" highlight WildMenu         ctermfg=0       ctermbg=80      cterm=none
" highlight Folded           ctermfg=103     ctermbg=234     cterm=none
" highlight FoldColumn       ctermfg=103     ctermbg=234     cterm=none
" highlight DiffAdd          ctermfg=none    ctermbg=23      cterm=none
" highlight DiffChange       ctermfg=none    ctermbg=56      cterm=none
" highlight DiffDelete       ctermfg=168     ctermbg=96      cterm=none
" highlight DiffText         ctermfg=0       ctermbg=80      cterm=none
" highlight SignColumn       ctermfg=244     ctermbg=235     cterm=none
" highlight Conceal          ctermfg=251     ctermbg=none    cterm=none
" highlight SpellBad         ctermfg=168     ctermbg=none    cterm=underline
" highlight SpellCap         ctermfg=80      ctermbg=none    cterm=underline
" highlight SpellRare        ctermfg=121     ctermbg=none    cterm=underline
" highlight SpellLocal       ctermfg=186     ctermbg=none    cterm=underline
" highlight Pmenu            ctermfg=251     ctermbg=234     cterm=none
" highlight PmenuSel         ctermfg=0       ctermbg=111     cterm=none
" highlight PmenuSbar        ctermfg=206     ctermbg=235     cterm=none
" highlight PmenuThumb       ctermfg=235     ctermbg=206     cterm=none
" highlight TabLine          ctermfg=244     ctermbg=234     cterm=none
" highlight TablineSel       ctermfg=0       ctermbg=247     cterm=none
" highlight TablineFill      ctermfg=244     ctermbg=234     cterm=none
" highlight CursorColumn     ctermfg=none    ctermbg=236     cterm=none
" highlight CursorLine       ctermfg=none    ctermbg=236     cterm=none
" highlight ColorColumn      ctermfg=none    ctermbg=236     cterm=none
" highlight Cursor             ctermfg=none       ctermbg=5       cterm=none
" highlight htmlEndTag       ctermfg=114     ctermbg=none    cterm=none
" highlight xmlEndTag        ctermfg=114     ctermbg=none    cterm=none
