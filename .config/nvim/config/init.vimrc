call plug#begin('~/.local/share/nvim/plugged')
" ---------------------------
" General purpose plugins ---
" ---------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-eunuch'
Plug 'raimondi/delimitmate'
" Plug 'bling/vim-bufferline'
Plug 'mkitt/tabline.vim'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'inkarkat/vim-SyntaxRange'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'liuchengxu/vim-which-key'
Plug 'airblade/vim-rooter'


"------------------------------------------------------------------------------
" Git plugins
"------------------------------------------------------------------------------
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'stsewd/fzf-checkout.vim'


" -------------------
"  Organizational ---
"  -------------------
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'
Plug 'alok/notational-fzf-vim'

" -----------------
" Look and feel ---
" -----------------
" Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'fszymanski/deoplete-emoji'
Plug 'mhinz/vim-startify'
Plug 'dylanaraps/wal.vim'
Plug 'ryanoasis/vim-devicons'


Plug 'andreypopp/vim-colors-plain'
Plug 'huyvohcmc/atlas.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'hardselius/warlock'
Plug 'axvr/photon.vim'
Plug 'danishprakash/vim-yami'

" ------------------------------- 
" Code quality and ergonomics ---
" -------------------------------
"  Linting
" Plug 'w0rp/ale'
" Syntax highlighting
" Plug 'scrooloose/syntastic'
"Autocomplete
" Plug 'shougo/deoplete.nvim'

" Prettier (for JS, CSS, HTML)
Plug 'prettier/vim-prettier', {'do': 'yarn install'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" ------------------------------
" Language specific plugins ----
" ------------------------------
Plug 'sheerun/vim-polyglot'

" Jinja templating
Plug 'glench/vim-jinja2-syntax'

" HTML
Plug 'mattn/emmet-vim'

" Javascript / JSX / Typescript
" Plug 'pangloss/vim-javascript'
" Plug 'mxw/vim-jsx'
" Plug 'elzr/vim-json'
" Plug 'leafgarland/typescript-vim'
" Plug 'ianks/vim-tsx'
" Plug 'mhartington/nvim-typescript'

" Coc 
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

" Python
Plug 'nvie/vim-flake8'
Plug 'klen/python-mode'


" Clojure / ClojureScript
Plug 'tpope/vim-fireplace'
Plug 'eraserhd/parinfer-rust', {'do': 'cargo build --release'}
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'markwoodhall/vim-figwheel'

Plug 'sroelants/clojure-fancify-symbols.vim'

" Haskell
Plug 'Twinside/vim-haskellConceal'

" Purescript
Plug 'purescript-contrib/purescript-vim'
Plug 'FrigoEU/psc-ide-vim'

" Nand2Tetris
Plug 'sevko/vim-nand2tetris-syntax'

" Ledger
Plug 'ledger/vim-ledger'

" Dhall
Plug 'vmchale/dhall-vim'

call plug#end()
