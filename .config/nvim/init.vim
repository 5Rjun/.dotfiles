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
set cursorcolumn
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
" => Neovide
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if exists("g:neovide") 
    let g:neovide_refresh_rate=60
    let g:neovide_transparency=0.94
    let g:neovide_floating_blur_amount_x=3.0
    let g:neovide_floating_blur_amount_y=3.0
    set guifont=FiraCode\ Nerd\ Font\ Mono:h10:#h-normal:#e-subpixelantialias
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/AppData/Local/nvim/plugin.vim
source ~/AppData/Local/nvim/colorscheme.vim
source ~/AppData/Local/nvim/statusline.vim
