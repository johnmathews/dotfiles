function current_col()
  row, column = unpack(vim.api.nvim_win_get_cursor(0))
  return column + 1
end


function row_max_row()
  row, column = unpack(vim.api.nvim_win_get_cursor(0))
  max_row = vim.api.nvim_buf_line_count(0)
  return row .. "/" .. max_row
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'dracula',
    -- component_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'%{ObsessionStatus("$", "!$")}', 'progress', 'row_max_row()', 'current_col()', 'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
