vim.cmd [[
    packadd nvim-dap
    packadd nvim-dap-view
]]
require("dap-view").setup{}
require("nvim-dap-virtual-text").setup({
    virt_text_pos = "eol",
})

require('dap.ext.vscode').json_decode = require'json5'.parse
require('dap.ext.vscode').load_launchjs()
