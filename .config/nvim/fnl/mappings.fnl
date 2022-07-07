(module mappings
  {require {nvim aniseed.nvim}})

(defn- noremap [mode from to]
  "Sets a mapping with {:noremap true}."
  (nvim.set_keymap mode from to {:noremap true}))

;; Generic mapping configuration.
(noremap :n :<space> :<nop> {:noremap true})
(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

;; Disable arrow navigation in normal mode
(noremap :n :<up> :<nop>)
(noremap :n :<down> :<nop>)
(noremap :n :<left> :<nop>)
(noremap :n :<right> :<nop>)

;; Disable arrow navigation in insert mode
(noremap :i :<up> :<nop>)
(noremap :i :<down> :<nop>)
(noremap :i :<left> :<nop>)
(noremap :i :<right> :<nop>)

;; Move up and down screen line rather than file line
(noremap :n :j :gj)
(noremap :n :k :gk)
(noremap :n :H :^)
(noremap :n :L :$)
(noremap :v :L :$)

;; More intuitive movement across windows
(noremap :n :<c-h> :<c-w>h)
(noremap :n :<c-j> :<c-w>j)
(noremap :n :<c-k> :<c-w>k)
(noremap :n :<c-l> :<c-w>l)

(noremap :i :<c-h> :<c-w>h)
(noremap :i :<c-j> :<c-w>j)
(noremap :i :<c-k> :<c-w>k)
(noremap :i :<c-l> :<c-w>l)

(noremap :v :<c-h> :<c-w>h)
(noremap :v :<c-j> :<c-w>j)
(noremap :v :<c-k> :<c-w>k)
(noremap :v :<c-l> :<c-w>l)

;; Stop it, hash key
(noremap :i :# :X<bs>#)

;; Map <leader><tab> to move to next split
(noremap :n :<leader<tab> :<c-w><c-w>)

;; Use <esc><esc> to save a file
(noremap :n :<esc><esc> :<cmd>w<cr>)

;; Remap jj to <esc>
(noremap :i :jj :<esc>)

;; Backspace goes to previous buffer
(noremap :n :<backspace> :<c-o>)

;; Toggle NERDTree
(noremap :n :<f1> :<cmd>NERDTreeToggle<cr>)

;; Compile coffeescript in new split
(noremap :n :<leader>C "<cmd>vnew | r !coffee -pb # <cr><esc><cmd>set filetype=javascript<cr>")


;------------------------------------------------------------------------------
; Vimwiki
;------------------------------------------------------------------------------
; (noremap :n :<leader>wt :<cmd>vs<cr><cmd>VimwikiMakeDiaryNote<cr>)
; (noremap :n :<leader>wd :<cmd>vs<cr><cmd>VimwikiDiaryIndex<cr>)
; (noremap :n :<leader>wi :<cmd>vs<cr><cmd>VimwikiIndex<cr>)

;------------------------------------------------------------------------------
; Git
;------------------------------------------------------------------------------
; (noremap :n :<leader>gg :<cmd>Git<cr>)
; (noremap :n :<leader>gc "<cmd>Telescope git_commits<cr>")
; (noremap :n :<leader>gb "<cmd>Telescope git_branches<cr>")
; (noremap :n :<leader>gs "<cmd>Telescope git_stash<cr>")

;; Open in browser
; (noremap :n :<leader>gB :<cmd>Gbrowse<cr>)
; (noremap :v :<leader>gB :<cmd>Gbrowse<cr>)

;; Open in diffsplit
; (noremap :n :<leader>gd :<cmd>GDiff<cr>)

;------------------------------------------------------------------------------
; Telescope
;------------------------------------------------------------------------------
; (noremap :n :<leader><leader> "<cmd>Telescope live_grep<cr>")
; (noremap :n :<leader>ff "<cmd>Telescope find_files<cr>")
; (noremap :n :<leader>fg "<cmd>Telescope live_grep<cr>")
; (noremap :n :<leader>fb "<cmd>Telescope buffers<cr>")
; (noremap :n :<leader>fh "<cmd>Telescope help_tags<cr>")

;------------------------------------------------------------------------------
; LSP
;------------------------------------------------------------------------------
; (noremap :n :gd "<cmd>Telescope lsp_definitions<cr>")
; (noremap :n :ca "<cmd>Telescope lsp_code_actions<cr>")
; (noremap :n :K "<cmd>lua vim.lsp.buf.hover()<cr>")
; (noremap :n :gD "<cmd>Telescope lsp_implementations<cr>")
; (noremap :n :gh "<cmd>lua vim.lsp.buf.signature_help()<cr>")
; (noremap :n :gtd "<cmd>lua vim.lsp.buf.type_definitions()<cr>")
; (noremap :n :gr "<cmd>Telescope lsp_references<cr>")
; (noremap :n :gds "<cmd>Telescope lsp_document_symbols<cr>")
; (noremap :n :gdw "<cmd>Telescope lsp_workspace_symbols<cr>")
