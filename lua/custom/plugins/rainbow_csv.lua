local function gh(repo) return 'https://github.com/' .. repo end

-- rainbow_csv: highlight CSV columns in different colors
vim.pack.add { gh 'cameron-wags/rainbow_csv.nvim' }
require('rainbow_csv').setup()

-- vim: ts=2 sts=2 sw=2 et
