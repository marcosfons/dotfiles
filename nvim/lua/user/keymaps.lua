local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " ";
vim.g.maplocalleader = " ";


-- // NORMAL // --
-- Better window navigation
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

keymap("n", "<C-[>", "<<", opts)
keymap("n", "<C-]>", ">>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)


-- // Visual // --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "p", '"_dP', opts)



-- // Visual Block // --
keymap("x", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("x", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)













--" Rights to the clipboard native system
--vnoremap y   "+y
--nnoremap yy  "+yy
--
--" The key to enter in the command mode
--let mapleader = " "
--
--" Config the file tree
--let g:netrw_browse_split = 4
--let g:netrw_liststyle = 3
--let g:netrw_altv = 1
--let g:netrw_banner = 0
--let g:netrw_winsize = 30
--" Line numbers
--let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
--
--" Move between pages
--nnoremap <leader>h :wincmd h<CR>
--nnoremap <leader>j :wincmd j<CR>
--nnoremap <leader>k :wincmd k<CR>
--nnoremap <leader>l :wincmd l<CR>
--nnoremap <leader>q :q <CR>
--
--" Open the file tree
--nnoremap <leader>e :wincmd v<bar> :Ex <bar> :vertical resize 35<CR>
--
--
--" Use <Tab> and <S-Tab> to navigate through popup menu
--inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
--inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
--
--noremap <Up> <Nop>
--noremap <Down> <Nop>
--noremap <Left> <Nop>
--noremap <Right> <Nop>
--
--" Find files using Telescope command-line sugar.
--nnoremap <leader>ff <cmd>Telescope find_files<cr>
--nnoremap <leader>fg <cmd>Telescope live_grep<cr>
--" nnoremap <leader>fb <cmd>Telescope buffers<cr>
--" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
--
--nnoremap <leader>a <cmd>Telescope lsp_code_actions<cr>
--
--
--nnoremap <C-i> gcc
