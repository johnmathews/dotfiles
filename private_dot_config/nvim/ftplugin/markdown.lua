local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

cmp.setup.buffer({
	sources = {
		{ name = "path" },
		{ name = "emoji" },
	},
})
