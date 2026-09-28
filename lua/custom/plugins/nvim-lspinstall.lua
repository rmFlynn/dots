local function gh(repo) return 'https://github.com/' .. repo end

-- nvim-lspinstall: install language servers
vim.pack.add { gh 'anott03/nvim-lspinstall' }

-- vim: ts=2 sts=2 sw=2 et
