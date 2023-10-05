return {
  --
  -- Mason is in charge for installing any number of LSP servers, linters, 
  -- formatters, etc...
  --
  {
    "williamboman/mason.nvim",
    config = function() require("mason").setup() end,
    cmd = "Mason"
  },

  --
  -- LspConfig is a repository of preset configurations for almost all LSPs out
  -- there in the wild.
  -- Because it makes no assumptions on where the LSP is coming from (manual 
  -- install, Mason, etc...), we need to manually set up each Lsp plugin with 
  -- the config provided by LspConfig. Enter Mason-lspconfig...
  --
  {
    "neovim/nvim-lspconfig",
    dependencies = { "mason.nvim", "mason-lspconfig.nvim", "neodev.nvim" }
  },

  --
  -- Mason-lspconfig bridges the gap between mason and lspconfig (no 
  -- kidding...), so it deals with setting up the Lsps installed through mason
  -- with the correct config from LspConfig for us.
  --
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
          ensure_installed = {
            "rust_analyzer@nightly",
            "tsserver",
            "lua_ls",
            "ruby_ls"
          }
      })

      -- Call the default setup with no options for ever install lsp
      -- NOTE: Don't set up lsp's manually elsewhere in the config, 
      -- because they will get started twice
      require("mason-lspconfig").setup_handlers({
          function (server_name)
            require("lspconfig")[server_name].setup({})
          end

          -- Any custom configuration can be done by setting explicit 
          -- entries, e.g.
          -- ["rust_analyzer"] = function() 
          --   require("rust_tools").setup({ ... }) 
          -- end
      })
    end,
    dependencies = { "mason.nvim" }
  },

  --
  -- Null-LS allows us to expose any number of "servers" that can communicate 
  -- through the native LSP, even when there's not actually a language server 
  -- (get it? null-language-server?). Think linters, debuggers formatters, 
  -- etc...
  --
  -- Same as with Mason and Mason-lspconfig, there's no assumption between null-ls
  -- and the linters installed through Mason, ideally we'd want a bridge layer here
  -- as well.
  --
  {
    "jose-elias-alvarez/null-ls.nvim",
  },

  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },

    config = function()
      require("mason-null-ls").setup({
        ensure_installed = { "prettier", "rustfmt" },
        automatic_setup = true,
        handlers = {},
      })

      require("null-ls").setup()
      -- require("mason-null-ls").setup_handlers({})
    end
  },

  {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    config = function()
        require("lspsaga").setup({})
    end,
    dependencies = { {"nvim-tree/nvim-web-devicons"} }
  }
}
