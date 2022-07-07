local _2afile_2a = ".config/nvim/fnl/mappings.fnl"
local _2amodule_name_2a = "mappings"
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
local nvim = require("aniseed.nvim")
do end (_2amodule_locals_2a)["nvim"] = nvim
local function noremap(mode, from, to)
  return nvim.set_keymap(mode, from, to, {noremap = true})
end
_2amodule_locals_2a["noremap"] = noremap
noremap("n", "<space>", "<nop>", {noremap = true})
nvim.g.mapleader = " "
nvim.g.maplocalleader = ","
noremap("n", "<up>", "<nop>")
noremap("n", "<down>", "<nop>")
noremap("n", "<left>", "<nop>")
noremap("n", "<right>", "<nop>")
noremap("i", "<up>", "<nop>")
noremap("i", "<down>", "<nop>")
noremap("i", "<left>", "<nop>")
noremap("i", "<right>", "<nop>")
noremap("n", "j", "gj")
noremap("n", "k", "gk")
noremap("n", "H", "^")
noremap("n", "L", "$")
noremap("v", "L", "$")
noremap("n", "<c-h>", "<c-w>h")
noremap("n", "<c-j>", "<c-w>j")
noremap("n", "<c-k>", "<c-w>k")
noremap("n", "<c-l>", "<c-w>l")
noremap("i", "<c-h>", "<c-w>h")
noremap("i", "<c-j>", "<c-w>j")
noremap("i", "<c-k>", "<c-w>k")
noremap("i", "<c-l>", "<c-w>l")
noremap("v", "<c-h>", "<c-w>h")
noremap("v", "<c-j>", "<c-w>j")
noremap("v", "<c-k>", "<c-w>k")
noremap("v", "<c-l>", "<c-w>l")
noremap("i", "#", "X<bs>#")
noremap("n", "<leader<tab>", "<c-w><c-w>")
noremap("n", "<esc><esc>", "<cmd>w<cr>")
noremap("i", "jj", "<esc>")
noremap("n", "<backspace>", "<c-o>")
noremap("n", "<f1>", "<cmd>NERDTreeToggle<cr>")
return noremap("n", "<leader>C", "<cmd>vnew | r !coffee -pb # <cr><esc><cmd>set filetype=javascript<cr>")