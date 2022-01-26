local status_ok, lsp_diagnostics = pcall(require, "toggle_lsp_diagnostics")

if not status_ok then
	return
end

lsp_diagnostics.init({
  start_on = true,
	underline = false,
	virtual_text = {
		prefix = "XXX",
		spacing = 5,
	},
})

