-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- set a column line to indicate line changing of code
vim.opt.colorcolumn = "80"

-- set tab = 4 spaces
-- show existing tab with 4 spaces width
vim.opt.tabstop = 4
-- when indenting with '>', use 4 spaces width
vim.opt.shiftwidth = 4
-- On pressing tab, insert 4 spaces
vim.opt.expandtab = true

-- let grammarous plugin download the correct package 
vim.g.grammarous_jar_url = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
