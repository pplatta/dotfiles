vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true    
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "0"

vim.g.gruvbox_material_disable_italic_comment="1"
vim.g.gruvbox_material_better_performance="1"
vim.g.gruvbox_material_foreground="material"
vim.g.gruvbox_material_background="hard"
vim.g.gruvbox_material_transparent_background="2"
vim.cmd("colorscheme gruvbox-material")

--vim.cmd("colorscheme rose-pine")
