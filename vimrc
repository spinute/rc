set nocompatible

" Install plug: curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
  " Install pynvim: pip3 install --user pynvim
  Plug 'Shougo/deoplete.nvim' | Plug 'roxma/nvim-yarp' | Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'bronson/vim-trailing-whitespace'
  Plug 'scrooloose/nerdtree'
  Plug 'nanotech/jellybeans.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-scripts/AnsiEsc.vim'
  Plug 'thinca/vim-quickrun'
  Plug 'SirVer/ultisnips'
  Plug 'Valloric/YouCompleteMe'

  " Erlang
  Plug 'vim-erlang/vim-erlang-omnicomplete'
  Plug 'vim-erlang/vim-erlang-runtime'
  Plug 'vim-erlang/vim-erlang-tags'
  Plug 'spinute/vim-erlang-compiler'
  " Golang
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
  Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
  " c
  Plug 'vim-scripts/a.vim'
  Plug 'vim-scripts/Conque-GDB'
  " Ruby
  Plug 'tpope/vim-endwise'
  " HTML/CSS
  Plug 'mattn/emmet-vim'
  " Rust
  Plug 'rust-lang/rust.vim'
  " Elixir
  Plug 'elixir-editors/vim-elixir'
call plug#end()

colorscheme jellybeans

" https://github.com/junegunn/vim-plug/wiki/extra#automatically-install-missing-plugins-on-startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

inoremap <C-h> <Backspace>
inoremap <C-d> <Del>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-m> <Cr>
inoremap <C-o> <C-x><C-o>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

let g:go_fmt_command = "goimports"

let g:UltiSnipsExpandTrigger="<c-x>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

nnoremap <space> <C-f>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap gs :w<CR>
nnoremap gc :GoMetaLinter<CR>
nnoremap gf :FixWhitespace<CR>
nnoremap gi :GoImports<CR>
nnoremap gr :QuickRun<CR>

nnoremap gd :GoDebugStart<CR>
nnoremap gu :GoDebugStepout<CR>

iab xdate <c-r>=strftime("%y-%m-%d %H:%M:%S")<cr>

let g:deoplete#enable_at_startup = 1

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2

let g:rustfmt_autosave = 1

set history=10000
set hlsearch incsearch
set ignorecase smartcase
set cursorline cursorcolumn
set ruler number list hidden
set autoindent smartindent
set autowrite
set lazyredraw
set wildmenu wildmode=list:full
set showcmd showmatch
set ambiwidth=double
set shiftwidth=4 textwidth=0 softtabstop=4 tabstop=4 smarttab
set expandtab
set listchars=eol:¬,tab:▸▸
set clipboard=unnamedplus,unnamed
set spelllang=en,cjk
set completeopt=menu,preview
