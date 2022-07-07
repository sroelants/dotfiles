vim.g.vimwiki_listsyms = ' -=≡✓'
vim.g.vimwiki_listsym_rejected = '✗'

local work = {
  path = '~/Notes/vimwiki/',
  syntax = 'markdown',
  ext = '.md',
  nested_syntaxes = {
  javascript = 'javascript',
  typescript = 'typescript'}
}

local personal = {
  path = '~/Notes/personal/',
  syntax = 'markdown',
  ext = '.md',
  nested_syntaxes = {
    javascript = 'javascript',
    typescript = 'typescript'
  }
}

vim.g.vimwiki_list = { work, personal }

