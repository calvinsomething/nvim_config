vim.g.netrw_bufsettings = "noma nomod nobl nowrap ro rnu"
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = false

-- Keymaps
vim.g.mapleader = " "
vim.keymap.set({"n", "o"}, "U", "u")
vim.keymap.set("n", "<leader><BS>", vim.cmd.Ex)
vim.keymap.set("t", "<esc>", "<c-\\><c-n>")
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit)

-- Options
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.nu = true
vim.o.rnu = true

vim.o.hidden = true

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true

vim.o.swapfile = false
vim.o.undodir = [[C:\Users\Calvin\AppData\local\nvim-data\undo]]
vim.o.undofile = true

-- cd into lowest level directory of current file path
vim.api.nvim_create_autocmd({"VimEnter"}, {
	callback = function(ctx)
		local dir = ctx.file
		if vim.fn.isdirectory(dir) == 0 then
			dir = vim.fs.dirname(dir)
		end
		vim.api.nvim_set_current_dir(dir)
		return true
	end
})
