require('java').setup({
    handlers = {
        ["language/status"] = function(_, _) end,
    },
})
require('lspconfig').jdtls.setup({})
