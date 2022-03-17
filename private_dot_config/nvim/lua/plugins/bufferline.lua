require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = function()
          return vim.fn.getcwd()
        end,
        highlight = "Directory",
        text_align = "left"
      }
    },
  }
}

local map = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true }

-- Bufferline
-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
map("n", "[b", ":BufferLineCyclePrev<CR>", default_options)
map("n", "]b", ":BufferLineCycleNext<CR>", default_options)


