local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local map = vim.api.nvim_set_keymap
local default_options = { noremap = true, silent = true }

-- Telescope
-- tab V S A are taken by toggle-lsp plugin
map("n", "<C-I>f", ":Telescope find_files<CR>", default_options)
map("n", "<C-I>g", ":Telescope git_files<cr>", default_options)
map("n", "<C-I>r", ":Telescope buffers<CR>", default_options)
map("n", "<C-I>e", ":Telescope live_grep<CR>", default_options)
map("n", "<C-I>o", ":Telescope oldfiles<CR>", default_options)

map("n", "<C-I>p", ":Telescope projects<CR>", default_options)
map("n", "<C-I>h", ":Telescope help_tags<cr>", default_options)

map("n", "<C-I>vc", ":Telescope command_history<CR>", default_options)
map("n", "<C-I>vs", ":Telescope search_history<CR>", default_options)
map("n", "<C-I>vk", ":Telescope keymaps<CR>", default_options)

map("n", "<C-I>j", ":Telescope jumplist<CR>", default_options)
map("n", "<C-I>q", ":Telescope quickfix<CR>", default_options)
map("n", "<C-I>l", ":Telescope loclist<CR>", default_options)

map("n", "<C-I>z", ":Telescope resume<CR>", default_options)

-- Git pickers
map("n", "<C-I>gc", ":Telescope git_commits<CR>", default_options)
map("n", "<C-I>gb", ":Telescope git_bcommits<CR>", default_options)
map("n", "<C-I>gr", ":Telescope git_branches<CR>", default_options)
map("n", "<C-I>gs", ":Telescope git_status<CR>", default_options)

-- Treesitter picker
map("n", "<C-I>va", ":Telescope treesitter<CR>", default_options)

-- Vim pickers
map("n", "<C-I>va", ":Telescope autocommands<CR>", default_options)
map("n", "<C-I>vr", ":Telescope registers<CR>", default_options)
map("n", "<C-I>vo", ":Telescope vim_options<CR>", default_options)

-- LSP pickers
map("n", "<C-I>lr", ":Telescope lsp_references<CR>", default_options)
map("n", "<C-I>ld", ":Telescope lsp_document_symbols<CR>", default_options)
map("n", "<C-I>lc", ":Telescope lsp_code_actionsjCR>", default_options)


-- map("n", "<leader>pw", ":lua require(\"telescope.builtin\").grep_string({search=vim.fn.expand(\"<cword>\")})<CR>", default_options)
-- map("n", "<leader>ps", ":lua require(\"telescope.builtin\").grep_string({ search = vim.fn.input(\"Grep For > \")})<CR>", default_options)

telescope.load_extension('projects')

-- dont preview binaries
-- https://github.com/nvim-telescope/telescope.nvim/wiki/Configuration-Recipes#falling-back-to-find_files-if-git_files-cant-find-a-git-directory
local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file",
    args = { "--mime-type", "-b", filepath },
    on_exit = function(j)
      local mime_type = vim.split(j:result()[1], "/")[1]
      if mime_type == "text" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      elseif mime_type == "application/json" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      else
        -- maybe we want to write something to the buffer here
        vim.schedule(function()
          vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
        end)
      end
    end
  }):sync()
end


local actions = require("telescope.actions")
telescope.setup {
  defaults = {
    buffer_previewer_maker = new_maker,
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },

    mappings = {
      i = {
        ["<esc>"] = actions.close,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,

        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,

        ["<C-c>"] = actions.close,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,

        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        ["<C-l>"] = actions.complete_tag,
        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },

      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["H"] = actions.move_to_top,
        ["M"] = actions.move_to_middle,
        ["L"] = actions.move_to_bottom,

        ["<Down>"] = actions.move_selection_next,
        ["<Up>"] = actions.move_selection_previous,
        ["gg"] = actions.move_to_top,
        ["G"] = actions.move_to_bottom,

        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,

        ["<PageUp>"] = actions.results_scrolling_up,
        ["<PageDown>"] = actions.results_scrolling_down,

        ["?"] = actions.which_key,
      },
    },
  },
  pickers = {

    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker

    buffers = {
      sort_lastused = true,
      ignore_current_buffer = true,
      cwd_only = false,
    }
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  },
}
