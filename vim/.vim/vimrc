if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins
call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox' " Colorscheme
Plug 'dense-analysis/ale' " Linting
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mrk21/yaml-vim'
Plug 'tmhedberg/simpylFold'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'tpope/vim-commentary'
call plug#end()

" Lightline
set noshowmode
let g:lightline = {}
let g:lightline = {
      \ 'colorscheme' : 'gruvbox'
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }
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
nnoremap <silent> <F8> :TagbarToggle<CR>

" ROS interface files
autocmd BufRead,BufNewFile *.launch setfiletype roslaunch
autocmd BufRead,BufNewFile *.msg setfiletype rosmsg
autocmd BufRead,BufNewFile *.srv setfiletype rossrv
autocmd BufRead,BufNewFile *.action setfiletype rosaction
" GeoJSON (syntax and format)
autocmd BufRead,BufNewFile *.geojson setfiletype json
com! FormatJSON %!python -m json.tool

" NERDTree
" Auto enter and change to new window
autocmd vimenter * NERDTree | wincmd p
" If NERDTree is the only window, close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']

set visualbell
set t_vb=

let g:ale_linters = {
            \ 'python' : ['pycodestyle', 'mypy', 'pylint', 'flake8']
\}
            "\ 'python' : ['ament_flake8', 'ament_pep257']

let g:ale_fixers = {
            \ 'python' : ['yapf']
\}

