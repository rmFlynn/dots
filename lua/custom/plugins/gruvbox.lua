local function gh(repo) return 'https://github.com/' .. repo end

-- Gruvbox colorscheme
vim.pack.add { gh 'morhetz/gruvbox' }

vim.o.termguicolors = true
vim.cmd 'highlight Normal ctermbg=NONE guibg=NONE'
vim.cmd.colorscheme 'gruvbox'

-- vim: ts=2 sts=2 sw=2 et
