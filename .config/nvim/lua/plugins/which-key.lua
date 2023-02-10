
return {
    "folke/which-key.nvim",
    config = function()
      vim.opt.timeout = true
      vim.opt.timeoutlen = 300
      require("which-key").setup({
  			plugins = {
    			marks = false, -- shows a list of your marks on ' and `
    			registers = false, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    			spelling = {
      			enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      			suggestions = 20, -- how many suggestions should be shown in the list?
    			},
    			-- the presets plugin, adds help for a bunch of default keybindings in Neovim
    			-- No actual key bindings are created
    			presets = {
      			operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      			motions = false, -- adds help for motions
      			text_objects = false, -- help for text objects triggered after entering an operator
      			windows = false, -- default bindings on <c-w>
      			nav = false, -- misc bindings to work with windows
      			z = false, -- bindings for folds, spelling and others prefixed with z
      			g = false, -- bindings for prefixed with g
    			},
  			},
  			-- add operators that will trigger motion and text object completion
  			-- to enable all native operators, set the preset / operators plugin above
  			key_labels = {
    			-- override the label used to display some keys. It doesn't effect WK in any other way.
    			-- For example:
    			["<space>"] = "SPC",
    			["<cr>"] = "RET",
    			["<tab>"] = "TAB",
  			},
      })
    end,
  }
