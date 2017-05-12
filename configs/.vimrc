"=== Plugins ==="
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
  let NERDTreeQuitOnOpen=1
  let NERDTreeShowHidden=1
Plug 'xolox/vim-notes' | Plug 'xolox/vim-misc'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
  let g:gitgutter_sign_column_always = 1
  let g:gitgutter_realtime = 1
  set updatetime=250

Plug 'editorconfig/editorconfig-vim'

Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-rhubarb'
Plug 'Raimondi/delimitMate'

Plug 'SirVer/ultisnips'
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsEditSplit="vertical"
  let g:UltiSnipsSnippetDir="$HOME/.config/nvim/UltiSnips"

Plug 'wesQ3/vim-windowswap'

Plug 'w0ng/vim-hybrid' " theme

call plug#end()

syntax on
set background=dark
colorscheme hybrid


"=== Keybindings ==="
let mapleader = ' '
map <leader>t :FZF<cr>
map <leader>g :GFiles?<cr>
map <leader>b :Buffers<cr>
map <leader>s :Snippets<cr>
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

" wrapped lines sanity
nnoremap <silent> j gj
nnoremap <silent> k gk

" auto center search
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz

" reselect visual block after indent
vnoremap < <gv
vnoremap > >gv

" Custom commands
command Bda bufdo bd
command BDA bufdo bd!
command Src source %
command PI PlugInstall
command PU PlugUpdate
command PC PlugClean


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

" Enable rich color palette
if (has("termguicolors"))
  set termguicolors
endif
