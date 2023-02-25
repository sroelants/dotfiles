local lspconfig = require("lspconfig")

-- javascript/typescript
lspconfig.tsserver.setup({})

-- rust
lspconfig.rust_analyzer.setup({})

-- lua
lspconfig.lua_ls.setup({})

-- elixir
lspconfig.elixirls.setup({
		cmd = { "/home/sam/.local/share/nvim/mason/packages/elixir-ls/language_server.sh" }
	})
