local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'nvim-telescope/telescope-file-browser.nvim',
  gh 'nvim-lua/plenary.nvim',
  gh 'nvim-telescope/telescope.nvim',
}
require("telescope").load_extension('file_browser')
vim.keymap.set("n", "<leader>so", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
