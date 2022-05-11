set number
set showmatch
set hlsearch
set incsearch
set wildmode=longest, list
filetype plugin indent on
syntax on
set ttyfast

call plug#begin()
Plug 'preservim/nerdtree'
Plug '9mm/vim-closer'
Plug 'Mofiqul/dracula.nvim'
call plug#end()
