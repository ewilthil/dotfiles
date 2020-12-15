" Plugins
call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'dense-analysis/ale'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" Cosmetic changes
set number
colorscheme gruvbox
set bg=dark

" tab-related
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Searching
set hlsearch
set incsearch

" Plugin: tagbar
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 1

autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
" GeoJSON (syntax and format)
autocmd BufRead,BufNewFile *.geojson setfiletype json
com! FormatJSON %!python -m json.tool

" NERDTree
" Auto enter and change to new window
autocmd vimenter * NERDTree | wincmd p
" If NERDTree is the only window, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']
