-- Remapping
local map = vim.api.nvim_set_keymap
local function inoremap(key, cmd) map("i", key, cmd, { noremap = true}) end
local function vnoremap(key, cmd) map("v", key, cmd, { noremap = true}) end
local function nnoremap(key, cmd) map("n", key, cmd, { noremap = true}) end
local function noremap(key, cmd) map("", key, cmd, { noremap = true}) end

-- Hard mode: Disable arrow keys
noremap("<Up>", "<Nop")
noremap("<Down>", "<Nop")
noremap("<Left>", "<Nop")
noremap("<Right>", "<Nop")

nnoremap("j", "gj")
nnoremap("k", "gk")
noremap("H", "^")
vnoremap("H", "^")
noremap("L", "$")
vnoremap("L", "$")

-- noremap("<C-h>", "<C-w>h")
-- noremap("<C-j>", "<C-w>j")
-- noremap("<C-k>", "<C-w>k")
-- noremap("<C-l>", "<C-w>l")

noremap("<Esc><Esc>", ":w<CR>")

-- Which-key
local whichkey = require("which-key")

whichkey.register({
		-- Misc
		["<F1>"] = { "<cmd>NvimTreeToggle<cr>", "Toggle File tree" },
		["<leader><leader>"] = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
		["<leader><tab>"] = { "<c-w><c-w>", "Next split" },
		["<leader>:"] = { "<cmd>Telescope commands<cr>", "Commands" },

		-- Git
		["<leader>g"] = {
			name = "Git",
			g = {"<cmd>Neogit<cr>", "Open Neogit" },
			c = {"<cmd>Telescope git_commits<cr>", "Search commits" },
			f = {"<cmd>Telescope git_files<cr>", "Search files" },
			b = {"<cmd>Telescope git_branches<cr>", "Search branches" },
			s = {"<cmd>Telescope git_stash<cr>", "Search stash" },
		},

		-- Fuzzy finder
		["<leader>f"] = {
			name = "Find",
			["<leader>"] = {"<cmd>Telescope live_grep<cr>", "Live grep" },
			f = {"<cmd>Telescope find_files<cr>", "Search files" },
			b = {"<cmd>Telescope find_buffers<cr>", "Search buffers" },
			m = {"<cmd>Telescope man_pages<cr>", "Search man pages" },
			r = {"<cmd>Telescope oldfiles<cr>", "Search recent files" },
			g = {"<cmd>Telescope git_files<cr>", "Search git files" },
			t = {"<cmd>Telescope help_tags<cr>", "Search help tags" },
			e = {"<cmd>Telescope emoji<cr>", "Search emoji" },
			p = {"<cmd>lua require('telescope').extensions.project.project({ display_type = 'full' })<CR>", "Projects"},
		},

		-- Vimwiki
		["<leader>n"] = {
			name = "Notes",
			t = {"<cmd>VimwikiMakeDiaryNote<cr>", "Today's diary" },
			T = {"<cmd>VimwikiMakeDiaryNote<cr>", "Today's diary (vsplit)" },
			d = {"<cmd>VimwikiDiaryIndex<cr>", "Diary index" },
			i = {"<cmd>VimwikiIndex<cr>", "Wiki index" },
		},

		-- Config
		["<leader>c"] = {
			name = "Config",
			l = { "<cmd>edit ~/.hledger.journal<cr>", "Ledger" },
			i = { "<cmd>edit ~/.config/i3/config<cr>", "i3" },
			f = { "<cmd>edit ~/.config/fishfile<cr>", "fishfile" },
		},

		-- Lsp
		K = { "<cmd>Lspsaga hover_doc<cr>", "Documentation" },
		gd = { "<cmd>Lspsaga goto_definition<cr>", "Go to definition" },

		["<leader>l"] = {
			name = "Language Server",

			-- inspect
			K = { "<cmd>Lspsaga hover_doc<cr>", "Documentation" },
			d = { "<cmd>Lspsaga goto_definition<cr>", "Go to definition" },
			pd = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
			i = { vim.lsp.buf.implementation, "Go to implementation" },
			t = { vim.lsp.buf.type_definition, "Go to type definition" },
			f = { "<cmd>Lspsaga lsp_finder<cr>", "Find definition and references" },
			o = { "<cmd>Lspsaga outline<cr>", "Outline" },

			-- diagnostic
			k = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Previous issue" },
			j = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Next issue" },
			w = { "<cmd>Lspsaga show_diagnostics<cr>", "Open diognostics" },
			T = { "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble diagnostics" },
				
			-- code
			a = { "<cmd>Lspsaga code_action<cr>", "Code action" },
			r = { "<cmd>Lspsaga rename<cr>", "Rename symbol" },
		}
})
