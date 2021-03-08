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

" No need for extra "-- INSERT --" mode message
set noshowmode

" Use system clipboard by default
set clipboard=unnamedplus

set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

let g:clojure_fancify_extended=1

