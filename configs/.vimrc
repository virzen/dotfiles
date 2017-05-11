"=== Plugins ==="
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mxw/vim-jsx'
Plug 'SirVer/ultisnips'
Plug 'wesQ3/vim-windowswap'

Plug 'w0ng/vim-hybrid' " theme

call plug#end()


"=== Keybindings ==="
let mapleader = ' '
map <leader>t :FZF<cr>
map <leader>g :GFiles?<cr>
map <leader>b :Buffers<cr>
map <leader>o :NERDTreeToggle<cr>
map <leader>\ :NERDTreeFind<cr>
map <leader>p "0p
map <leader>P "0P


" Split pane navigation
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap U :echo "<<===== CHECK CAPS LOCK =====>>"<CR>

" Custom commands
command Bda bufdo bd
command BDA bufdo bd!
command Src source %
command PI PlugInstall
command PU PlugUpdate


"=== Plugins' settings ==="
" NERDTree
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

" gitgutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 1
set updatetime=250

" UltiSnips
let g:UltiSnipsEditSplit="vertical"

" hybrid theme
syntax on
let g:hybrid_custom_term_colors = 1
colorscheme hybrid


"=== Vim-specific ==="
set nocompatible

" Line numbering
set relativenumber
set number

" A buffer becomes hidden when it is abandoned
set hidden

" Show current file info in the bottom bar
set laststatus=2
set ruler

" Open new split panes to right and bottom
set splitbelow
set splitright

" Copy to system clipboard
set clipboard=unnamed

" Configure backspace so it acts as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Show matching brackets when text indicator is over them
set showmatch

" Highlight search results
set hlsearch

" Start searching before pressing enter
set incsearch
set ignorecase
set smartcase

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off
set nobackup
set nowb
set noswapfile

set mouse=a

set textwidth=80
autocmd FileType gitcommit set textwidth=72
set colorcolumn=+1

filetype plugin indent on

" Enable rich color palette
if (has("termguicolors"))
  set termguicolors
endif
