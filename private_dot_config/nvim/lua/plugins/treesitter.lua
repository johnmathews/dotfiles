local status_ok, _ = pcall(require, "nvim-treesitter.config")
if not status_ok then
  return
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = { "yaml" }
  }
}
