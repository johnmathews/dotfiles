local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print("*** Unable to require packer")
  vim.notify("notifying you that packer is not found")
  return
end

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
  return string.format("require(\"plugins/%s\")", name)
end

-- Install your plugins here
return packer.startup({function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  use {"goolord/alpha-nvim", config=get_config("alpha")}

  use "Mofiqul/dracula.nvim"
  use {"mileszs/ack.vim", config=get_config("ack")}

  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons', config=get_config('bufferline')}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config=get_config("lualine")
  }

  require("plugins.lsp")
  use {
    'neovim/nvim-lspconfig',
    -- config=get_config("lsp")
  }
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use {"jose-elias-alvarez/null-ls.nvim"} -- for formatters and linters
  use {"onsails/lspkind-nvim", requires = {{"famiu/bufdelete.nvim"}}}
  use {"ray-x/lsp_signature.nvim", requires = {{"neovim/nvim-lspconfig"}}}

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"hrsh7th/cmp-cmdline"},
      {"L3MON4D3/LuaSnip"},
      -- {"hrsh7th/cmp-vsnip"},
      {"saadparwaiz1/cmp_luasnip"},
      {"f3fora/cmp-spell", {"hrsh7th/cmp-calc"}, {"hrsh7th/cmp-emoji"}}
    },
    config = get_config("cmp")
  }
  -- use {"hrsh7th/vim-vsnip", config = get_config("vsnip")}
  -- use {"rafamadriz/friendly-snippets", requires = {{"hrsh7th/vim-vsnip"}}}
  use {"rafamadriz/friendly-snippets"}

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config=get_config("treesitter")
  }
  use {"p00f/nvim-ts-rainbow", config=get_config("rainbow")}

  use "townk/vim-autoclose"
  use {"skywind3000/asyncrun.vim", config=get_config("asyncrun")}
  use "chrisbra/csv.vim"
  use "ekalinin/Dockerfile.vim"
  use "nvie/vim-flake8"
  use {"voldikss/vim-floaterm", config=get_config("floaterm")}
  use "tpope/vim-fugitive"
  use "airblade/vim-gitgutter"
  use "yggdroot/indentline"

  use {"pangloss/vim-javascript", config=get_config("javascript")}
  use "glench/vim-jinja2-syntax"
  use "maksimr/vim-jsbeautify"
  use {"plasticboy/vim-markdown", config=get_config("markdown")}
  use {"simnalamburt/vim-mundo", config=get_config("mundo")}
  use "MisanthropicBit/vim-numbers"
  use "tpope/vim-obsession"
  use {"tyru/open-browser.vim", config=get_config("open-browser")}
  use "tpope/vim-projectionist"
  use "vim-scripts/pylint.vim"
  use "tpope/vim-repeat"
  use "kshenoy/vim-signature"
  use {'justinmk/vim-sneak', config=get_config("sneak")}
  use 'shmup/vim-sql-syntax'
  use 'tpope/vim-surround'
  use 'godlygeek/tabular'
  use {'preservim/tagbar', config=get_config('tagbar')}
  use 'wellle/targets.vim'
  use {'janko-m/vim-test', config=get_config('test')}
  use {'kana/vim-textobj-user', requires={"whatyouhide/vim-textobj-xmlattr"}}

  --use {'sirver/ultisnips', for=['markdown', 'md'], requires={'honza/vim-snippets'}, config=get_config('ultisnips')}
  -- use {"sheerun/vim-polyglot", config=get_config("polyglot")}
  --use "fisadev/vim-isort"
  --
  use 'tpope/vim-unimpaired'
  use 'hashivim/vim-vagrant'
  use {'lervag/vimtex', config=get_config("vimtex")}
  use 'jmcantrell/vim-virtualenv'
  use 'google/yapf'
  use "valloric/matchtagalways"

  use {"junegunn/fzf", dir="~/.fzf", run="./install --all"}
  use {"junegunn/fzf.vim", config=get_config("fzf")}

  use {"scrooloose/nerdtree",
  requires={
    'Xuyuanp/nerdtree-git-plugin',
    'ryanoasis/vim-devicons',
    'tiagofumo/vim-nerdtree-syntax-highlight'
  },
  config=get_config("nerdtree")
}

use {"scrooloose/nerdcommenter", config=get_config("nerdcommenter")}

-- use {'luochen1990/rainbow',
--   ft={
--     "bash",
--     "bq",
--     "cfg",
--     "css",
--     "init",
--     "javascript",
--     "js",
--     "json",
--     "jsonc",
--     "lua",
--     "py",
--     "sh",
--     "sql",
--     "vim",
--     "yaml",
--     "yaml.ansible",
--     "zsh",
--   },
--   config=get_config("rainbow")
-- }

-- Put this at the end after all plugins
if PACKER_BOOTSTRAP then
  require("packer").sync()
end
end,
config = {
  display = {
    open_fn = require("packer.util").float,
  },
  profile = {
    enable = true,
    threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
  },
},
})

