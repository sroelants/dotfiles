local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

-- Need to set these before loading Lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = ","


require("lazy").setup("plugins")

require("options")
require("colors")
require("lsp")
require("keybindings")

require("notes")
