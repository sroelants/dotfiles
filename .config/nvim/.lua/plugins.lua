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

	-- Git
	use 'lewis6991/gitsigns.nvim'
	use 'tpope/vim-fugitive'

	-- Organizational
	use 'vimwiki/vimwiki'

	-- Look and feel

	use 'junegunn/rainbow_parentheses.vim'
	use 'mhinz/vim-startify'
	use 'ryanoasis/vim-devicons'
	use 'hoob3rt/lualine.nvim'

	-- Colorschemes
	use 'andreypopp/vim-colors-plain'
	use 'axvr/photon.vim'
	use 'danishprakash/vim-yami'
	use 'hardselius/warlock'
	use 'huyvohcmc/atlas.vim'
	use 'morhetz/gruvbox'
	use 'shaunsingh/nord.nvim'
	use 'sainnhe/everforest'

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
end)
