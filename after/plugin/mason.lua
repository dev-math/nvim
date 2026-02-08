require("mason").setup({
	registries = {
		"github:nvim-java/mason-registry",
		"github:mason-org/mason-registry",
	},
})
require("mason-tool-installer").setup({
	ensure_installed = {
		"prettierd",
		"stylua",
		"isort",
		"eslint_d",
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"ts_ls",
		"html",
		"cssls",
		"jsonls",
		"gopls",
		"lua_ls",
	},
})

-- Devcontainers support
local lspconfig_util = require("lspconfig.util")
lspconfig_util.on_setup = lspconfig_util.add_hook_after(lspconfig_util.on_setup, function(config, user_config)
	config.on_new_config = lspconfig_util.add_hook_after(config.on_new_config, require("devcontainers").on_new_config)
end)

-- Autoformat on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	-- you can reuse a shared lspconfig on_attach callback here
	on_attach = function(client, bufnr)
		if client:supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						async = false,
						bufnr = bufnr,
						filter = function(cli)
							return cli.name == "null-ls"
						end,
					})
				end,
			})
		end
	end,
})

require("none-ls-autoload").setup({
	external_sources = {
		-- diagnostics
		"none-ls-external-sources.diagnostics.cpplint",
		"none-ls-external-sources.diagnostics.eslint",
		"none-ls-external-sources.diagnostics.eslint_d",
		"none-ls-external-sources.diagnostics.flake8",
		"none-ls-external-sources.diagnostics.luacheck",
		"none-ls-external-sources.diagnostics.psalm",
		"none-ls-external-sources.diagnostics.yamllint",

		-- formatting
		"none-ls-external-sources.formatting.autopep8",
		"none-ls-external-sources.formatting.beautysh",
		"none-ls-external-sources.formatting.easy-coding-standard",
		"none-ls-external-sources.formatting.eslint",
		"none-ls-external-sources.formatting.eslint_d",
		"none-ls-external-sources.formatting.jq",
		"none-ls-external-sources.formatting.latexindent",
		"none-ls-external-sources.formatting.reformat_gherkin",
		"none-ls-external-sources.formatting.rustfmt",
		"none-ls-external-sources.formatting.standardrb",
		"none-ls-external-sources.formatting.yq",

		-- code actions
		"none-ls-external-sources.code_actions.eslint",
		"none-ls-external-sources.code_actions.eslint_d",
		"none-ls-external-sources.code_actions.shellcheck",
	},
})
