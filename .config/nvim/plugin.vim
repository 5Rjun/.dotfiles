"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/AppData/Local/nvim/plugged')
    "Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
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
