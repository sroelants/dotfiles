(import-macros {: let!} :macros.variable-macros)

(local which-key (require :which-key))
(λ key [tbl prop] [(. tbl prop) prop])


;; Shorthand for setting keymaps
(local map vim.api.nvim_set_keymap)
(fn inoremap [key cmd] (map "i" key cmd { :noremap true}))
(fn nnoremap [key cmd] (map "n" key cmd { :noremap true}))
(fn vnoremap [key cmd] (map "v" key cmd { :noremap true}))
(fn noremap [key cmd] (map "" key cmd { :noremap true}))

;; set leader key
(let! mapleader " ")
(let! maplocalleader ",")

;; easier command line mode + 
(which-key.register {";" [":" "vim-ex"]})

;; floating menu
(λ set-cmdline-keys! []
  (which-key.register {":" ["<cmd>FineCmdline<CR>" "vim-ex"]}))

;; Navigation
;;; Disable arrow keys
(noremap "<Up>" "<Nop>")
(noremap "<Down>" "<Nop>")
(noremap "<Left>" "<Nop>")
(noremap "<Right>" "<Nop>")

(nnoremap "j" "gj")
(nnoremap "k" "gk")
(noremap "H" "^")
(noremap "L" "$")
(vnoremap "H" "^")
(vnoremap "L" "$")

(noremap "<C-h>" "<C-w>h")
(noremap "<C-j>" "<C-w>j")
(noremap "<C-k>" "<C-w>k")
(noremap "<C-l>" "<C-w>l")

(noremap "<Esc><Esc>" ":w<CR>")

(which-key.register {})

(which-key.register {
                     ;; NvimTree
                     "<F1>" ["<cmd>NvimTreeToggle<CR>" "nvimtree"]

                     "<leader><space>" ["<cmd>Telescope live_grep<cr>" "Live grep"]
                     "<leader><tab>" ["<c-w><c-w>" "next split"]
                     "<leader>:" ["<cmd>Telescope commands<CR>" "M-x"]

                     ;; Git 
                     "<leader>g" {:name "Git" 
                                  :g ["<cmd>Neogit<CR>" "Open neogit"]
                                  :c ["<cmd>Telescope git_commits<CR>" "Search commits"]
                                  :f ["<cmd>Telescope git_files<CR>" "Search files"]
                                  :b ["<cmd>Telescope git_branches<CR>" "Search branches"]
                                  :s ["<cmd>Telescope git_stash<CR>" "Search stash"]}
                                   ;:d ["<cmd>GDiff<cr>" "Diffsplit with index"]
                                   ;:B ["<cmd>Gbrowse<cr>" "Open in browser"]
                                   ;:l ["<cmd>FloatermNew --autoclose=2 lazygit<cr>" "Lazygit"]

                     ;; Fuzzy finder
                     "<leader>f" {:name "Find"
                                  "<leader>" ["<cmd>Telescope live_grep<cr>" "Live grep"]
                                  :f ["<cmd>Telescope find_files<cr>" "Search files"]
                                  :b ["<cmd>Telescope find_buffers<cr>" "Search buffers"]
                                  :m ["<cmd>Telescope man_pages<cr>" "Search manpages"]
                                  :r ["<cmd>Telescope oldfiles<cr>" "Search recent files"]
                                  :g ["<cmd>Telescope git_files<cr>" "Search git files"]
                                  :t ["<cmd>Telescope help_tags<cr>" "Search help tags"]
                                  :e ["<cmd>Telescope emoji<cr>" "Search emoji"]
                                  :p ["<cmd>lua require('telescope').extensions.project.project({ display_type = 'full' })<CR>" "Projects"]}

                     ;; Terminal
                     "<leader>t" {:name "Terminal"
                                  :t ["<cmd>FloatermNew --autoclose=2<cr>" "terminal"]
                                  :n ["<cmd>FloatermNew --autoclose=2 node<cr>" "Node"]
                                  :g ["<cmd>FloatermNew --autoclose=2 lazygit<cr>" "Lazygit"]
                                  :h ["<cmd>FloatermNew --autoclose=2 htop<cr>" "htop"]}

                     ;; Viwmiki
                     "<leader>w" {:name "Wiki"
                                  :t ["<cmd>VimwikiMakeDiaryNote<cr>" "Today's diary"]
                                  :T ["<cmd>vs<cr><cmd>VimwikiMakeDiaryNote<cr>" "Today's diary (vsplit)"]
                                  :d ["<cmd>VimwikiDiaryIndex<cr>" "Diary index"]
                                  :i ["<cmd>VimwikiIndex<cr>" "Wiki index"]}

                     ;; Config
                     "<leader>c" {:name "Config"
                                  :l ["<cmd>edit ~/.hledger.journal<cr>" "Ledger "]
                                  :I ["<cmd>edit ~/.config/i3/config<cr>" "i3 "]
                                  :f ["<cmd>edit ~/.config/fishfile<cr>" "fishfile "]}})

;; Conjure
(which-key.register {"<localleader>E" "eval motion"
                     "<localleader>e" "execute"
                     "<localleader>l" "log"
                     "<localleader>r" "reset"
                     "<localleader>t" "test"})

;; Lsp
(λ set-lsp-keys! [bufnr]
  (which-key.register {"<leader>l" {:name "lsp"
                                    ; inspect
                                    "d" (key vim.lsp.buf :definition)
                                    "D" (key vim.lsp.buf :declaration)
                                    "i" (key vim.lsp.buf :implementation)
                                    "t" (key vim.lsp.buf :type_definition)
                                    "s" (key vim.lsp.buf :signature_help)
                                    "h" (key vim.lsp.buf :hover)
                                    "r" (key vim.lsp.buf :references)
                                    ; diagnostic
                                    "k" (key vim.diagnostic :goto_prev)
                                    "j" (key vim.diagnostic :goto_next)
                                    "w" (key vim.diagnostic :open_float)
                                    "q" (key vim.diagnostic :setloclist)
                                    "t" ["<cmd>TroubleToggle document_diagnostics<cr>" "Trouble diagnostics (file)"]
                                    "T" ["<cmd>TroubleToggle workspace_diagnostics<cr>" "Trouble diagnostics (workspace)"]
                                    ; code
                                    "r" (key vim.lsp.buf :rename)
                                    "a" (key vim.lsp.buf :code_action)
                                    "f" (key vim.lsp.buf :formatting)}
                       "<leader>W" {:name "lsp workspace"
                                    "a" (key vim.lsp.buf :add_workspace_folder)
                                    "r" (key vim.lsp.buf :remove_workspace_folder)
                                    "l" [(fn [] (print (vim.inspect (vim.lsp.buf.list_workspace_folders))))
                                         "list_workspace_folders"]}
                       ; reassgn some builtin mappings
                       "K"  (key vim.lsp.buf :hover)
                       "gd" (key vim.lsp.buf :definition)
                       "gD" (key vim.lsp.buf :declaration)}
               ; only for one buffer
               {:buffer bufnr}))



{: set-lsp-keys!
 : set-cmdline-keys!}
