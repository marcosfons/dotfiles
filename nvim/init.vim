
lua require'user.plugins'
lua require'user.colorscheme'
lua require'user.options'

" lua require'user.lsp-zero'
"
" lua require'user.lsp'
" lua require'user.cmp'
lua require'user.treesitter'
lua require'user.autopairs'
lua require'user.telescope'
lua require'user.gitsigns'
lua require'user.comment'
lua require'user.keymaps'

lua require'user.lsp.init'



highlight CmpItemKindMethod guibg=NONE guifg=Orange

" Readme files
autocmd BufRead,BufNewFile   *.md setlocal textwidth=80
autocmd BufRead,BufNewFile   *.md setlocal fo+=t
autocmd BufRead,BufNewFile   *.md setlocal wrap linebreak

" Rights to the clipboard native system
vnoremap y   "+y
nnoremap yy  "+yy

au TermOpen * au <buffer> BufEnter,WinEnter redraw!

" Yaml nice formatting
" autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" autocmd Filetype dart setlocal ts=2



" The key to enter in the command mode
let mapleader = " "

" Config the file tree
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_winsize = 30
" Line numbers
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'

" Move between pages
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>q :q <CR>

" Open the file tree
nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 35<CR>


" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <leader>a <cmd>Telescope lsp_code_actions<cr>


nnoremap <C-i> gcc
