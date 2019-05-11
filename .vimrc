syntax enable
set background=dark
colorscheme apprentice

set nocompatible
filetype off

set encoding=utf-8 fileencodings=
set expandtab
set sts=4
set shiftwidth=4
set autoindent
set smartindent
set cc=80
set number
setglobal fdm=indent foldnestmax=1
set list
set path+=**
set wildmenu

let g:netrw_liststyle=3
let g:vlime_leader = ","
let g:rainbow_active = 1
let g:ale_sign_column_always = 1
let g:autopep8_disable_show_diff=1

set laststatus=2
set noshowmode

autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

autocmd FileType c, cc, h, hh :setlocal cindent
autocmd FileType make :setlocal noexpandtab

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'l04m33/vlime', {'rtp': 'vim/'}
Plugin 'luochen1990/rainbow'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

noremap <F2> :wq<CR>
noremap <F3> :w<CR>
noremap <C-left> <C-w><left>
noremap <C-right> <C-w><right>
noremap <C-up> <C-w><up>
noremap <C-down> <C-w><down>
inoremap jk <C-[>
noremap <S-j> <S-}>
noremap <S-k> <S-{>
noremap <S-{> <S-k>
noremap <S-}> <S-j>

execute pathogen#infect()
