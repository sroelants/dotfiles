call plug#begin('~/.local/share/nvim/plugged')
" ---------------------------
" General purpose plugins ---
" ---------------------------
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'raimondi/delimitmate'
" Plug 'bling/vim-bufferline'
Plug 'mkitt/tabline.vim'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'airblade/vim-gitgutter'
Plug 'inkarkat/vim-SyntaxRange'

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
Plug 'danishprakash/vim-yami'
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
Plug 'elzr/vim-json'
" Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
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
let g:clojure_fancify_extended=1

" Haskell
Plug 'Twinside/vim-haskellConceal'

" Purescript
Plug 'purescript-contrib/purescript-vim'
Plug 'FrigoEU/psc-ide-vim'

call plug#end()

" Scheme / Racket
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" --------------------------
"  Plugin configurations ---
" --------------------------

" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'clojure', 'javascript', 'haskell', 'typescript']


" CoC
" Some servers have issues with backup files
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

set updatetime=300
set shortmess+=c
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" NERDTree
map <F1> :NERDTreeToggle<CR>

" Scratch.vim
map <F2> :Scratch<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='minimalist'
" let g:airline_theme='gruvbox'

" Fzf
set  runtimepath+=/usr/local/opt/fzf

nnoremap <silent>ff :FZF<cr>
nnoremap <silent>fb :Buffers<cr>

nnoremap <silent><leader>rg :Rg<cr>

" let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.5 } }
" let g:fzf_preview_window = 'right:60%'

" Rainbow parentheses
" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" Goyo + Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Startify
" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]

" Fancy custom header
let g:startify_custom_header = [
  \ "  ",
  \ '   ╻ ╻   ╻   ┏┳┓',
  \ '   ┃┏┛   ┃   ┃┃┃',
  \ '   ┗┛    ╹   ╹ ╹',
  \ '   ',
  \ ]


" Vimwiki
let g:vimwiki_listsyms = ' -=≡✓'
let g:vimwiki_listsym_rejected = '✗'

" vimwiki 
let wiki_1 = {}
let wiki_1.path = '~/Notes/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.nested_syntaxes = {'javascript': 'javascript',
  \'typescript': 'typescript'}
"
let wiki_2 = {}
let wiki_2.path = '~/Notes/personal/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'
let wiki_2.nested_syntaxes = {'javascript': 'javascript'}

let g:vimwiki_list = [wiki_1, wiki_2]



" Calendar-vim
let g:calendar_options = 'nonu nornu'
nnoremap <leader>c :Calendar<CR>

" FZF Notational velocity
let g:nv_search_paths = ['~/Notes']
nnoremap <silent>fn :NV<cr>

" Prettier
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1

" Gitgutter
" Use fontawesome icons as signs
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''


" Glsl highlighting in js template strings
for language in ['glsl']
  call SyntaxRange#Include(language.'`', '`', language, 'String')
endfor

" Devicons

let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:webdevicons_conceal_nerdtree_brackets = 1


" --------------------
" General settings ---
" --------------------
set modelines=0         "Unset modelines, for security reasons
set nocompatible
filetype plugin on

" Tab behavior
set tabstop=2           "Width of a tab
set shiftwidth=2        "Indentation width (using '>' and '<'
set expandtab           "Replace tabs with spaces
set softtabstop=2       "Bacspace through expanded tabs

" Sanity and embelishments
set encoding=utf-8
set scrolloff=3         "Scroll when cursor is 3 lines from the screen edge.
set autoindent          "Automatically place indents on newlines.
set showmode            "Display mode in the bottom line.
set showcmd             "Show command that is currently being formed.
set hidden              "Abandoned buffers are hidden, rather than unloaded.
set wildmenu            "Command completion inside vim command mode.
set wildmode=list:longest   
set visualbell
set cursorline          "Highlight the line the cursor is on.
set ttyfast             "Basically speeds up redrawing. Good for big vimdiffs. 
set ruler               "Show line and column number at the bottom. 
set backspace=indent,eol,start  " Backspace through everything
set laststatus=2        "Always show a status line.         
set nu rnu              "Show hybrid relative linenumbers.
set undofile            "Keep undo history in a file, available after closing.


"Improved searching/highlighting

"Use standard perl/python regexes
nnoremap / /\v
vnoremap / /\v
"Case insensitive search
set ignorecase          
set smartcase           "all-lowercase = case-insensitive, caps = case-sensitive
set gdefault            "Default search and replace commands act globally.
set incsearch           "As-you-type search results
set showmatch           "As you type a bracket, the matching bracket is highlighted.
set hlsearch            "Highlight all search matches

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"Text wrapping handling
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80

"Show some invisible characters.
set list
set listchars=tab:▸\ ,eol:¬

"Turn off arrow navigation...
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
"Turn off arrow navigation in insert mode as well.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
"Moving up and down screen line rather than file line
nnoremap j gj
nnoremap k gk
noremap H ^
noremap L $

" More intuitive movement across windows.
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l


"Backups
" set backup                        " enable backups
set noswapfile                    " Archaic swapfile behavior
set undodir=~/.vim/tmp/undo//     " undo files
set backupdir=~/.vim/tmp/backup// " backups
set directory=~/.vim/tmp/swap//   " swap files
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Color scheme
syntax on
set background=dark
set termguicolors
set t_Co=256
" colorscheme nord
colorscheme gruvbox
" colorscheme warlock
" colorscheme plain
" colorscheme photon
" colorscheme yami

" ------------------------
"  Coc Linting colors -----
"  -----------------------

" -----------------
"  Key bindings ---
" -----------------
let mapleader = ","

" Stop it, hash key.
inoremap # X<BS>#

" Map <space> to togge folds:
nnoremap <space> zA<CR>

" Map <leader><tab> to move to next split
nnoremap <leader><tab> <C-w><C-w>

" Use double-<space> to save the file
nnoremap <space><space> :w<cr>

" Remap jj to Esc.
inoremap jj <Esc>

" Toggle paste
nnoremap <F6> :set paste!<cr>

" Escape terminal mode (nvim)
tnoremap <Esc> <C-\><C-n>

" Edit and source .vimrc
nnoremap <silent> <leader>ev :e ~/.vimrc<CR>
nnoremap <silent> <leader>sv :so ~/.vimrc<CR>

"Remove search highlighting
nnoremap <leader><space> :noh<cr>   

"Pressing tab jumps to matching bracket 
nnoremap <tab> %
vnoremap <tab> %

" Backspace in normal mode goes to previous buffer
nnoremap <silent><backspace> :bp<CR>

" No need for extra "-- INSERT --" mode message
set noshowmode
