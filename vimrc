set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme default

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to autoapprove removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Proper tabs and indentation.
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

" Proper tab control.
nnoremap <Tab> >>
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
vnoremap <Tab> >><ESC>
vnoremap <S-Tab> <<<ESC>

" Display line numbers and proper coloring
set number
set numberwidth=4
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Proper highlighting for searches
set hlsearch
highlight Search term=bold cterm=NONE ctermfg=LightGrey ctermbg=DarkGrey

" Proper highlighting for column 80.
set colorcolumn=+1        " highlight column after 'textwidth'
set colorcolumn=+1,+2,+3  " highlight three columns after 'textwidth'
highlight ColorColumn ctermbg=233 ctermfg=240
set colorcolumn=80

" Reset search highlights.
nnoremap \\ :noh<CR>

" Scroll movements.
set mouse=a
map <ScrollWheelUp> <C-Y><C-Y>
map <ScrollWheelDown> <C-E><C-E>

" Window movements.
nnoremap <C-Up> <C-w>k
nnoremap <C-Down> <C-w>j
nnoremap <C-Right> <C-w>l
nnoremap <C-Left> <C-w>h

" No lag between visual and normal.
set timeoutlen=1000 ttimeoutlen=0
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_confirm_extra_conf = 0

" Search while typing.
set incsearch

" Search highlighted word.
vnoremap // y/\V<C-R>"<CR>
