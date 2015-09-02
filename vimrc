set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'jelera/vim-javascript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/syntastic'

let g:syntastic_check_on_open=1

Bundle 'valloric/YouCompleteMe'

let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

Bundle 'marijnh/tern_for_vim'

set t_Co=256
syntax on
set background=dark
set expandtab
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 foldmethod=syntax
autocmd FileType python setlocal shiftwidth=4 tabstop=4 foldmethod=indent
autocmd FileType lisp setlocal shiftwidth=4 tabstop=4 foldmethod=marker foldmarker=(,) lisp syntax=lisp
autocmd FileType html setlocal shiftwidth=2 tabstop=2
set foldmethod=syntax
set foldlevel=99
set number
set visualbell
nmap <leader> :set list!<CR>
set list

au FileType javascript call JavaScriptFold()

set colorcolumn=80
