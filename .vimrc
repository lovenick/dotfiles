set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'helino/vim-json'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'mxw/vim-jsx'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'ryanoasis/vim-devicons'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

colorscheme onedark
syntax on

" Tabs to spaces - no hardtabs.
set expandtab
set shiftwidth=2
set tabstop=2

" Indent guides
"let g:indent_guides_enable_on_vim_startup=1
" Default colors need work with onedark theme.
"let g:indent_guides_auto_colors=0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=4

" Shop line numbers
:set number relativenumber

" Set emmets leader key to tab for expansion
" let g:user_emmet_expandabbr_key='<Tab>'
" Instead of code above, this allows tab expansion AND regular tabs
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


let g:jsx_ext_required=0 " Allow JSX in normal JS files

" Remap navigating splits
" Don't forget to remap Caps-lock to ctrl in OSX Prefs
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable linting - don't forget to install eslint globally via npm
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['eslint']

set backspace=indent,eol,start

" Open nerdtree if a directory is opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Close vim if nerdtree is last pane open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Make nerdtree prettier
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" incrementally search
set incsearch

" Disable X mode hot key
nnoremap Q <nop>

" Sets how many lines of history VIM has to remember
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" Don't backup shit
set nobackup
set noswapfile
" Setup nerd font for nerdtree file icons
" Currently not working. Nerdfont installed, but missing icons when enabled.
" set encoding=utf-8
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
" set guifont=DroidSansMonoPLNerd:h12
let g:airline_powerline_fonts=1
