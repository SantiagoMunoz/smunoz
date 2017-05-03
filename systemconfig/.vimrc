set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'suoto/vim-hdl'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'Valloric/YouCompleteMe'		
Plugin 'vim-airline/vim-airline'
Plugin 'enricobacis/vim-airline-clock'
Plugin 'vim-syntastic/syntastic'
Plugin 'colepeters/spacemacs-theme.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Configure vim-airline clock. Extremely important!
let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1000

"spacemacs theme
if (has("termguicolors"))
    set termguicolors
endif
set background=dark
colorscheme spacemacs-theme

" Syntax highlighting
syntax on
" Show line numbers
set number
" Line number color configuration
highlight LineNr ctermfg=white ctermbg=grey
" Tabs -> 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab
" Make status bar always show
set laststatus=2

let g:syntastic_c_checkers = ['gcc']
" NerdTree
silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :TagbarToggle<CR>

" Remap escape to jk for convenience
inoremap jk <ESC>
" Syntax folding based on syntax
set foldmethod=syntax
"highlight current search
set hlsearch
" Faster split navigation
map <C-l> <C-w>l
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-/> : tab split<CR>:exec("tag ".expand("<cword>"))<CR>
