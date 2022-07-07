-- Shorthands
map = vim.api.nvim_set_keymap
function nnoremap(key, cmd) map('n', key, cmd, { noremap = true }) end
function inoremap(key, cmd) map('i', key, cmd, { noremap = true }) end
function vnoremap(key, cmd) map('v', key, cmd, { noremap = true }) end
function noremap(key, cmd) map('', key, cmd, { noremap = true }) end

-- Unmap space (leader key)
nnoremap("<Space>", "<Nop>")

-- Leader/localleader
vim.g.mapleader = " "
vim.g.localleader = ","

-- Turn off arrow navigation in normal mode
nnoremap('<Up>', '<Nop>')
nnoremap('<Down>', '<Nop>')
nnoremap('<Left>', '<Nop>')
nnoremap('<Right>', '<Nop>')

-- Turn off arrow navigation in insert mode
inoremap('<Up>', '<Nop>')
inoremap('<Down>', '<Nop>')
inoremap('<Left>', '<Nop>')
inoremap('<Right>', '<Nop>')

-- Move up and down screen line rather than file line
nnoremap('j', 'gj')
nnoremap('k', 'gk')
noremap('H', '^')
noremap('L', '$')
vnoremap('H', '^')
vnoremap('L', '$')

-- More intuitive movement across windows
noremap('<C-h>', '<C-w>h')
noremap('<C-j>', '<C-w>j')
noremap('<C-k>', '<C-w>k')
noremap('<C-l>', '<C-w>l')

-- Stop it, hash key
inoremap('#', 'X<BS>#')

-- Map <Leader><tab> to move to next split
nnoremap('<Leader><Tab>', '<C-w><C-w>')

-- Use <Esc><Esc> to save a file
noremap('<Esc><Esc>', ':w<CR>')

-- Remap jj to <Esc>
inoremap('jj', '<Esc>')

-- Toggle paste
nnoremap('<F6>', ':set paste!<CR>')

-- Backspace goes to previous buffer
nnoremap('<Backspace>', '<C-o>')

-- Toggle NERDTree
noremap('<F1>', ':NERDTreeToggle<CR>')

--------------------------------------------------------------------------------
-- Git
--------------------------------------------------------------------------------
-- nnoremap('<Leader>gg', '<cmd>Git<CR>')
-- nnoremap('<Leader>gc', '<cmd>Telescope git_commits<CR>')
-- nnoremap('<Leader>gb', '<cmd>Telescope git_branches<CR>')
-- nnoremap('<Leader>gs', '<cmd>Telescope git_stash<CR>')

-- Open in browser
-- nnoremap('<Leader>gB', ':Gbrowse<CR>')
-- vnoremap('<Leader>gB', ':GBrowse<CR>')

-- Open in diffsplit
-- nnoremap('<Leader>gd', ':GDiff<CR>')

--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
-- nnoremap('<Leader><Leader>', "<cmd>Telescope live_grep<CR>")
-- nnoremap('<Leader>ff', "<cmd>Telescope find_files<CR>")
-- nnoremap('<Leader>fg', "<cmd>Telescope live_grep>")
-- nnoremap('<Leader>fb', "<cmd>Telescope buffers<CR>")
-- nnoremap('<Leader>fh', "<cmd>Telescope help_tags<CR>")

--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
nnoremap('gd', '<cmd>Telescope lsp_definitions<CR>')
nnoremap('ca', '<cmd>Telescope lsp_code_actions<CR>')
nnoremap('K', ':lua vim.lsp.buf.hover()<CR>')
nnoremap('gD', '<cmd>Telescope lsp_implementations<CR>')
nnoremap('gh', ':lua vim.lsp.buf.signature_help()<CR>')
nnoremap('gtd', ':lua vim.lsp.buf.type_definitions<CR>')
nnoremap('gr', '<cmd>Telescope lsp_references<CR>')
nnoremap('gds', '<cmd>Telescope lsp_document_symbols<CR>')
nnoremap('gdw', '<cmd>Telescope lsp_workspace_symbols<CR>')

