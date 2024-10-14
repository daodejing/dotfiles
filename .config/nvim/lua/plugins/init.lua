return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd({ cmd = "colorscheme", args = { "kanagawa" } })
		end,
	},
	"moll/vim-bbye",
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = "nvim-lua/plenary.nvim",
		keys = {
			{ "<C-t>", "<CMD>Telescope<CR>", mode = { "n", "i", "v" } },
			{ "<C-p>", "<CMD>Telescope find_files<CR>", mode = { "n", "i", "v" } },
			{ "<C-l>", "<CMD>Telescope live_grep<CR>", mode = { "n", "i", "v" } },
			{ "<C-c>", "<CMD>Telescope commands<CR>", mode = { "n", "i", "v" } },
			{ "<C-k>", "<CMD>Telescope keymaps<CR>", mode = { "n", "i", "v" } },
			{ "<C-s>", "<CMD>Telescope grep_string<CR>", mode = { "n", "i", "v" } },
		},
		config = true,
	},
	"dhruvmanila/telescope-bookmarks.nvim",
	"benfowler/telescope-luasnip.nvim",
	"nvim-telescope/telescope-live-grep-args.nvim",
	"princejoogie/dir-telescope.nvim",
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	"lewis6991/gitsigns.nvim",
	"p00f/nvim-ts-rainbow",
	"nvim-treesitter/playground",
	{
		"ggandor/leap.nvim",
		config = function()
			local leap = require("leap")
			leap.add_default_mappings()
			leap.setup({})
		end,
	},
	"tpope/vim-surround",
	"tpope/vim-fugitive",
	"tpope/vim-sensible",
	"tpope/vim-unimpaired",
	"tpope/vim-repeat",
	"tpope/vim-speeddating",
	"tpope/vim-obsession",
	"christoomey/vim-tmux-navigator",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"akinsho/bufferline.nvim",
		enabled = false,
		config = function()
			require("bufferline").setup()
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("neo-tree").setup()
		end,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
			{ "lukas-reineke/lsp-format.nvim", config = true },
		},
		config = function()
			local lsp = require("lsp-zero")
			lsp.preset("recommended")
			lsp.on_attach(function(client, bufnr)
				require("lsp-format").on_attach(client, bufnr)
			end)
			lsp.nvim_workspace()
			lsp.setup()
			vim.diagnostic.config({ virtual_text = true })
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "rust" },
				highlight = { enable = true },
			})
		end,
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	},
}
