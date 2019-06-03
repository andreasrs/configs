set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'trevordmiller/nova-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" colours
set t_Co=256
colorscheme nova

" basics
syntax on
set hidden
set cmdheight=2
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2
set relativenumber
set number
set splitbelow

" nerd tree
map <C-n> :NERDTreeToggle<CR>

" ctrl p
map <C-p> :CtrlP<CR>
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
      \ 'file': '\.DS_Store$'
      \ }

" window resize binds
nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>
