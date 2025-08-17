require("mason").setup({
    registries = {
        "github:nvim-java/mason-registry",
        "github:mason-org/mason-registry"
    },
})
require("mason-tool-installer").setup({
    ensure_installed = {
        "prettierd",
        "stylua",
        "isort",
        "black",
        "pylint",
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

require("null-ls").setup()
require("none-ls-autoload").setup({
    external_sources = {
        -- diagnostics
        'none-ls-external-sources.diagnostics.cpplint',
        'none-ls-external-sources.diagnostics.eslint',
        'none-ls-external-sources.diagnostics.eslint_d',
        'none-ls-external-sources.diagnostics.flake8',
        'none-ls-external-sources.diagnostics.luacheck',
        'none-ls-external-sources.diagnostics.psalm',
        'none-ls-external-sources.diagnostics.yamllint',

        -- formatting
        'none-ls-external-sources.formatting.autopep8',
        'none-ls-external-sources.formatting.beautysh',
        'none-ls-external-sources.formatting.easy-coding-standard',
        'none-ls-external-sources.formatting.eslint',
        'none-ls-external-sources.formatting.eslint_d',
        'none-ls-external-sources.formatting.jq',
        'none-ls-external-sources.formatting.latexindent',
        'none-ls-external-sources.formatting.reformat_gherkin',
        'none-ls-external-sources.formatting.rustfmt',
        'none-ls-external-sources.formatting.standardrb',
        'none-ls-external-sources.formatting.yq',

        -- code actions
        'none-ls-external-sources.code_actions.eslint',
        'none-ls-external-sources.code_actions.eslint_d',
        'none-ls-external-sources.code_actions.shellcheck',
    },
})

