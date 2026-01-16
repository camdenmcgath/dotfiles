vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>fp", require('fzf-lua').builtin)
vim.keymap.set("n", "<leader>ff", require('fzf-lua').files)
vim.keymap.set("n", "<leader>en",
    function()
        require('fzf-lua').files({ cwd = '~/.config/nvim' })
    end)
vim.keymap.set("n", "<leader>ec",
    function()
        require('fzf-lua').files({ cwd = '~/.config/' })
    end)
vim.keymap.set("n", "<leader>fs", require('fzf-lua').lsp_document_symbols)
vim.keymap.set("n", "<leader>fw", require('fzf-lua').lsp_workspace_symbols)
vim.keymap.set("n", "<leader>fb", require('fzf-lua').buffers)
vim.keymap.set("n", "<leader>qf", require('fzf-lua').quickfix)
vim.keymap.set("n", "<leader>fr", require('fzf-lua').live_grep)
