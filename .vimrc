"---------- Plugins ----------"
call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'daylerees/colour-schemes', { 'rtp': 'vim' }

call plug#end()

"---------- Theme ----------"
syntax on
colorscheme Earthsong Light


"---------- Keybindings ----------"
let mapleader = ' '
map <leader>t :FZF<cr>

"---------- fzf ----------"
" TODO: show fzf window on the bottom of the scree
" becuase the command bellow does not work
let g:fzf_layout = { 'down': '~40%' }

"---------- Other settings ----------"
" Necesary for lots of cool vim things
set nocompatible

" Line numbering
set relativenumber
set number

" A buffer becomes hidden when it is abandoned
set hidden

" Show current file info in the bottom bar
set ruler

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
