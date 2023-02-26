-- Improve updatetime for quicker refresh and gitsigns
vim.opt.updatetime = 200
vim.opt.timeoutlen = 500

-- guicursor tweaks
--vim.opt.guicursor = "n-v-sm:block,i-c-ic-ve:ver25,r-cr-o:hor20"
vim.opt.guicursor = { 
	['n-v-sm'] = "block", 
	['i-c-ci-ve'] = "ver25",
  ['r-cr-o'] = "hor20"
}

-- use treesitter for folding
vim.opt.foldlevel = 100
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#fordexpr()"

-- Show regex differences in a split
vim.opt.inccommand = "split"

-- Fillchar setup (? Just copy-pasted this from nyoom)
vim.opt.fillchars = {
	eob = " ",
	horiz = "─",
	horizup = "┴",
	horizdown = "┬",
	vert = "│",
	vertleft = "┤",
	vertright = "├",
	verthoriz = "┼",
	fold = " ",
	diff = "─",
	msgsep = "‾",
	foldsep = "│",
	foldopen = "▾",
	foldclose = "▸"
}

vim.opt.list = true
vim.opt.listchars = {
	tab = "> ", 
	nbsp = "␣", 
	trail = "-", 
	space = " ", 
	eol = "↴"
}

-- Use clipboard outside Neovim
vim.opt.clipboard = "unnamedplus"

-- Enable mouse input
vim.opt.mouse = "a"

-- Disable swapfiles and enable undofiles
vim.opt.undofile = true
vim.opt.swapfile = false

-- UI-related options
vim.opt.ruler = false

-- Numbering (hybrind absolute/relative numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- Smart search (case insensitive until first occurrence of mixed case input)
vim.opt.smartcase = true

-- Case-insensitive search
vim.opt.ignorecase = true

-- Indentation rules
vim.opt.copyindent = true
vim.opt.smartindent = true
vim.opt.preserveindent = true

-- Indentation level
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- Expand tabs
vim.opt.expandtab = true

-- Enable concealing
vim.opt.conceallevel = 2

-- Enable cursorline/column
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

-- Automatic split locations
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Scroll-off (min amount of lines visible at bottom/top
vim.opt.scrolloff = 8

-- Completion options
vim.opt.completeopt = { "menu", "menuone", "preview", "noinsert" }

-- Show 80 character line
-- vim.opt.colorcolumn = "80"
