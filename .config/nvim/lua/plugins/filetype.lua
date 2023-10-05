return {
  "nathom/filetype.nvim",
  config = function()
  	require("filetype").setup({
			overrides = {
				extensions = {
					ldg = function ()
						vim.bo.filetype = "ledger"
						vim.opt.cc = "45"
					end,

					astro = "astro",
					html = "html",
				}
			}
  	})
  end
}
