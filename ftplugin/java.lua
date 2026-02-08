require("java").setup({
	handlers = {
		["language/status"] = function(_, _) end,
	},
})
vim.lsp.enable("jdtls")
-- require('lspconfig').jdtls.setup({})
