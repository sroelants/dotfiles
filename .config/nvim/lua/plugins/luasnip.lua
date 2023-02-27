return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "<CurrentMajor>.*",
	-- install jsregexp (optional!).
	build = "make install_jsregexp",

	dependencies = { "rafamadriz/friendly-snippets" },

	config = function()
		local ls = require("luasnip")
		ls.setup({})
		ls.filetype_extend("typescript", { "javascript" })

		require("luasnip.loaders.from_vscode").lazy_load({
				paths = "~/.config/nvim/lua/snippets/"
			})

		vim.keymap.set({ "i", "s" }, "<tab>", function()
				if ls.jumpable(1) then ls.jump(1) end
			end, { silent = true })

		vim.keymap.set({"i", "s" }, "<s-tab>", function()
				if ls.jumpable(-1) then ls.jump(-1) end
			end, { silent = true })
	end
}
