-- Opens lazygit in a floating window.
-- See `:help lazygit.nvim` and https://github.com/kdheepak/lazygit.nvim

vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/kdheepak/lazygit.nvim',
}

vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>', { desc = 'Open Lazy[G]it' })
vim.keymap.set('n', '<leader>gf', '<cmd>LazyGitCurrentFile<CR>', { desc = 'Open LazyGit for current [F]ile repo' })
