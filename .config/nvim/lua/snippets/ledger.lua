local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet

return {
	--
	-- Salary
	--
	s({ trig = "sal",
	  	name = "Salary",
	  	dscr = "Combination of transfers into and out of businnes account"
	  },

	  fmt([[
	  	{date} Salary
	     	 Income:Salary                       -{amount}EUR
	     	 Assets:Business:Checking             {amount}EUR
	     	 Assets:Business:Checking            -{amount}EUR
	     	 Assets:Business:Savings             {half}EUR
	     	 Assets:Personal:Fortis              {half}EUR


	  	]],

	  	{ date = i(1, "date"),
	  		amount = i(2, "amount"),
	  		half = f(
	  			function(text)
	  				local num = tonumber(text[1][1])
	  				local half = num and num/2 or 0.00
	  				return string.format("% 8.2f", half)
	  			end,
	  			{2}
	  		)
	  	},

	  	{ repeat_duplicates = true }
	  )
	),

	--
  -- Other snippets
  --

}
