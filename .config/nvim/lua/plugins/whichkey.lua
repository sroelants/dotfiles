local wk = require("which-key")

vim.g.timeoutlen = 0

wk.setup {
  key_labels = {
    ["<space>"] = "SPC",
    ["<cr>"] = "RET",
    ["<tab>"] = "TAB",
    ["<Space>"] = "SPC",
    ["<CR>"] = "RET",
    ["<Tab>"] = "TAB",
  },
  layout = {
    spacing = 6, -- spacing between columns
    align = "center", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = {"<plug>", "<Plug>", "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  -- triggers = {"<leader>"},
}

wk.register({
    ["<Space>"] = { "<cmd>Telescope live_grep<cr>", "grep" },
    ["<tab>"] = {"<c-w><c-w>", "next split"},
    f = {
        name = "find",
        ["<leader>"] = { "<cmd>Telescope live_grep<cr>", "grep" },
        f = { "<cmd>Telescope find_files<cr>", "search files" },
        b = { "<cmd>Telescope find_buffers<cr>", "search buffers" },
        m = { "<cmd>Telescope man_pages<cr>", "man pages" },
        r = { "<cmd>Telescope oldfiles<cr>", "recent files" },
        g = { "<cmd>Telescope git_files<cr>", "git files" },
        h = { "<cmd>Telescope help_tags<cr>", "help tags" },
        e = { "<cmd>Telescope emoji<cr>", "help tags" },
    },

    g = {
        name = "git",
        g = { "<cmd>Git<cr>", "open fugitive"},
        c = { "<cmd>Telescope git_commits<cr>", "seach commits"},
        f = { "<cmd>Telescope git_files<cr>", "search files"},
        b = { "<cmd>Telescope git_branches<cr>", "search branches"},
        s = { "<cmd>Telescope git_stash<cr>", "search stash"},
        d = { "<cmd>GDiff<cr>", "diffsplit with index"},
        B = { "<cmd>:Gbrowse<cr>", "open in browser"},
        l = {"<cmd>FloatermNew --autoclose=2 lazygit<cr>", "lazygit"},
    },

    t = {
        name = "terminal",
        t = {"<cmd>FloatermNew --autoclose=2<cr>", "terminal"},
        n = {"<cmd>FloatermNew --autoclose=2 node<cr>", "node repl"},
        g = {"<cmd>FloatermNew --autoclose=2 lazygit<cr>", "lazygit"},
        h = {"<cmd>FloatermNew --autoclose=2 htop<cr>", "htop"},
    },

    l = {
        name = "lsp",
        d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "go to definition"},
        K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "show documentation"},
        h = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "signature help"},
        D = {"<cmd>Trouble lsp_definitions<cr>", "definitions"},
        r = {"<cmd>Trouble lsp_references<cr>", "references"},
        s = {"<cmd>lua vim.lsp.buf.document_symbol()<cr>", "document symbols"},
        a = {"<cmd>lua vim.lsp.buf.code_action()<cr>", "code actions"},
        t = {"<cmd>TroubleToggle document_diagnostics<cr>", "trouble diagnostics (file)"},
        T = {"<cmd>TroubleToggle workspace_diagnostics<cr>", "trouble diagnostics (workspace)"},
        c = {"<cmd>DogeGenerate<cr>", "add docstring"},
    },

    w = {
        name = "wiki",
        t = {"<cmd>VimwikiMakeDiaryNote<cr>", "today's diary"},
        T = {"<cmd>vs<cr><cmd>VimwikiMakeDiaryNote<cr>", "today's diary (vsplit)"},
        d = {"<cmd>VimwikiDiaryIndex<cr>", "diary index"},
        i = {"<cmd>VimwikiDiaryIndex<cr>", "wiki index"},
    },

    c = {
        name = "config",
        i = { "<cmd>edit ~/.config/nvim/lua/init.lua<cr>", "init.lua (nvim)"},
        p = { "<cmd>edit ~/.config/nvim/lua/plugins.lua<cr>", "plugins.lua (nvim)"},
        P = { "<cmd>edit ~/.config/nvim/lua/plugins/<cr>", "plugins folder (nvim)"},
        I = { "<cmd>edit ~/.config/i3/config<cr>", "i3 config"},
        f = { "<cmd>edit ~/.config/fish/fishfile<cr>", "fishfile"},
        l = { "<cmd>edit ~/.hledger.journal<cr>", "ledger"},
    },

    K = {"<cmd>lua vim.lsp.buf.hover()<cr>", "go to definition"},
    d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "go to definition"},
    z = {"<cmd>ZenMode<cr>", "zen mode"},

}, { prefix = "<leader>"})
