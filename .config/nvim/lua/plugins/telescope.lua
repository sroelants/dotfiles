local config = {
  defaults = {
    prompt_prefix = "   ",
    selection_caret = "  ",
    entry_prefix = "  ",
    sorting_strategy = "ascending",
    layout_strategy = "flex",
    layout_config = {
      horizontal = { 
      	prompt_position = "top",
	      preview_width = 0.55,
      },
      vertical = { mirror = false },
      width = 0.87,
      height = 0.8,
      preview_cutoff = 120,
    },
    set_env = { COLORTERM = "truecolor" },
    dynamic_preview_title = true,
  },
  extensions = {
    project = { base_dirs = { "~/.config/nvim" } }
  }
}
return {
  'nvim-telescope/telescope.nvim', 
  tag = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function() require('telescope').setup(config) end
}
