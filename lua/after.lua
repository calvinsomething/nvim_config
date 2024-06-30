--vim.o.background = "dark"

--vim.cmd "hi Normal guibg=none ctermbg=none"
--vim.cmd "hi NormalFloat guibg=none ctermbg=none"
--vim.cmd "hi EndOfBuffer guibg=none ctermbg=none"

vim.cmd.colorscheme "aloe"

-- debug

local dap = require("dap")
require("dapui").setup()

--dap.adapters.executable = {
--	name = "lldb",
--	type = "executable",
--	port = 13000,
--	command = vim.fn.stdpath("data") .. "/mason/bin/codelldb.cmd",
--	host = "127.0.0.1",
--}

dap.adapters.lldb = {
    name = "lldb",
    type = "server",
    port = "${port}",
    executable = {
        command = vim.fn.stdpath("data") .. "/mason/bin/codelldb.cmd",
        args = { "--port", "${port}" },
    }
}

dap.configurations.cpp = {
	{
		name = "Launch",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
		runInTerminal = true,
	}
}

vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<f5>", dap.continue)
vim.keymap.set("n", "<f9>", dap.step_over)
vim.keymap.set("n", "<f10>", dap.step_into)
vim.keymap.set("n", "<f11>", dap.step_out)
