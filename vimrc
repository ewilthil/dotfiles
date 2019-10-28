" Plugins
call plug#begin('~/.vim/plugged')
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
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

" Plugin: tagbar
nmap <F8> :TagbarToggle<CR>
