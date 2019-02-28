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

  " C
  Plug 'vim-scripts/a.vim'
  Plug 'vim-scripts/Conque-GDB'
  " Elixir
  Plug 'elixir-editors/vim-elixir'
  " Erlang
  Plug 'vim-erlang/vim-erlang-omnicomplete'
  Plug 'vim-erlang/vim-erlang-runtime'
  Plug 'vim-erlang/vim-erlang-tags'
  Plug 'spinute/vim-erlang-compiler'
  " Golang
  Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
  Plug 'mdempsky/gocode', {'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
  " HTML/CSS
  Plug 'mattn/emmet-vim'
  " Ruby
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-rails'
  Plug 'ruby-formatter/rufo-vim'
  " Rust
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
cnoremap <C-h> <Backspace>
cnoremap <C-d> <Del>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-m> <Cr>

let g:go_fmt_command = "goimports"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:deoplete#enable_at_startup = 1
let g:rufo_auto_formatting = 1
let g:rustfmt_autosave = 1

nnoremap <space> <C-f>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap gc :GoMetaLinter<CR>
nnoremap gi :GoImports<CR>
nnoremap gt :GoTest<CR>
nnoremap gr :QuickRun<CR>

nnoremap gd :GoDebugStart<CR>
nnoremap gu :GoDebugStepout<CR>

autocmd Filetype ruby setlocal softtabstop=2 sw=2 ts=2
autocmd Filetype html setlocal softtabstop=2 sw=2 ts=2
autocmd Filetype scss setlocal softtabstop=2 sw=2 ts=2
autocmd Filetype yaml setlocal softtabstop=2 sw=2 ts=2
autocmd BufRead,BufNewFile Gemfile setlocal filetype=ruby

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
