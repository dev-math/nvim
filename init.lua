vim.cmd.colorscheme "evergarden"

vim.g.mapleader = " "
vim.diagnostic.config({ virtual_text = true })

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.guicursor = ""
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.shortmess = vim.opt.shortmess + { c = true }

vim.opt.smartindent = true
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.shiftwidth = 4     -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4        -- insert 4 spaces for a tab
vim.opt.softtabstop = 4    -- insert 4 spaces for a tab

vim.opt.hlsearch = true   -- highlight search
vim.opt.ignorecase = true
vim.opt.smartcase = true  -- case insensitive unless capitals used in search

vim.opt.wildmenu = true   -- on TAB, complete options for system command
vim.opt.wildignore = vim.opt.wildignore + { '*/node_modules/*', '*/.git/*', '*/vendor/*' }

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath "cache" .. "/undo"
vim.opt.directory = '~/.config/nvim/swap//,/tmp//'

vim.opt.spelllang = "en"
vim.opt.fileencoding = "utf-8"    -- the encoding written to a file
vim.opt.encoding = "utf-8"        -- the encoding displayed

-- vim.opt.lazyredraw = true  -- screen will not be redrawn while executing macros, registers and other commands that have not been typed
vim.opt.redrawtime = 1500
vim.opt.timeoutlen = 300   -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.ttimeoutlen = 10   -- time in milliseconds to wait for a key code sequence to complete
vim.opt.updatetime = 50
vim.opt.scrolloff = 10

vim.opt.signcolumn = "yes"

vim.opt.hidden = true
vim.opt.conceallevel = 0 -- so that ``` is visible in MD files
