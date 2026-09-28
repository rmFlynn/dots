local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'tpope/vim-fugitive' }
vim.pack.add { gh 'tpope/vim-rhubarb' }
vim.pack.add { gh 'rbong/vim-flog' }

-- Fugitive keymaps
vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', {})
vim.keymap.set('n', '<leader>gau', ':Git add -u<CR>', { silent = true })
vim.keymap.set('n', '<leader>gaf', ':Git add %<CR>', { silent = true })
vim.keymap.set('n', '<leader>gs', ':Git status<CR>', { silent = true })
vim.keymap.set('n', '<leader>gh', ':Flog<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdd', ':Gvdiffsplit<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdom', ':Git diff main<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdtm', ':Git difftool main<CR>', { silent = true })
vim.keymap.set('n', '<leader>gdm', ':Gvdiffsplit main<CR>', { silent = true })
vim.keymap.set('n', '<leader>gpl', ':Git pull<CR>', {})
vim.keymap.set('n', '<leader>gps', ':Git push<CR>', {})
