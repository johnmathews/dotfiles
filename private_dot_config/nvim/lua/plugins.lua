-- this lets you do `gf` on e.g.: "plugins/monokai.lua"
vim.cmd("set path+=~/.config/nvim/lua/plugins/")

local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer. Restart Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[
  augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	print("Packer not found")
	vim.notify("Packer not found")
	return
end

return packer.startup({
	function(use)
		use("wbthomason/packer.nvim")
		use("lewis6991/impatient.nvim")

		use("nvim-lua/plenary.nvim")
		use("nvim-lua/popup.nvim")

		-- COLORSCHEMES
		use("Mofiqul/dracula.nvim")
		use("sainnhe/sonokai")
		use("glepnir/zephyr-nvim")
		use({
			"johnmathews/monokai.nvim",
			config = function()
				require("plugins.monokai")
			end,
		})

		use("dstein64/vim-startuptime")

		use({
			"folke/which-key.nvim",
			config = function()
				require("which-key").setup({})
			end,
		})

		use({
			"goolord/alpha-nvim",
			config = function()
				require("plugins.alpha")
			end,
		})

		use({
			"ahmedkhalf/project.nvim",
			config = function()
				require("plugins.project")
			end,
		})

		use("tpope/vim-obsession")

		use({
			"simeji/winresizer",
			config = function()
				vim.cmd([[let g:winresizer_keycode_finish=9 ]])
			end,
		})

		use({
			"akinsho/bufferline.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("plugins.bufferline")
			end,
		})

		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
			config = function()
				require("plugins.lualine")
			end,
		})

		use({
			"numToStr/Comment.nvim",
			requires = {
				"nvim-treesitter/nvim-treesitter",
				"JoosepAlviste/nvim-ts-context-commentstring",
			},
			config = function()
				require("plugins.comment")
			end,
		})
		-- use({
		--   "scrooloose/nerdcommenter",
		--   config = function()
		--     require("plugins.nerdcommenter")
		--   end,
		-- })

		use({ "neovim/nvim-lspconfig" })
		use({ "williamboman/nvim-lsp-installer" }) -- simple to use language server installer
		use({ "tamago324/nlsp-settings.nvim" }) -- language server settings defined in json for
		use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters and code actions
		use({ "onsails/lspkind-nvim", requires = "famiu/bufdelete.nvim" })
		use({ "ray-x/lsp_signature.nvim", requires = "neovim/nvim-lspconfig" })
		use({ "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim" })

		use({
			"hrsh7th/nvim-cmp",
			requires = {
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"saadparwaiz1/cmp_luasnip",
				-- "f3fora/cmp-spell",
				-- "hrsh7th/cmp-calc",
				-- "hrsh7th/cmp-emoji",
			},
			config = function()
				require("plugins.cmp")
			end,
		})

		use({ "L3MON4D3/LuaSnip" })
		use({ "rafamadriz/friendly-snippets" })

		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
			config = function()
				require("plugins.treesitter")
			end,
			requires = {
				"nvim-treesitter/playground",
			},
		})

		use({
			"p00f/nvim-ts-rainbow",
			config = function()
				require("plugins.rainbow")
			end,
		})

		use("townk/vim-autoclose")

		use({
			"skywind3000/asyncrun.vim",
			config = function()
				require("plugins.asyncrun")
			end,
		})

		use("chrisbra/csv.vim")

		use("ekalinin/Dockerfile.vim")

		use("nvie/vim-flake8")

		use({
			"akinsho/toggleterm.nvim",
			config = function()
				require("plugins.toggleterm")
			end,
		})
		-- use({
		-- 	"voldikss/vim-floaterm",
		-- 	config = function()
		-- 		require("plugins.floaterm")
		-- 	end,
		-- })

		use("tpope/vim-fugitive")

		use("airblade/vim-gitgutter")

		-- use("glench/vim-jinja2-syntax")
		-- use("maksimr/vim-jsbeautify")

		use({
			"plasticboy/vim-markdown",
			config = function()
				require("plugins.markdown")
			end,
		})
		use({
			"simnalamburt/vim-mundo",
			config = function()
				require("plugins.mundo")
			end,
		})
		use("MisanthropicBit/vim-numbers")

		use({
			"tyru/open-browser.vim",
			config = function()
				require("plugins.open-browser")
			end,
		})
		use("tpope/vim-projectionist")
		use("vim-scripts/pylint.vim")
		use("tpope/vim-repeat")

		use({
			"chentau/marks.nvim",
			config = function()
				require("plugins.marks")
			end,
		})

		use({
			"justinmk/vim-sneak",
			config = function()
				require("plugins.sneak")
			end,
		})
		use("shmup/vim-sql-syntax")
		use("tpope/vim-surround")
		use("godlygeek/tabular")
		use({
			"preservim/tagbar",
			config = function()
				require("plugins.tagbar")
			end,
		})
		use("wellle/targets.vim")
		use({
			"janko-m/vim-test",
			config = function()
				require("plugins.test")
			end,
		})
		use({ "kana/vim-textobj-user", requires = { "whatyouhide/vim-textobj-xmlattr" } })

		use("tpope/vim-unimpaired")
		use("hashivim/vim-vagrant")
		use({
			"lervag/vimtex",
			config = function()
				require("plugins.vimtex")
			end,
		})

		-- use({ "valloric/matchtagalways" })
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("plugins.autopairs")
			end,
		})

		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
			config = function()
				require("plugins.telescope")
			end,
		})
		use({
			"nvim-telescope/telescope-fzf-native.nvim",
			run = "make",
		})

		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons",
			},
		})
		require("plugins.nvim-tree")

		if PACKER_BOOTSTRAP then
			require("packer").sync()
		end
	end,
	config = {
		compile_path = vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua",
		display = {
			open_fn = require("packer.util").float,
		},
		profile = {
			-- PackerCompile profile=true then reopen nvim and run :PackerProfile
			enable = false,
			threshold = 0.1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
		},
	},
})
