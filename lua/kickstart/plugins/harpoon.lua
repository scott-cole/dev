return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    -- Basic keymaps (adjust as you like)
    local map = vim.keymap.set
    map('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon add file' })
    map('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon menu' })

    -- Quick navigation to files 1–4
    map('n', '<leader>1', function()
      harpoon:list():select(1)
    end)
    map('n', '<leader>2', function()
      harpoon:list():select(2)
    end)
    map('n', '<leader>3', function()
      harpoon:list():select(3)
    end)
    map('n', '<leader>4', function()
      harpoon:list():select(4)
    end)
  end,
}
