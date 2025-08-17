vim.pack.add({
    -- lsp
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/mason-org/mason-lspconfig.nvim",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",

    -- debugger
    "https://github.com/mfussenegger/nvim-dap",
    "https://github.com/igorlfs/nvim-dap-view",

    -- linter & formatter
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/nvimtools/none-ls.nvim",
    "https://github.com/Zeioth/none-ls-external-sources.nvim",
    "https://github.com/zeioth/none-ls-autoload.nvim",

    -- completions
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range('1.0') },
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

    "https://github.com/stevearc/oil.nvim", -- filetree editor

    "https://github.com/everviolet/nvim", -- colorscheme

    "https://github.com/mbbill/undotree",
})
