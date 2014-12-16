set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'airblade/vim-gitgutter'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'majutsushi/tagbar'
Plugin 'gabebw/vim-spec-runner'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rainerborene/vim-reek'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimshell'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'bbatsov/rubocop'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'mattn/emmet-vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'elzr/vim-json'

" Color schemes
Plugin 'wombat256.vim'
Plugin 'Zenburn'
Plugin 'morhetz/gruvbox'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'flazz/vim-colorschemes'

" Snippets
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle 'garbas/vim-snipmate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set number
set hlsearch
set expandtab tabstop=2 shiftwidth=2
highlight clear SignColumn
set encoding=utf-8
colorscheme apprentice
"set t_Co=256
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
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nmap s <Plug>(easymotion-s)
