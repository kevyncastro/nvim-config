-- Persistent, toggleable terminal windows.
-- See `:help toggleterm` and https://github.com/akinsho/toggleterm.nvim

vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }

require('toggleterm').setup {
  open_mapping = [[<C-\>]],
  direction = 'horizontal',
}
