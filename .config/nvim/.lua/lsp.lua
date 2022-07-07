require('lspconfig').tsserver.setup{}
require('lspconfig').rls.setup{}
require('lspconfig').hls.setup{}

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
]])
