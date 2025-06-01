-- keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set({"n", "o"}, "U", "u")
vim.keymap.set("n", "<leader><BS>", vim.cmd.Ex)
vim.keymap.set("t", "<c-[>", "<esc>", { remap = true })
vim.keymap.set("t", "<esc>", "<c-\\><c-N>")
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float({ border = "rounded" }) end)
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = { border = "rounded" } }) end)
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = { border = "rounded" } }) end)

-- colorscheme
vim.cmd.colorscheme("aloe")

-- options
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.signcolumn = "yes"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.hidden = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.undofile = true

-- netrw
vim.g.netrw_bufsettings = "noma nomod nobl nowrap ro rnu"
vim.g.netrw_liststyle = 3
vim.g.netrw_banner = false
