require("evergarden").setup({
	theme = {
		variant = "winter", -- 'winter'|'fall'|'spring'|'summer'
		accent = "blue",
	},
	editor = {
		transparent_background = true,
		override_terminal = true,
		sign = { color = "none" },
		float = {
			color = "mantle",
			solid_border = false,
		},
		completion = {
			color = "surface0",
		},
	},
	style = {
		tabline = { "reverse" },
		search = { "reverse" },
		incsearch = { "reverse" },
		types = {},
		keyword = {},
		comment = {},
	},
	overrides = {},
	color_overrides = {},
})

vim.cmd.colorscheme("evergarden")
