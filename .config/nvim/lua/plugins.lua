return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- General purpose
	use 'airblade/vim-rooter'
	use 'christoomey/vim-tmux-navigator'
	use 'inkarkat/vim-SyntaxRange'
	use 'raimondi/delimitmate'
	use 'scrooloose/nerdtree'
	use 'tpope/vim-commentary'
	use 'tpope/vim-eunuch'
	use 'tpope/vim-markdown'
	use 'tpope/vim-obsession'
	use 'tpope/vim-repeat'
	use 'tpope/vim-rhubarb'
	use 'tpope/vim-surround'
	use 'lukas-reineke/indent-blankline.nvim'

	-- Language Server Protocol
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'

	-- Telescope
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'xiyaowong/telescope-emoji.nvim'
	use 'nvim-telescope/telescope-ui-select.nvim'

	-- Git
	use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'

	-- Organizational
	use 'vimwiki/vimwiki'

	-- Look and feel

	use 'junegunn/rainbow_parentheses.vim'
	use 'mhinz/vim-startify'
	use 'ryanoasis/vim-devicons'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

	-- Colorschemes
	use 'andreypopp/vim-colors-plain'
	use 'axvr/photon.vim'
	use 'danishprakash/vim-yami'
	use 'hardselius/warlock'
	use 'huyvohcmc/atlas.vim'
	use 'morhetz/gruvbox'
	use 'sainnhe/gruvbox-material'
	use 'shaunsingh/nord.nvim'
	use 'sainnhe/everforest'
	use "nikolvs/vim-sunbather"
	use 'sjl/badwolf'
	use 'folke/lsp-colors.nvim'

	-- Code quality & Ergonomics

	-- Prettier (for JS, CSS, HTML)
	use 'prettier/vim-prettier'

	use 'nvim-treesitter/nvim-treesitter'

	-- Language specific plugins
	use 'sheerun/vim-polyglot'

	-- Jinja templating
	use 'glench/vim-jinja2-syntax'

	-- HTML
	use 'mattn/emmet-vim'

	-- Python
	use 'nvie/vim-flake8'
	use 'klen/python-mode'

	-- Clojure / ClojureScript
	use 'tpope/vim-fireplace'
	use 'eraserhd/parinfer-rust'
	use 'guns/vim-sexp'
	use 'tpope/vim-sexp-mappings-for-regular-people'
	-- use 'markwoodhall/vim-figwheel'
	use 'sroelants/clojure-fancify-symbols.vim'

	-- Haskell
	use 'Twinside/vim-haskellConceal'

	-- Purescript
	use 'purescript-contrib/purescript-vim'
	use 'FrigoEU/psc-ide-vim'

	-- Nand2Tetris
	use 'sevko/vim-nand2tetris-syntax'

	-- Ledger
	use 'ledger/vim-ledger'

	-- Fennel
	use 'Olical/aniseed'
	use 'Olical/conjure'

	-- Neuron.nvim
	use "oberblastmeister/neuron.nvim"

	-- Rust
use "simrat39/rust-tools.nvim"

-- Which key
use "folke/which-key.nvim"

use 'voldikss/vim-floaterm'

use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  config = function()
    require("trouble").setup {
    }
  end
}

use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
    }
  end
}

use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
    }
  end
}

use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {
            enabled = true
        }
    end,
    requires = "nvim-treesitter/nvim-treesitter"
}

use {
    "mcchrish/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    requires = "rktjmp/lush.nvim"
}


end)
