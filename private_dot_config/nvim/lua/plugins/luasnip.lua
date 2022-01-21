local snip_status_ok, ls = pcall(require, "luasnip")
if not snip_status_ok then
  print("luasnip not found")
  return
end


ls.config.set_config {
  history = true,
  -- treesitter-hl has 100, use something higher (default is 200).
  ext_base_prio = 200,
  -- minimal increase in priority.
  ext_prio_increase = 1,
  enable_autosnippets = false,
  store_selection_keys = "<c-s>",
}

ls.snippets = require("snippets/snippets")
