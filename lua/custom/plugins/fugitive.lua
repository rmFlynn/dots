vim.pack.add { 'https://github.com/tpope/vim-fugitive' }
vim.pack.add { 'https://github.com/tpope/vim-rhubarb' }

-- Set command for fugitive

vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", {})
vim.keymap.set('n', '<leader>gau', ":Git add -u<CR>", { silent = true })
vim.keymap.set('n', '<leader>gaf', ":Git add %<CR>", { silent = true })
vim.keymap.set('n', '<leader>gs', ":Git status<CR>", { silent = true })
vim.keymap.set('n', '<leader>gh', ":Flog<CR>", { silent = true })
vim.keymap.set('n', '<leader>gdd', ":Gvdiffsplit<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh0', ":Gvdiffsplit HEAD<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh1', ":Gvdiffsplit HEAD 1<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh2', ":Gvdiffsplit HEAD 2<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh3', ":Gvdiffsplit HEAD 3<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh4', ":Gvdiffsplit HEAD 4<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>gdh5', ":Gvdiffsplit HEAD 5<CR>", { silent = true })
vim.keymap.set('n', '<leader>gdom', ":Git diff main<CR>", { silent = true })
vim.keymap.set('n', '<leader>gdtm', ":Git difftool main<CR>", { silent = true })
vim.keymap.set('n', '<leader>gdm', ":Gvdiffsplit main<CR>", { silent = true })
vim.keymap.set('n', '<leader>gpl', ":Git pull<CR>", {})
vim.keymap.set('n', '<leader>gps', ":Git push<CR>", {})