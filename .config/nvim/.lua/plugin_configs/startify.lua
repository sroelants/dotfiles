vim.g.startify_files_number = 18        -- Number of most recent files
vim.g.startify_session_persistence = 1  -- Update session as you exit vim
vim.g.startify_session_autoload = 1     -- Autoload session if Session.vim is found
vim.g.startify_change_to_vcs_root = 1   -- Automatically cd to repository root
vim.g.startify_lists = {
  {type= 'dir'       , header= {'  Recent files'}},
  {type= 'bookmarks' , header= {'  Bookmarks'}},
  {type= 'sessions'  , header= {'  Saved Sessions'}}
}

vim.g.startify_bookmarks = {
  '~/src/kumu/products/kumu',
  '~/src/kumu/products/undercurrent',
  '~/src/kumu/products/weavr',
  '~/src/sticky-studio',
  '~/Notes',
}

vim.g.startify_custom_header = {
'',
'   ╻ ╻   ╻   ┏┳┓',
'   ┃┏┛   ┃   ┃┃┃',
'   ┗┛    ╹   ╹ ╹',
'   ',
}
