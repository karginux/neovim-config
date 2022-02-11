local cmd = vim.cmd
local exec = vim.api.nvim_exec
local g = vim.g
local opt = vim.opt

-- global
opt.swapfile = false
opt.clipboard = 'unnamedplus'
opt.mouse = 'a'
opt.undofile = true
opt.completeopt = {'menuone', 'noinsert', 'noselect'}

-- ui
opt.number = true
opt.showmatch = true
opt.foldmethod = 'marker'
opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
cmd[[colorscheme catppuccin]]

-- tabs
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true
