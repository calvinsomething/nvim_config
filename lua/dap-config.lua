local dap, dapui = require("dap"), require("dapui")

-- GO
require("dap-go").setup({
	dap_configurations = {
		{
			-- Must be "go" or it will be ignored by the plugin
			type = "go",
			name = "Attach remote",
			mode = "remote",
			request = "attach",
		},
	},
})

-- C/C++
dap.adapters.codelldb = {
	type = "executable",
	command = "codelldb", -- or if not in $PATH: "/absolute/path/to/codelldb"

	-- On windows you may have to uncomment this:
	-- detached = false,
}

dap.configurations.cpp = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = false,
	},
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

dapui.setup()

dap.listeners.before.attach.dapui_config = dapui.open
dap.listeners.before.launch.dapui_config = dapui.open
dap.listeners.before.event_terminated.dapui_config = dapui.close
dap.listeners.before.event_exited.dapui_config = dapui.close

vim.keymap.set("n", "<f5>", dap.continue)
vim.keymap.set("n", "<f9>", dap.step_over)
vim.keymap.set("n", "<f10>", dap.step_into)
vim.keymap.set("n", "<f11>", dap.step_out)
vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>dt", dapui.toggle)
