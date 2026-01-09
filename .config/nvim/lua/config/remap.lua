vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>ff", require('fzf-lua').files)
vim.keymap.set("n", "<leader>fb", require('fzf-lua').buffers)
vim.keymap.set("n", "<leader>fq", require('fzf-lua').quickfix)
vim.keymap.set("n", "<leader>fs", require('fzf-lua').treesitter)
