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
set softtabstop=2

" Indent guides
let g:indent_guides_enable_on_vim_startup=0
" Default colors need work with onedark theme.
"let g:indent_guides_auto_colors=0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=grey ctermbg=4

" Shop line numbers
:set number

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
