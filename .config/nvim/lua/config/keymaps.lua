-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.g.mapleader = " "
vim.keymap.set("n", "c-j", vim.cmd.Ex)

--vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
--vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--vim.keymap.set("n", "J", "mzJ`z")

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
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<cmd>noh<CR>")
--vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
--vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader><leader>", function()
--  vim.keymap.  vim.cmd("so")
--end)

vim.keymap.set("n", "<C-h>", "<cmd>wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>wincmd l<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<cmd>wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<cmd>wincmd k<CR>", { silent = true })

vim.keymap.set("n", "<leader>tca", "<cmd>CompetiTest add_testcase<CR>")
vim.keymap.set("n", "<leader>tce", "<cmd>CompetiTest edit_testcase<CR>")
vim.keymap.set("n", "<leader>tcr", "<cmd>CompetiTest run<CR>")
vim.keymap.set("n", "<leader>tcre", "<cmd>CompetiTest receive problem<CR>")
vim.keymap.set("n", "<leader>fd", "<cmd>Oil<CR>")

vim.keymap.set("n", "<leader>h", "<cmd>HopWord<CR>")
vim.keymap.set("n", "<C-y>", "viwP") --replace word with yanked text

vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>")
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>")
vim.keymap.set("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fs", builtin.grep_string, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
vim.keymap.set("n", "<leader>gl", builtin.live_grep, {})
vim.keymap.set("n", "<leader>ts", builtin.resume, {})
vim.keymap.set("n", "<leader>fg", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>gx", function()
  builtin.grep_string({ search = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t") })
end)

-- harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<leader>a", mark.add_file)

vim.keymap.set("n", "<F7>", "<cmd>Gitsigns next_hunk<CR>")
vim.keymap.set("n", "<F8>", "<cmd>Gitsigns prev_hunk<CR>")
vim.keymap.set("n", "<F6>", "<cmd>Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<F9>", "<cmd>Gitsigns stage_hunk<CR>")
vim.keymap.set("v", "<F9>", "<cmd>Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<F10>", "<cmd>Gitsigns reset_hunk<CR>")
vim.keymap.set("v", "<F10>", "<cmd>Gitsigns reset_hunk<CR>")

--lsp
vim.g.lsp_zero_ui_float_border = 0
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>")
vim.keymap.set("n", "<leader>fx", "<cmd>Telescope lsp_document_symbols<CR>")
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
local lsp = require("lsp-zero")
lsp.on_attach(function(bufnr)
  local opts = { buffer = bufnr, remap = false }

  --vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.lsp.buf.hover()
  vim.keymap.set("n", "K", function() end, opts)
  vim.diagnostic.open_float()
  vim.keymap.set("n", "<leader>vd", function() end, opts)
  vim.keymap.set("n", "[d", function()
    vim.diagnostic.goto_next()
  end, opts)
  vim.keymap.set("n", "]d", function()
    vim.diagnostic.goto_prev()
  end, opts)
  vim.keymap.set("n", "<leader>vca", function()
    vim.lsp.buf.code_action()
  end, opts)
  vim.keymap.set("n", "gD", function()
    vim.lsp.buf.declaration()
  end, opts)
  vim.keymap.set("n", "<leader>rn", function()
    vim.lsp.buf.rename()
  end, opts)
  vim.keymap.set("i", "<C-h>", function()
    vim.lsp.buf.signature_help()
  end, opts)
  vim.keymap.set("n", "<leader>da", vim.diagnostic.open_float, opts)
end)
