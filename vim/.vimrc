set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'trevordmiller/nova-vim'
Plugin 'w0rp/ale'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'carlitux/deoplete-ternjs'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" colours
set t_Co=256
colorscheme nova

" basics
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2
set relativenumber
set number
set splitbelow

" vim-javascript
let g:javascript_plugin_jsdoc = 1

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

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript,jsx setlocal omnifunc=tern#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" json
let g:vim_json_syntax_conceal = 0

" deoplete
let g:deoplete#enable_at_startup = 1

" deoplete-ternjs
" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include documentation strings (if found) in the result data.
let g:deoplete#sources#ternjs#docs = 1

" Whether to include JavaScript keywords when completing something that is not
let g:deoplete#sources#ternjs#include_keywords = 1

"ale
let g:airline#extensions#ale#enabled = 1
let g:ale_fixers = { 'javascript': ['eslint'] }

" jsx
let g:jsx_ext_required = 0
