vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

-- Do not forget to use the on_attach function
-- require 'lspconfig'.myserver.setup { handlers=handlers }

-- To instead override globally
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Typescript
require('lspconfig').tsserver.setup{}

-- Rust
require('lspconfig').rust_analyzer.setup{}

-- Haskell
require('lspconfig').hls.setup{}

-- Elixir
require('lspconfig').elixirls.setup{
	cmd = { "/usr/bin/elixir-ls"}
}

-- Lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
require'lspconfig'.sumneko_lua.setup{
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim', 'use'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Astro
require'lspconfig'.astro.setup{}

vim.cmd([[
	" Auto-format *.ts, *.tsx files prior to saving them
	autocmd BufWritePre *.ts  lua vim.lsp.buf.formatting_sync(nil, 1000)
	autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 1000)

	" Auto-format *.rs files prior to saving them
	autocmd BufWritePre *.rs  lua vim.lsp.buf.formatting_sync(nil, 1000)

	" Auto-format *.hs files prior to saving them
	autocmd BufWritePre *.hs  lua vim.lsp.buf.formatting_sync(nil, 1000)

	" Auto-format *.purs files prior to saving them
	autocmd BufWritePre *.purs  lua vim.lsp.buf.formatting_sync(nil, 1000)

  autocmd BufRead,BufEnter *.astro set filetype=astro
]])
