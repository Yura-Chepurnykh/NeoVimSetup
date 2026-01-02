local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then 
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim",
        "--branch=stable",
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

vim.g.rose_pine_variant = 'moon'
vim.g.rose_pine_disable_background = true

require("lazy").setup(require("plugins"))

-- basic options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.cmd[[colorscheme rose-pine]]

vim.cmd [[
    hi Normal guibg=NONE ctermbg=NONE
    hi NormalNC guibg=NONE ctermbg=NONE
    hi LineNr guibg=NONE
    hi SignColumn guibg=NONE
]]
