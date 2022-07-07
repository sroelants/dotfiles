-- Shorthands
map = vim.api.nvim_set_keymap
function nnoremap(key, cmd) map('n', key, cmd, { noremap = true }) end
function inoremap(key, cmd) map('i', key, cmd, { noremap = true }) end
function vnoremap(key, cmd) map('v', key, cmd, { noremap = true }) end
function noremap(key, cmd) map('', key, cmd, { noremap = true }) end

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

-- More intuitive movement across windows
noremap('<C-h>', '<C-w>h')
noremap('<C-j>', '<C-w>j')
noremap('<C-k>', '<C-w>k')
noremap('<C-l>', '<C-w>l')

-- Unmap space
nnoremap('<Space>', '<Nop>')

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
nnoremap('<Silent><Backspace', '<C-o>')

-- Toggle NERDTree
noremap('<F1>', ':NERDTreeToggle<CR>')

--------------------------------------------------------------------------------
-- Git
--------------------------------------------------------------------------------
nnoremap('<Leader>gg', ':Git<CR>')
nnoremap('<Silent><Leader>gc', '<cmd>Telescope git_commits<CR>')
nnoremap('<Silent><Leader>gb', '<cmd>Telescope git_branches<CR>')
nnoremap('<Silent><Leader>gs', '<cmd>Telescope git_stash<CR>')

-- Open in browser
nnoremap('<Leader>gB', ':Gbrowse<CR>')
vnoremap('<Leader>gB', ':GBrowse<CR>')

-- Open in diffsplit
nnoremap('<Leader>gd', ':GDiff<CR>')

--------------------------------------------------------------------------------
-- Telescope
--------------------------------------------------------------------------------
nnoremap('<Silent><Leader><Leader>', '<cmd>Telescope live_grep<CR>')
nnoremap('<Silent><Leader>ff', '<cmd>Telescope find_files<CR>')
nnoremap('<Silent><Leader>fg', '<cmd>Telescope live_grep>')
nnoremap('<Silent><Leader>fb', '<cmd>Telescope buffers<CR>')
nnoremap('<Silent><Leader>fh', '<cmd>Telescope help_tags<CR>')

--------------------------------------------------------------------------------
-- LSP
--------------------------------------------------------------------------------
nnoremap('<Silent>gd', '<cmd>Telescope lsp_definitions<CR>')
nnoremap('<Silent>ca', '<cmd>Telescope lsp_code_actions<CR>')
nnoremap('<Silent>K', '<cmd>lua vim.slp.buf.hover()<CR>')
nnoremap('<Silent>gD', '<cmd>Telescope lsp_implementations<CR>')
nnoremap('<Silent>gh', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
nnoremap('<Silent>gtd', '<cmd>lua vim.lsp.buf.type_definitions<CR>')
nnoremap('<Silent>gr', '<cmd>Telescope lsp_references<CR>')
nnoremap('<Silent>gds', '<cmd>Telescope lsp_document_symbols<CR>')
nnoremap('<Silent>gdw', '<cmd>Telescope lsp_workspace_symbols<CR>')

