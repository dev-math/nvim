vim.pack.add({
	-- lsp
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",

	-- fucking java
	"https://github.com/nvim-java/nvim-java",
	"https://github.com/nvim-java/lua-async",
	"https://github.com/nvim-java/nvim-java-refactor",
	"https://github.com/nvim-java/nvim-java-core",
	"https://github.com/nvim-java/nvim-java-test",
	"https://github.com/nvim-java/nvim-java-dap",
	"https://github.com/MunifTanjim/nui.nvim",
	"https://github.com/JavaHello/spring-boot.nvim",

	-- debugger
	"https://github.com/mfussenegger/nvim-dap",
	"https://github.com/igorlfs/nvim-dap-view",
	"https://github.com/theHamsta/nvim-dap-virtual-text",
	"https://github.com/leoluz/nvim-dap-go",

	-- linter & formatter
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/nvimtools/none-ls.nvim",
	"https://github.com/Zeioth/none-ls-external-sources.nvim",
	"https://github.com/zeioth/none-ls-autoload.nvim",

	-- completions
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.0") },
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/zbirenbaum/copilot.lua",
	"https://github.com/fang2hou/blink-copilot",

	-- treesitter
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "master" },
	"https://github.com/nvim-treesitter/nvim-treesitter-context",
	"https://github.com/nvim-treesitter/nvim-treesitter-refactor",
	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	"https://github.com/JoosepAlviste/nvim-ts-context-commentstring",
	"https://github.com/windwp/nvim-ts-autotag",
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/andymass/vim-matchup",

	-- fzf
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/nvim-tree/nvim-web-devicons",

	"https://github.com/lewis6991/gitsigns.nvim", -- git blame
	"https://github.com/tpope/vim-fugitive", -- git util

	"https://github.com/stevearc/oil.nvim", -- filetree editor

	"https://github.com/everviolet/nvim", -- colorscheme

	"https://github.com/mbbill/undotree",

	"https://github.com/Joakker/lua-json5",
})

-- TODO: fix this installation script trigger
vim.api.nvim_create_autocmd("PackChanged", {
    pattern = "*",
	callback = function(ev)
        print(vim.inspect(ev))
		local plugin_name = ev.data.spec.name
		local change_kind = ev.data.kind
		local plugin_path = ev.data.spec.path

		if plugin_name == "lua-json5" and change_kind == "install" then
			vim.system({
				"bash",
				"install.sh",
			}, {
				cwd = plugin_path,
			}, function(result)
				if result.code ~= 0 then
					vim.notify("Failed to install lua-json5: " .. result.stderr, vim.log.levels.ERROR)
				else
					vim.notify("lua-json5 installed successfully", vim.log.levels.INFO)
				end
			end)
		end
	end,
})
