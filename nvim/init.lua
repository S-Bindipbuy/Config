vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = "a"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

vim.cmd("colorscheme catppuccin")
vim.opt.termguicolors = true
require("keybind")
vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "#89b4fa" })

vim.g.zig_fmt_autosave = 0
vim.g.omni_sql_no_default_maps = 1
vim.g.php_sql_query = 1
vim.g.php_htmlInStrings = 1
