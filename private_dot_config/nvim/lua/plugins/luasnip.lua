local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

return {
	all = {},
	markdown = require("snippets.markdown")
}
