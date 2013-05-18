set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

"let Vundle manage Vundle | required!
Bundle 'gmarik/vundle'

"mah bundles
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'joonty/vdebug'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'Valloric/YouCompleteMe'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/powerline.git'

filetype plugin indent on
syntax on

inoremap <Nul> <C-x><C-o>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

autocmd BufWritePre * :%s/\s\+$//e

"autocmd FileType php nnoremap <C-P> :!php %<CR>
autocmd FileType php nnoremap <C-L> :!php -l %<CR>
autocmd FileType php nnoremap <C-U> :!phpunit %<CR>

autocmd FileType php nmap <C-d> :call JCommentWriter()<CR>

nmap <silent> <F6> :set number!<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set autoindent
set copyindent
set number
set shiftwidth=4
set shiftround
set showmatch
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

set pastetoggle=<F2>

map tn :tabnew<CR><Esc>
map tc :tabclose<CR><Esc>
"map <S-h> gT
"map <S-l> gt
map nt :NERDTreeToggle<CR><Esc>

set tabstop=4
set shiftwidth=4
set expandtab

set background=dark
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

let g:vdebug_options = {'path_maps': {'/home/andreass/repositories':'/home/andreass/media/spongebob/repositories', '/home/andreass/library':'/home/andreass/media/spongebob/library'}}
let g:ctrlp_working_path_mode = ''

" powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set laststatus=2 " always show powerline

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

