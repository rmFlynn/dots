local function gh(repo) return 'https://github.com/' .. repo end

-- vimtex: LaTeX support
vim.pack.add { gh 'lervag/vimtex' }

vim.g.vimtex_view_method = 'zathura'

-- vim: ts=2 sts=2 sw=2 et
