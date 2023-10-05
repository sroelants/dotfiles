return {
  -- Colorschemes
  "sainnhe/gruvbox-material",
  "nyoom-engineering/oxocarbon.nvim",

  -- Dev icons
  "nvim-tree/nvim-web-devicons",

  -- Seamlessly navigate between tmux panes and vim windows
  "christoomey/vim-tmux-navigator",

  -- Basic language support for most languages
  "sheerun/vim-polyglot",

  -- Indentation guides
  "lukas-reineke/indent-blankline.nvim",

  -- Smart comment/uncomment commands
  { "numToStr/Comment.nvim",
    config = function() require("Comment").setup() end
  },

  -- Improved Lua implementation of tpope's vim-surround
  {
      "kylechui/nvim-surround",
      config = function() require("nvim-surround").setup() end
  },

  -- Git indicators in the margin to track changes
  {
    "lewis6991/gitsigns.nvim",
    config = function() require("gitsigns").setup({}) end
  },

  -- Magit for neovim
  {
    'TimUntersberger/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'sindrets/diffview.nvim',
      'ibhagwan/fzf-lua'
    },
    config = true
  },

  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Lsp loading spinner
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    config = function() require("fidget").setup({}) end,
  },

  -- Neovim development
  {
    "folke/neodev.nvim",
    config = function() require("neodev").setup({}) end,
  },

  -- Support for kmonad configuration language (.kbd files)
  "kmonad/kmonad-vim",

  -- Context-dependent comment strings in typescript/tsx.
  -- Not sure if it actually works?
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("nvim-treesitter.configs").setup({
        context_commentstring = {
          enable = true
        }
      })
    end
  },

  -- ledger/hledger
  "ledger/vim-ledger",
  "anekos/hledger-vim",

  { 'kaarmu/typst.vim',
    ft = 'typst',
    lazy=false,
  }
}
