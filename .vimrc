"---------- Plugins ----------"
call plug#begin('~/.vim/plugged')

Plug 'rakr/vim-one'
Plug 'editorconfig/editorconfig-vim'

call plug#end()
"---------- /Plugins ----------"

" Colors
syntax on
set background=dark
colorscheme one

" Line numbering
set relativenumber
set number

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" Highlight search results
set hlsearch

" Start searching before pressing enter
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off
set nobackup
set nowb
set noswapfile
