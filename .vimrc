"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'bling/vim-airline'
NeoBundle 'jeetsukumaran/vim-buffergator'
"NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'gabebw/vim-spec-runner'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'rainerborene/vim-reek'
NeoBundle 'kien/rainbow_parentheses.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
"NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
"NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'bbatsov/rubocop'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-surround'
NeoBundle 'Raimondi/delimitMate'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

syntax on
set number
set hlsearch
set expandtab tabstop=2 shiftwidth=2
highlight clear SignColumn
set encoding=utf-8
colorscheme Tomorrow-Night
set t_Co=256
set backspace=indent,eol,start
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
let g:spec_runner_dispatcher = '! bundle exec {command} --color'
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:neocomplcache_enable_at_startup = 1
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-t> :tabnew<CR>
