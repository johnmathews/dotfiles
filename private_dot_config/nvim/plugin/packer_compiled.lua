-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/john/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/john/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/john/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/john/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/john/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Dockerfile.vim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/Dockerfile.vim",
    url = "https://github.com/ekalinin/Dockerfile.vim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { 'require("plugins/alpha")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["asyncrun.vim"] = {
    config = { 'require("plugins/asyncrun")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/asyncrun.vim",
    url = "https://github.com/skywind3000/asyncrun.vim"
  },
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "https://github.com/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { 'require("plugins/bufferline")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["csv.vim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/csv.vim",
    url = "https://github.com/chrisbra/csv.vim"
  },
  ["dracula.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/dracula.nvim",
    url = "https://github.com/Mofiqul/dracula.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  indentline = {
    after_files = { "/Users/john/.local/share/nvim/site/pack/packer/opt/indentline/after/plugin/indentLine.vim" },
    config = { 'require("plugins/indentline")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/john/.local/share/nvim/site/pack/packer/opt/indentline",
    url = "https://github.com/yggdroot/indentline"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugins/lualine")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  matchtagalways = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/matchtagalways",
    url = "https://github.com/valloric/matchtagalways"
  },
  nerdcommenter = {
    config = { 'require("plugins/nerdcommenter")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/scrooloose/nerdcommenter"
  },
  nerdtree = {
    config = { 'require("plugins/nerdtree")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/scrooloose/nerdtree"
  },
  ["nerdtree-git-plugin"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nerdtree-git-plugin",
    url = "https://github.com/Xuyuanp/nerdtree-git-plugin"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { 'require("plugins/cmp")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { 'require("plugins/treesitter")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    config = { 'require("plugins/rainbow")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["open-browser.vim"] = {
    config = { 'require("plugins/open-browser")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["pylint.vim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/pylint.vim",
    url = "https://github.com/vim-scripts/pylint.vim"
  },
  tabular = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/tabular",
    url = "https://github.com/godlygeek/tabular"
  },
  tagbar = {
    config = { 'require("plugins/tagbar")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/targets.vim",
    url = "https://github.com/wellle/targets.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("plugins/telescope")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-autoclose"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-autoclose",
    url = "https://github.com/townk/vim-autoclose"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-devicons",
    url = "https://github.com/ryanoasis/vim-devicons"
  },
  ["vim-flake8"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-flake8",
    url = "https://github.com/nvie/vim-flake8"
  },
  ["vim-floaterm"] = {
    config = { 'require("plugins/floaterm")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-jinja2-syntax"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-jinja2-syntax",
    url = "https://github.com/glench/vim-jinja2-syntax"
  },
  ["vim-jsbeautify"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-jsbeautify",
    url = "https://github.com/maksimr/vim-jsbeautify"
  },
  ["vim-markdown"] = {
    config = { 'require("plugins/markdown")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-mundo"] = {
    config = { 'require("plugins/mundo")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-mundo",
    url = "https://github.com/simnalamburt/vim-mundo"
  },
  ["vim-nerdtree-syntax-highlight"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-nerdtree-syntax-highlight",
    url = "https://github.com/tiagofumo/vim-nerdtree-syntax-highlight"
  },
  ["vim-numbers"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-numbers",
    url = "https://github.com/MisanthropicBit/vim-numbers"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-obsession",
    url = "https://github.com/tpope/vim-obsession"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-signature"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-signature",
    url = "https://github.com/kshenoy/vim-signature"
  },
  ["vim-sneak"] = {
    config = { 'require("plugins/sneak")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-sneak",
    url = "https://github.com/justinmk/vim-sneak"
  },
  ["vim-sql-syntax"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-sql-syntax",
    url = "https://github.com/shmup/vim-sql-syntax"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    config = { 'require("plugins/test")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/janko-m/vim-test"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-textobj-xmlattr"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-textobj-xmlattr",
    url = "https://github.com/whatyouhide/vim-textobj-xmlattr"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-vagrant"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-vagrant",
    url = "https://github.com/hashivim/vim-vagrant"
  },
  ["vim-virtualenv"] = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vim-virtualenv",
    url = "https://github.com/jmcantrell/vim-virtualenv"
  },
  vimtex = {
    config = { 'require("plugins/vimtex")' },
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  yapf = {
    loaded = true,
    path = "/Users/john/.local/share/nvim/site/pack/packer/start/yapf",
    url = "https://github.com/google/yapf"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-markdown
time([[Config for vim-markdown]], true)
require("plugins/markdown")
time([[Config for vim-markdown]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
require("plugins/test")
time([[Config for vim-test]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("plugins/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: tagbar
time([[Config for tagbar]], true)
require("plugins/tagbar")
time([[Config for tagbar]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require("plugins/alpha")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-ts-rainbow
time([[Config for nvim-ts-rainbow]], true)
require("plugins/rainbow")
time([[Config for nvim-ts-rainbow]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("plugins/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: open-browser.vim
time([[Config for open-browser.vim]], true)
require("plugins/open-browser")
time([[Config for open-browser.vim]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
require("plugins/vimtex")
time([[Config for vimtex]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
require("plugins/bufferline")
time([[Config for bufferline.nvim]], false)
-- Config for: vim-floaterm
time([[Config for vim-floaterm]], true)
require("plugins/floaterm")
time([[Config for vim-floaterm]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require("plugins/lualine")
time([[Config for lualine.nvim]], false)
-- Config for: vim-sneak
time([[Config for vim-sneak]], true)
require("plugins/sneak")
time([[Config for vim-sneak]], false)
-- Config for: nerdcommenter
time([[Config for nerdcommenter]], true)
require("plugins/nerdcommenter")
time([[Config for nerdcommenter]], false)
-- Config for: asyncrun.vim
time([[Config for asyncrun.vim]], true)
require("plugins/asyncrun")
time([[Config for asyncrun.vim]], false)
-- Config for: vim-mundo
time([[Config for vim-mundo]], true)
require("plugins/mundo")
time([[Config for vim-mundo]], false)
-- Config for: nerdtree
time([[Config for nerdtree]], true)
require("plugins/nerdtree")
time([[Config for nerdtree]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugins/telescope")
time([[Config for telescope.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType sql ++once lua require("packer.load")({'indentline'}, { ft = "sql" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'indentline'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'indentline'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'indentline'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'indentline'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'indentline'}, { ft = "javascript" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
