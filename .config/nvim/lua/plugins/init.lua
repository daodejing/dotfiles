return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd({ cmd = "colorscheme", args = { "kanagawa-dragon" } })
		end,
	},
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
	"lewis6991/gitsigns.nvim",
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
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
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
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	},
}
