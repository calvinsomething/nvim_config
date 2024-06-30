vim.opt.rtp:prepend(vim.fn.stdpath("data") .. "/lazy/lazy.nvim")

require("lazy").setup({
	{ import = "lsp" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
		"lewis6991/gitsigns.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() require("gitsigns").setup() end,
	},
	"tpope/vim-fugitive",
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
		config = function()
			vim.keymap.set("n", "<leader>dt", function()
				require("dapui").toggle()
			end)
		end
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6", -- or branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{"<leader>ff", function() require("telescope.builtin").find_files() end},
			{"<leader>fg", function() require("telescope.builtin").live_grep() end},
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function() require("lualine").setup() end,
	}

})
