local _2afile_2a = ".config/nvim/fnl/general.fnl"
local _2amodule_name_2a = "general"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("aniseed.autoload")).autoload
local nvim = autoload("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
nvim.o.modelines = 0
nvim.o.compatible = false
nvim.o.splitright = true
nvim.o.tabstop = 2
nvim.o.shiftwidth = 2
nvim.o.expandtab = true
nvim.o.softtabstop = 2
nvim.o.encoding = "utf-8"
nvim.o.scrolloff = 3
nvim.o.autoindent = true
nvim.o.showmode = false
nvim.o.showcmd = true
nvim.o.hidden = true
nvim.o.wildmenu = true
nvim.o.wildmode = "list:longest"
nvim.o.visualbell = true
nvim.o.cursorline = true
nvim.o.ttyfast = true
nvim.o.ruler = true
nvim.o.backspace = "indent,eol,start"
nvim.o.laststatus = 2
nvim.o.nu = true
nvim.o.rnu = true
nvim.o.undofile = true
nvim.o.clipboard = "unnamedplus"
nvim.o.ignorecase = true
nvim.o.smartcase = true
nvim.o.gdefault = true
nvim.o.incsearch = true
nvim.o.showmatch = true
nvim.o.hlsearch = true
nvim.o.wrap = true
nvim.o.textwidth = 80
nvim.o.formatoptions = "qrn1"
nvim.o.colorcolumn = "80"
nvim.o.completeopt = "menuone,noselect,noinsert"
nvim.o.termguicolors = true
nvim.o.background = "dark"
vim.cmd("syntax on")
vim.cmd("colorscheme zenbones")
nvim.o.timeoutlen = 100
return nil