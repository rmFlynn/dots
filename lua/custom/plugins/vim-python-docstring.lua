local function gh(repo) return 'https://github.com/' .. repo end

-- vim-python-docstring: generate Python docstrings
vim.pack.add { gh 'pixelneo/vim-python-docstring' }

vim.g.python_style = 'google'

-- vim: ts=2 sts=2 sw=2 et
