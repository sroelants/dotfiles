local lspconfig = require("lspconfig")

-- javascript/typescript
lspconfig.tsserver.setup({})

-- rust
lspconfig.rust_analyzer.setup({})

-- lua
lspconfig.sumneko_lua.setup({})

-- elixir
lspconfig.elixirls.setup({
		cmd = { "/home/sam/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" }
	})
