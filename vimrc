set nocompatible

" curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && ./install.sh
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'lervag/vimtex'
NeoBundle 'thinca/vim-quickrun'
call neobundle#end()

filetype plugin indent on
syntax on
colorscheme jellybeans

NeoBundleCheck

set hlsearch incsearch
set ignorecase smartcase
set cursorline cursorcolumn
set ruler number list hidden
set autoindent
set wildmenu wildmode=list:full
set showcmd showmatch
set ambiwidth=double
set shiftwidth=4 textwidth=0 softtabstop=4 tabstop=4 smarttab
set listchars=eol:¬,tab:▸▸
set clipboard=unnamed

inoremap <C-h> <Backspace>
inoremap <C-d> <Del>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-m> <Cr>

nnoremap <ESC><ESC> :nohlsearch<CR>

set rtp+=$GOROOT/misc/vim
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>

nmap z <Plug>(easymotion-s2)
let g:EasyMotion_do_mapping = 0
