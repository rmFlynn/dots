local function gh(repo) return 'https://github.com/' .. repo end

-- dbt
vim.pack.add {
  gh 'PedramNavid/dbtpal',
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
}

require('dbtpal').setup {
  path_to_dbt = 'dbt',
  path_to_dbt_project = '',
  path_to_dbt_profiles_dir = vim.fn.expand '~/.dbt',
  extended_path_search = true,
  protect_compiled_files = true,
}
require('telescope').load_extension 'dbtpal'

-- dbtpal keymaps
vim.keymap.set('n', '<leader>drf', '<cmd>DbtRun<cr>')
vim.keymap.set('n', '<leader>drp', '<cmd>DbtRunAll<cr>')
vim.keymap.set('n', '<leader>dtf', '<cmd>DbtTest<cr>')
vim.keymap.set('n', '<leader>dm', function() require('dbtpal.telescope').dbt_picker() end)

-- data-viewer
vim.pack.add {
  gh 'vidocqh/data-viewer.nvim',
  gh 'nvim-lua/plenary.nvim',
  gh 'kkharji/sqlite.lua',
}
require('data-viewer').setup {}
