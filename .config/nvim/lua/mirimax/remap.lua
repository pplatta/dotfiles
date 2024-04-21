vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- when yank buffor is not overwritten 
vim.keymap.set("x", "p", [["_dP]])

-- yank to system clipboard 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<cmd>noh<CR>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope advanced_git_search diff_commit_file<CR>");
vim.keymap.set("n", "<leader>gl", "<cmd>Telescope advanced_git_search diff_commit_line<CR>");

--vim.keymap.set("n", "<leader><leader>", function()
--  vim.keymap.  vim.cmd("so")
--end)

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })

vim.keymap.set("n", "<leader>tca", "<cmd>CompetiTest add_testcase<CR>");
vim.keymap.set("n", "<leader>tce", "<cmd>CompetiTest edit_testcase<CR>");
vim.keymap.set("n", "<leader>tcr", "<cmd>CompetiTest run<CR>");
vim.keymap.set("n", "<leader>tcre", "<cmd>CompetiTest receive problem<CR>");
vim.keymap.set("n", "<leader>fd", "<cmd>Oil<CR>");

vim.keymap.set("n", "<C-y>", "viwP"); --replace word with yanked text
vim.keymap.set("n", "<leader>h", "<cmd>HopWord<CR>");
