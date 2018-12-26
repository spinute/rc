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

  " erlang
  Plug 'vim-erlang/vim-erlang-omnicomplete'
  Plug 'vim-erlang/vim-erlang-runtime'
  Plug 'vim-erlang/vim-erlang-tags'
  Plug 'spinute/vim-erlang-compiler'
  " go
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
  Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
  " ruby
  Plug 'tpope/vim-endwise'
  " html/css
  Plug 'mattn/emmet-vim'
  " rust
  Plug 'rust-lang/rust.vim'
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

nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap gc :FixWhitespace
nnoremap gi :GoImports<CR>
nnoremap gr :QuickRun<CR>

let g:deoplete#enable_at_startup = 1

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2

let g:rustfmt_autosave = 1

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
set expandtab
set listchars=eol:¬,tab:▸▸
set clipboard=unnamedplus,unnamed
set spelllang=en,cjk
