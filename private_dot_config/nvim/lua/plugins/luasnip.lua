local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

local snip = luasnip.snippet
local node = luasnip.snippet_node
local text = luasnip.text_node
local insert = luasnip.insert_node
local func = luasnip.function_node
local choice = luasnip.choice_node
local dynamicn = luasnip.dynamic_node

return {
	all = {
		snip({
			trig = "signature",
			namr = "Signature",
			dscr = "Name and Surname",
		}, {
			text("Sergei Bulavintsev"),
			insert(0),
		}),
	},
	markdown = {
		snip({
			namr = "Technical Categories",
			dscr = "Blog - technical categories for blog posts",
			trig = "tech",
		}, {
			text("Technical/Developer Tools,Data,Web,Other,Cryptocurrencies,Engineering"),
		}),
		snip({
			namr = "Non-technical Categories",
			dscr = "Blog - non-technical categories for blog posts",
			trig = "non",
		}, {
			text("Non-technical/Other,Social,Learning,Journal,Entrepreneurship,Photographs"),
		}),
	},
}
