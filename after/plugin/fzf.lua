local fzf = require("fzf-lua")
fzf.setup({
	{ "ivy" },
	fzf_opts = { ["--cycle"] = true },
	keymap = {
		fzf = {
			true,
			-- Use <c-q> to select all items and add them to the quickfix list
			["ctrl-q"] = "select-all+accept",
		},
	},
})

vim.api.nvim_create_user_command("FzfLua", function(_)
	fzf.builtin()
end, { desc = "Open fzf commands" })

vim.keymap.set("n", "<leader>pf", fzf.files, {})
vim.keymap.set("n", "<C-p>", fzf.git_files, {})
vim.keymap.set("n", "<leader>ps", fzf.live_grep, {})
vim.keymap.set("n", "<leader>ht", fzf.help_tags, {})
vim.keymap.set("n", "<leader>fb", fzf.buffers, {})
