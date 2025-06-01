local did_set_hover_key = false

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("on_lsp_attach", { clear = true }),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

		if not did_set_hover_key then
			did_set_hover_key = true
			vim.keymap.del("n", "K", { buffer = args.buf })
		end
		vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = "rounded" }) end, { buffer = args.buf })

		if not client:supports_method("textDocument/willSaveWaitUntil")
			and client:supports_method("textDocument/formatting") then
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = vim.api.nvim_create_augroup("on_save_lsp", { clear = false }),
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
				end,
			})
		end
	end
})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("on_save_js", { clear = true }),
	pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.json" },
	callback = function()
		vim.cmd.Neoformat()
	end,
})

vim.api.nvim_create_autocmd("VimEnter", {
	group = vim.api.nvim_create_augroup("on_vim_enter", { clear = true }),
	callback = function(args)
		if vim.fn.empty(vim.fn.FugitiveGitDir()) == 0 then
			vim.keymap.set("n", "<leader>ff", require("telescope.builtin").git_files)
		end

		local dir = ""
		if vim.fn.isdirectory(args.match) == 1 then
			dir = args.match
		else
			dir = vim.fs.dirname(args.match)
		end

		vim.cmd.cd(dir)
	end,
})
