set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required



" Autoload plug-vim
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

if has('nvim') || has('termguicolors')
	  set termguicolors
  endif

" Plugin Calls 
call plug#begin()
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug '/scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'Raimondi/delimitMate'
Plug 'haya14busa/incsearch.vim'
Plug 'owickstrom/vim-colors-paramount'
Plug 'fcpg/vim-orbital'
Plug 'rakr/vim-one'
call plug#end()

" Color Schemes
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
" colorscheme challenger_deep
colorscheme one
" set background=dark
" highlight clear CursorLineNR
set nohlsearch

" Lightline Settings
set laststatus=2
set noshowmode
autocmd VimEnter * set t_ut=


" Betty Settings
set tabstop=8 shiftwidth=8
set autoindent
set smartindent
set cindent
set number
syntax enable

" Pathogen Settings
execute pathogen#infect()
call pathogen#helptags()

" NerdTree Settings
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

map /  <Plug>(incsearch-forward)
set shell=/bin/bash
let g:ycm_clangd_binary_path = "/path/to/clangd"
let g:ycm_clangd_uses_ycmd_caching = 1 
" " Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
