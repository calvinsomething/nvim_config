vim.lsp.config("luals", {
	-- Command and arguments to start the server.
	cmd = { "lua-language-server" },
	-- Filetypes to automatically attach to.
	filetypes = { "lua" },
	-- Sets the "root directory" to the parent directory of the file in the
	-- current buffer that contains either a ".luarc.json" or a
	-- ".luarc.jsonc" file. Files that share a root directory will reuse
	-- the connection to the same LSP server.
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { ".luarc.json", ".luarc.jsonc" },
	-- Specific settings to send to the server. The schema for this is
	-- defined by the server. For example the schema for lua-language-server
	-- can be found here https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			}
		}
	}
})

vim.lsp.config("gopls", {
	root_markers = { "go.mod" },
})

vim.lsp.config("clangd", {
	root_markers = { ".clang-format", "compile_commands.json" },
})

vim.lsp.config("ts_ls", {
	root_markers = { "package.json", "tsconfig.json" },
})

vim.lsp.config("*", {
	root_markers = { ".git" },
})

vim.lsp.enable({"luals", "gopls", "clangd", "ts_ls"})
