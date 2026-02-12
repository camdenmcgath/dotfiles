vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "gh", vim.lsp.buf.hover)
-- copy pasta
--
-- pastes over some text without losing pasted text in buffer
vim.keymap.set("x", "<leader>p", [["_dP]])
-- delete into blank register - does not override current yank register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- next greatest remap ever : asbjornHaland
-- yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


-- fuzzy finding
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>fp", fzf.builtin)
vim.keymap.set("n", "<leader>ff", fzf.files)
vim.keymap.set("n", "<leader>en",
    function()
        fzf.files({ cwd = '~/.config/nvim' })
    end)
vim.keymap.set("n", "<leader>ec",
    function()
        fzf.files({ cwd = '~/.config/' })
    end)
vim.keymap.set("n", "<leader>fs", fzf.lsp_document_symbols)
vim.keymap.set("n", "<leader>fw", fzf.lsp_live_workspace_symbols)
vim.keymap.set("n", "<leader>fe", fzf.lsp_document_diagnostics)
vim.keymap.set("n", "<leader>fd", fzf.lsp_workspace_diagnostics)
vim.keymap.set("n", "<leader>fb", fzf.buffers)
vim.keymap.set("n", "<leader>qf", fzf.quickfix)
vim.keymap.set("n", "<leader>fr", fzf.live_grep)

-- harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hs", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- need to fix these
vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)
