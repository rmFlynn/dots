vim.g.mapleader = ';'
vim.g.maplocalleader = ';'

-- [[ Install `lazy.nvim` plugin manager ]]
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
-- NOTE: First, some plugins that don't require any configuration
require('lazy').setup({}, {})
vim.o.clipboard = 'unnamedplus'

-- -- Remap for dealing with word wrap
-- vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
-- vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- 
-- -- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
-- 
-- 
--     -- "/usr/bin/python3.10'
-- vim.keymap.set('n', '<leader>v', "<c-v>", { silent = true })
-- 
-- vim.keymap.set('n', '<C-J>', "<C-W><C-J>", { silent = true })
-- vim.keymap.set('n', '<C-K>', "<C-W><C-K>", { silent = true })
-- vim.keymap.set('n', '<C-L>', "<C-W><C-L>", { silent = true })
-- vim.keymap.set('n', '<C-H>', "<C-W><C-H>", { silent = true })
-- 
-- 
