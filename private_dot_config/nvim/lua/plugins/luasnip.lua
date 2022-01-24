local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

local date = function()
	return { os.date("%Y-%m-%d") }
end

local slugify = function(args, snip)
	local text = args[1][1]
	text = string.lower(text)
	text = string.gsub(text, "[%p%c]", "")
	text = string.gsub(text, "[%s]", "-")
	return text
end

return {
	all = {},
	markdown = require("snippets.markdown")
}
