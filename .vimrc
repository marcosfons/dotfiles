syntax on

" Error bells deactivated
set noerrorbells

" tab and spaces tab width
set tabstop=4 softtabstop=4

" >> command width
set shiftwidth=4

" Better indenting
set smartindent

" For numbers
set number
set relativenumber

" No wrap in end of line
" set nowrap

" Efficient search depending on letter case
set smartcase

" Without the .swp files
set noswapfile

" Without backup
set nobackup

" Undo configuration
set undodir=~/.vim/undodir
set undofile

" Incremental search, without enter
set incsearch

" Number of context lines above and below the cursor
set scrolloff=8

" The lenght of time Vim waits after you stop typing
" before it triggers the plugin
set updatetime=750

" Set a vertical line to 'limit' the space
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Rights to the clipboard native system
" Works in wsl and tmux
vmap <y> "+yi

" Yaml nice formatting
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab



" Paste mode configuration
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
		set pastetoggle=<Esc>[201~
		set paste
		return ""
endfunction
" End paste mode configuration

" Plugins
call plug#begin('~/.vim/plugged')

" gruvbox theme
Plug 'morhetz/gruvbox'

" Autocomplete
" Require additional configuration
" Install cmake build-essential and python-dev
" Run ~/.vimrc/plugged/YouCompleteMe/install.py
Plug 'Valloric/YouCompleteMe'

" Undo tree
Plug 'mbbill/undotree'

" Plug 'dart-lang/dart-vim-plugin'
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'
call plug#end()

" The key to enter in the command mode
let mapleader = " "

" Config the file tree
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 20

" Move between pages
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Open the UndoTree
nnoremap <leader>u :UndotreeShow<CR>

" Open the file tree
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" set theme
colorscheme gruvbox
set background=dark
