"=== Plugins ==="
call plug#begin('~/.vim/plugged')

Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()


"=== Theme ==="
syntax on
set background=dark
colorscheme one

if (has("termguicolors"))
  set termguicolors
endif


"=== Keybindings ==="
let mapleader = ' '
map <leader>w :w<cr>
map <leader>q :q<cr>
map <leader>t :FZF<cr>
map <leader>o :NERDTreeToggle<cr>
map <S-j> 10j
map <S-k> 10k


"=== NERDTree ==="
let NERDTreeQuitOnOpen=1


"=== gitgutter ==="
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
set updatetime=250


"=== Other ==="
" Necessary for lots of cool vim things
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
