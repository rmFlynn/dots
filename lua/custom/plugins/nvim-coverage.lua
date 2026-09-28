local function gh(repo) return 'https://github.com/' .. repo end

-- nvim-coverage: display test coverage in the sign column
vim.pack.add {
  gh 'andythigpen/nvim-coverage',
  gh 'nvim-lua/plenary.nvim',
}
require('coverage').setup()

-- vim: ts=2 sts=2 sw=2 et
