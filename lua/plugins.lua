local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	install = { colorscheme = { "aloe" } },
	checker = {
		enabled = false,
		frequency = 86400, -- check every 24 hours
	},
	ui = {
		border = "rounded",
	},
	spec = {
		{
			"tpope/vim-fugitive",
			lazy = false,
			config = function()
				vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
				vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit)
			end,
		},
		{
			"lewis6991/gitsigns.nvim",
			opts = {
				on_attach = function()
					local gitsigns = require("gitsigns")

					vim.keymap.set("n", "]c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "]c", bang = true })
						else
							gitsigns.nav_hunk("next")
						end
					end)

					vim.keymap.set("n", "[c", function()
						if vim.wo.diff then
							vim.cmd.normal({ "]c", bang = true })
						else
							gitsigns.nav_hunk("prev")
						end
					end)

					vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk)
					vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk)
				end,
			},
		},
		{
			"nvim-telescope/telescope.nvim",
			tag = "0.1.8",
			dependencies = { "nvim-lua/plenary.nvim" },
			keys = {
				{ "<leader>ff", function() require("telescope.builtin").find_files() end },
				{ "<leader>fF", function() require("telescope.builtin").find_files() end },
				{ "<leader>fg", function() require("telescope.builtin").live_grep() end },
			},
		},
		{
			"mason-org/mason.nvim",
			opts = {
				ui = { border = "rounded" },
			}
		},
		{
			"mason-org/mason-lspconfig.nvim",
			opts = {
				ensure_installed = { "lua_ls", "gopls", "clangd", "ts_ls" },
			},
			dependencies = {
				{ "mason-org/mason.nvim", opts = {} },
				"neovim/nvim-lspconfig",
			},
		},
		{
			"sbdchd/neoformat",
			config = function()
				vim.g.neoformat_try_node_exe = 1
			end,
		},
		{
			"saghen/blink.cmp",
			-- use a release tag to download pre-built binaries
			version = "1.3.1",
			opts = {
				-- "default" (recommended) for mappings similar to built-in completions (C-y to accept)
				-- "super-tab" for mappings similar to vscode (tab to accept)
				-- "enter" for enter to accept
				-- "none" for no mappings
				--
				-- All presets have the following mappings:
				-- C-space: Open menu or open docs if already open
				-- C-n/C-p or Up/Down: Select next/previous item
				-- C-e: Hide menu
				-- C-k: Toggle signature help (if signature.enabled = true)
				--
				-- See :h blink-cmp-config-keymap for defining your own keymap
				keymap = { preset = "super-tab" },

				appearance = {
					nerd_font_variant = "mono"
				},

				completion = { documentation = { auto_show = true } },

				-- Default list of enabled providers defined so that you can extend it
				-- elsewhere in your config, without redefining it, due to `opts_extend`
				sources = {
					default = { "lsp", "path", "buffer" },
				},

				-- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
				-- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
				-- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
				--
				-- See the fuzzy documentation for more information
				fuzzy = { implementation = "prefer_rust_with_warning" }
			},
			opts_extend = { "sources.default" },
		},
		{
			"rcarriga/nvim-dap-ui",
			dependencies = {
				"mfussenegger/nvim-dap",
				"nvim-neotest/nvim-nio",
				"leoluz/nvim-dap-go",
			},
			config = function()
				require("dap-config")
			end,
		},
	}
})
