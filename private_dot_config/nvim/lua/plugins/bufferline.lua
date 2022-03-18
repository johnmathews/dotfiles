require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        -- text = function()
        --   return vim.fn.getcwd()
        -- end,
        highlight = "Directory",
        text_align = "left"
      }
    },
    sort_by = 'relative_directory'
  }
}

local map = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true }

vim.cmd("set sessionoptions+=globals")


-- Bufferline
-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
map("n", "[b", ":BufferLineCyclePrev<CR>", default_options)
map("n", "]b", ":BufferLineCycleNext<CR>", default_options)

map("n", "<localleader>bp", ":BufferLineMovePrev<CR>", default_options)
map("n", "<localLeader>bn", ":BufferLineMoveNext<CR>", default_options)

