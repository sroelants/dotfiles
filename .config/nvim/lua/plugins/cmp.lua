return {
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")

			local config = {
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered()
				},

  			mapping = cmp.mapping.preset.insert({
    			['<C-b>'] = cmp.mapping.scroll_docs(-4),
    			['<C-f>'] = cmp.mapping.scroll_docs(4),
    			['<C-Space>'] = cmp.mapping.complete(),
    			['<C-e>'] = cmp.mapping.abort(),
    			['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  			}),

				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "cmdline" },
					{ name = "buffer" },
					{ name = "path" },
					{ name = "nvim-lua" },
					{ name = "nvim-lsp-signature-help" },
				})
			}

			cmp.setup(config)

			-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline({ '/', '?' }, {
  			mapping = cmp.mapping.preset.cmdline(),
  			sources = {
    			{ name = 'buffer' }
  			}
			})

			-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
			cmp.setup.cmdline(':', {
  			mapping = cmp.mapping.preset.cmdline(),
  			sources = cmp.config.sources({
    			{ name = 'path' }
  			}, {
    			{ name = 'cmdline' }
  			})
			})

			-- Set up lspconfig.
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require('lspconfig').tsserver.setup {
  			capabilities = capabilities
			}
			require('lspconfig').lua_ls.setup {
  			capabilities = capabilities
			}
			require('lspconfig').rust_analyzer.setup {
  			capabilities = capabilities
			}
		end,
	},

	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/cmp-nvim-lua" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-nvim-lsp-signature-help" },
	{ "hrsh7th/cmp-path" },
}
