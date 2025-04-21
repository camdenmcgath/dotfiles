return {
  {
    'echasnovski/mini.nvim',
    config = function()
      local statusline = require 'mini.statusline'
      require('mini.pairs').setup()
      statusline.setup { use_icons = true }
    end
  }
}
