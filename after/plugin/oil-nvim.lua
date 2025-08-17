require("oil").setup()

vim.api.nvim_create_user_command("Ex", function(_)
	vim.cmd.Oil()
end, { desc = "Open file explorer" })
