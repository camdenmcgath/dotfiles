return {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
        require("mini.move").setup(
            {
                -- Module mappings. Use `''` (empty string) to disable one.
                mappings = {
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    left = 'H',
                    right = 'L',
                    down = 'J',
                    up = 'K',
                    -- Move current line in Normal mode
                    line_left = 'H',
                    line_right = 'L',
                    line_down = 'J',
                    line_up = 'K',
                    --line_left = '<C-a>',
                    --line_right = '<M-C-l>',
                    --line_down = '<C-s>',
                    --line_up = '<M-C-k>',
                },
                -- Options which control moving behavior
                options = {
                    -- Automatically reindent selection during linewise vertical move
                    reindent_linewise = true
                },
            }
        )
    end
}
