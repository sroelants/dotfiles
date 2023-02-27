local work = {
  path = "~/Notes",
  syntax = "markdown",
  ext = ".md",
  nested_syntaxes = {
    javascript = "javascript",
    typescript = "typescript"
  }
}

vim.g.vimwiki_listsyms = " -=≡✓"
vim.g.vimwiki_listsym_rejected = "✗"
vim.g.vimwiki_list = { work }

return { "vimwiki/vimwiki" }
