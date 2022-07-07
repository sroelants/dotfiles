(module general
  {autoload {nvim aniseed.nvim}})

(set nvim.o.modelines 0)            ; Unset modelines, for security reasons
(set nvim.o.compatible false)

(set nvim.o.splitright true)         ; Open vertical splits on the right

;; Tab behavior
(set nvim.o.tabstop 2)
(set nvim.o.shiftwidth 2)
(set nvim.o.expandtab true)
(set nvim.o.softtabstop 2)

;; Sanity and embelishments
(set nvim.o.encoding "utf-8")
(set nvim.o.scrolloff 3)            ; Scroll when cursor is 3 lines from the screen edge
(set nvim.o.autoindent true)        ; Automatically place indents on newlines
(set nvim.o.showmode false)         ; Don't display mode in the bottom line
(set nvim.o.showcmd true)           ; Show command that is currently being formed
(set nvim.o.hidden true)            ; Abandoned buffers are hidden, rather than unloaded
(set nvim.o.wildmenu true)          ; Command completion inside vim command mode
(set nvim.o.wildmode "list:longest")
(set nvim.o.visualbell true)
(set nvim.o.cursorline true)        ; Highlight the line the cursor is on
(set nvim.o.ttyfast true)           ; Basically speeds up redrawing. Good for big vimdiffs
(set nvim.o.ruler true)             ; Show line and column number at the bottom
(set nvim.o.backspace "indent,eol,start") ; Backspace through everything
(set nvim.o.laststatus 2)           ; Always show a status line
(set nvim.o.nu true)                ; Show line numbers
(set nvim.o.rnu true)               ; Show relative line numbers
(set nvim.o.undofile true)          ; Keep undo history in a file, available after closing
(set nvim.o.clipboard "unnamedplus"); Use system clipboard by default

;; Search/Replace
(set nvim.o.ignorecase true)        ; Case-insensitive search
(set nvim.o.smartcase true)         ; all-lowercase case-insensitive, caps case-sensitive
(set nvim.o.gdefault true)          ; Search/replace commands are global by default
(set nvim.o.incsearch true)         ; As-you-type search results
(set nvim.o.showmatch true)         ; As you type a bracket, the matching bracket is highlighted
(set nvim.o.hlsearch true)          ; Highlight all search matches

;; Text wrapping handling)
(set nvim.o.wrap true)
(set nvim.o.textwidth 80)           ; Wrap text at 80 characters
(set nvim.o.formatoptions "qrn1")
(set nvim.o.colorcolumn "80")       ; Draw colored column marker at 80 characters

;; Needed for nvim-compe)
(set nvim.o.completeopt "menuone,noselect,noinsert")

;; Color scheme
(set nvim.o.termguicolors true)
(set nvim.o.background "dark")

(vim.cmd "syntax on")
(vim.cmd "colorscheme zenbones")

(set nvim.o.timeoutlen 100)

; (set vim.g.rooter_patterns ".git")

;; Leader/localleader
; (set vim.g.mapleader "<Space>")
; (set vim.g.localleader ",")
