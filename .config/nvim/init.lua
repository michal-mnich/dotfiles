-- Set tab equal to 4 spaces
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
    
-- Always display 10 lines below and above the cursor
vim.opt.scrolloff = 10

-- Disable displaying ~ on empty lines
vim.opt.fillchars = { eob = " " }

-- Enable line numbers
vim.opt.number = true

-- Enable system clipboard integration
vim.opt.clipboard = 'unnamedplus'
