set encoding=utf-8 fileencodings=
set expandtab
set sts=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set cc=80
set number
set nowrap
setglobal fdm=indent foldnestmax=1
set list

let g:netrw_liststyle=3
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_make_exec = "/usr/bin/make"
let g:syntastic_c_checkers=[ "make" ]

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype'] ]
      \ }
      \ }

syntax on
colorscheme iceberg

if bufwinnr(1)
  map ' <C-w>>
  map \ <C-w><
endif

imap [ []<left>
imap ( ()<left>
imap {{ {}<left><CR><up><right><CR>

noremap <F2> :wq<CR>
noremap <F3> :w<CR>
noremap <C-left> <C-w><left>
noremap <C-right> <C-w><right>
noremap <C-up> <C-w><up>
noremap <C-down> <C-w><down>

autocmd VimEnter * silent! !setxkbmap -option caps:escape

execute pathogen#infect()
