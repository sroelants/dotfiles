return {
  { 
    "williamboman/mason.nvim", 
    config = function() require("mason").setup() end, 
    cmd = "Mason" 
  },
  { 
    "williamboman/mason-lspconfig.nvim", 
    config = function() 
      require("mason-lspconfig").setup({
          automatic_installation = true
      }) 
    end, 
    dependencies = { "mason.nvim" } 
  },
  { 
    "neovim/nvim-lspconfig", 
    dependencies = { "mason.nvim", "mason-lspconfig.nvim", "neodev.nvim" } 
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("null-ls").setup() end
  }
}
