return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		-- LSP Support
		{"neovim/nvim-lspconfig"},             -- Required
		{"williamboman/mason.nvim"},           -- Optional
		{"williamboman/mason-lspconfig.nvim"}, -- Optional

		-- Autocompletion
		{"hrsh7th/nvim-cmp"},     -- Required
		{"hrsh7th/cmp-nvim-lsp"}, -- Required
		{"L3MON4D3/LuaSnip"},     -- Required
	},
	config = function()
		local lsp = require("lsp-zero").preset({})

		lsp.format_on_save({
			format_opts = {
				async = false,
				timeout_ms = 10000,
			},
			servers = {
				["clangd"] = {"c", "cpp", "h", "hpp"},
			}
		})

		lsp.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({buffer = bufnr})
		end)

		--local util = require "lspconfig.util"
		--local root_files = {
		--	".clangd",
		--	".clang-tidy",
		--	".clang-format",
		--	"compile_commands.json",
		--	"compile_flags.txt",
		--	"configure.ac", -- AutoTools
		--}
		--require("lspconfig").clangd.setup({
		--	cmd = { "clangd", "--style={BasedOnStyle: Microsoft}" },
		--	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
		--	root_dir = function(fname)
		--		return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
		--	end,
		--	single_file_support = true,
		--	capabilities = {
		--		textDocument = {
		--			completion = {
		--				editsNearCursor = true,
		--			},
		--		},
		--		offsetEncoding = { "utf-8", "utf-16" },
		--	},
		--})

		-- (Optional) Configure lua language server for neovim
		require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

		local cmp = require("cmp")
		cmp.setup({
			mapping = {
				["<tab>"] = cmp.mapping.confirm({select = false}),
			},
		})

		lsp.setup()
	end,
}
