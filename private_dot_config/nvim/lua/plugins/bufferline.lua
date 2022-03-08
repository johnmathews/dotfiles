require('bufferline').setup {
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        -- text = function()
        --   return vim.fn.getcwd()
        -- end,
        text = "",
        highlight = "Directory",
        text_align = "left"
      }
    },
  }
}

