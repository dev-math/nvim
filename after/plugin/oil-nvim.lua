require("oil").setup({
	lsp_file_methods = {
		autosave_changes = true,
	},
	watch_for_changes = true,
	view_options = {
		is_hidden_file = function(name, _)
			return vim.fn.systemlist("git check-ignore " .. vim.fn.fnameescape(name))[1] ~= nil
				or name:match("^%.git$") ~= nil
		end,
	},
})

vim.api.nvim_create_user_command("Ex", function(_)
	vim.cmd.Oil()
end, { desc = "Open file explorer" })
