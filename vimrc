set nocompatible

" curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh && ./install.sh
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'vim-scripts/a.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'lervag/vimtex'
NeoBundle 'elixir-editors/vim-elixir'
NeoBundle 'vim-erlang/vim-erlang-runtime'
NeoBundle 'vim-erlang/vim-erlang-compiler'
NeoBundle 'vim-erlang/vim-erlang-tags'
NeoBundle 'racer-rust/vim-racer'
NeoBundle 'rust-lang/rust.vim'
call neobundle#end()

filetype plugin indent on
syntax on
colorscheme jellybeans

NeoBundleCheck

au BufNewFile,BufRead *.erl setf erlang

set hlsearch incsearch
set ignorecase smartcase
set cursorline cursorcolumn
set ruler number list hidden
set autoindent
set lazyredraw
set wildmenu wildmode=list:full
set showcmd showmatch
set ambiwidth=double
set shiftwidth=4 textwidth=0 softtabstop=4 tabstop=4 smarttab
set listchars=eol:¬,tab:▸▸
set clipboard=unnamed
set foldenable foldlevelstart=10 foldnestmax=10 foldmethod=indent
set spelllang+=cjk

inoremap <C-h> <Backspace>
inoremap <C-d> <Del>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-m> <Cr>

nnoremap <F4> @@
nnoremap <ESC><ESC> :nohlsearch<CR>

set rtp+=$GOROOT/misc/vim
exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
set completeopt=menu,preview

autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
autocmd FileType ruby setlocal tabstop=2
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal softtabstop=2
autocmd FileType ruby setlocal commentstring=#\ %s

"nmap z <Plug>(easymotion-s2)
"let g:EasyMotion_do_mapping = 0
