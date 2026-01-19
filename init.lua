--[[

=====================================================================
==================== READ THIS BEFORE CONTINUING ====================
=====================================================================
========                                    .-----.          ========
========         .----------------------.   | === |          ========
========         |.-""""""""""""""""""-.|   |-----|          ========
========         ||                    ||   | === |          ========
========         ||   KICKSTART.NVIM   ||   |-----|          ========
========         ||                    ||   | === |          ========
========         ||                    ||   |-----|          ========
========         ||:Tutor              ||   |:::::|          ========
========         |'-..................-'|   |____o|          ========
========         `"")----------------(""`   ___________      ========
========        /::::::::::|  |::::::::::\  \ no mouse \     ========
========       /:::========|  |==hjkl==:::\  \ required \    ========
========      '""""""""""""'  '""""""""""""'  '""""""""""'   ========
========                                                     ========
=====================================================================
=====================================================================

What is Kickstart?

  Kickstart.nvim is *not* a distribution.

  Kickstart.nvim is a starting point for your own configuration.
    The goal is that you can read every line of code, top-to-bottom, understand
    what your configuration is doing, and modify it to suit your needs.

    Once you've done that, you can start exploring, configuring and tinkering to
    make Neovim your own! That might mean leaving Kickstart just the way it is for a while
    or immediately breaking it into modular pieces. It's up to you!

    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
      - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

Kickstart Guide:

  TODO: The very first thing you should do is to run the command `:Tutor` in Neovim.

    If you don't know what this means, type the following:
      - <escape key>
      - :
      - Tutor
      - <enter key>

    (If you already know the Neovim basics, you can skip this step.)

  Once you've completed that, you can continue working through **AND READING** the rest
  of the kickstart init.lua.

  Next, run AND READ `:help`.
    This will open up a help window with some basic information
    about reading, navigating and searching the builtin help documentation.

    This should be the first place you go to look when you're stuck or confused
    with something. It's one of my favorite Neovim features.

    MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.

  I have left several `:help X` comments throughout the init.lua
    These are hints about where to find more information about the relevant settings,
    plugins or Neovim features used in Kickstart.

   NOTE: Look for lines like this

    Throughout the file. These are for you, the reader, to help you understand what is happening.
    Feel free to delete them once you know what you're doing, but they should serve as a guide
    for when you are first encountering a few different constructs in your Neovim config.

If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now! :)
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure and install plugins ]]
require 'lazy-plugins'

    -- "/usr/bin/python3.10'
    -- vim.g.python3_host_prog = '~/.config/nvim/nvim_venv/bin/python3'
    -- vim.g.node_host_prog = '~/.nvm/versions/node/v20.4.0/bin/node'
    vim.keymap.set('n', '<leader>v', "<c-v>", { silent = true })

    vim.keymap.set('n', '<C-J>', "<C-W><C-J>", { silent = true })
    vim.keymap.set('n', '<C-K>', "<C-W><C-K>", { silent = true })
    vim.keymap.set('n', '<C-L>', "<C-W><C-L>", { silent = true })
    vim.keymap.set('n', '<C-H>', "<C-W><C-H>", { silent = true })


    --Grammer
    --
    -- vim.g.grammarous_jar_url = 'https://www.languagetool.org/download/LanguageTool-5.9.zip'


    -- python-style
    vim.g.python_style = 'google'

    -- latext
    vim.g.vimtex_view_method = 'zathura'

    -- enable AutoSave on Vim startup
    vim.g.auto_save = 1

    -- Maintain undo history between sessions
    vim.undofile = true
    vim.undodir = '~/.vim/undodir'
    -- nnoremap <leader>rc :ReplRunCell<CR>
    -- nmap <leader>rr <Plug>ReplSendLine
    -- vmap <leader>rr <Plug>ReplSendVisual
    -- let cmdline_map_send           = '<Space>'
    --let cmdline_map_send_and_stay  = '<LocalLeader><Space>'
    --let cmdline_map_source_fun     = '<LocalLeader>f'
    --let cmdline_map_send_paragraph = '<LocalLeader>p'
    --let cmdline_map_send_block     = '<LocalLeader>b'
    --let cmdline_map_quit           = '<LocalLeader>q'

    -- " => Spelling stuff
    -- """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    vim.opt.spelloptions = "camel"

    local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
    --vim.keymap.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
    --vim.keymap.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

    --require("neotest").setup({
    --  adapters = {
    --    require("neotest-python"),
    --    require("neotest-rust")({
    --      args = { "--no-capture" },
    --    }),
    --    require("neotest-plenary"),
    --    require("neotest-vim-test")({
    --      ignore_file_types = { "python", "vim", "lua" },
    --    }),
    --  },
    --})

    -- Diagnostic keymaps
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
    -- Set command for fugitive

    vim.keymap.set('n', '<leader>gc', ":Git commit<CR>", {})
    vim.keymap.set('n', '<leader>gau', ":Git add -u<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gaf', ":Git add %<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gs', ":Git status<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gh', ":Flog<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdd', ":Gvdiffsplit<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh0', ":Gvdiffsplit HEAD<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh1', ":Gvdiffsplit HEAD 1<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh2', ":Gvdiffsplit HEAD 2<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh3', ":Gvdiffsplit HEAD 3<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh4', ":Gvdiffsplit HEAD 4<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdh5', ":Gvdiffsplit HEAD 5<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdom', ":Git diff main<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdtm', ":Git difftool main<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gdm', ":Gvdiffsplit main<CR>", { silent = true })
    vim.keymap.set('n', '<leader>gpl', ":Git pull<CR>", {})
    vim.keymap.set('n', '<leader>gps', ":Git push<CR>", {})

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })
    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'pylsp' }, -- You can specify the `cmp_git` source if you were installed it.
      }, {
        { name = 'buffer' },
      })
    })


    -- Mappings.
    -- See `:help vim.diagnostic.*` for documentation on any of the below functions
    local opts = { noremap = true, silent = true }
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<leader>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workleader_folders()))
      end, bufopts)
      vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, bufopts)
    end

    local lsp_flags = {
      -- This is the default in Nvim 0.7+
      debounce_text_changes = 150,
    }

    require("lspconfig").r_language_server.setup {
  on_attach = on_attach_custom,
  -- Debounce "textDocument/didChange" notifications because they are slowly
  -- processed (seen when going through completion list with `<C-N>`)
  flags = { debounce_text_changes = 150 },
}

    require("lspconfig").pyright.setup {}
--    require("lspconfig").textlsp.setup {
--       analysers = {
--         languagetool = {
--           enabled = false,
--           check_text = {
--             on_open = true,
--             on_save = true,
--             on_change = false,
--           }
--         },
--         gramformer = {
--           -- gramformer dependency needs to be installed manually
--           enabled = true,
--           gpu = false,
--           check_text = {
--             on_open = false,
--             on_save = true,
--             on_change = false,
--           }
--         },
--         hf_checker = {
--           enabled = true,
--           gpu = false,
--           model = 'pszemraj/flan-t5-large-grammar-synthesis',
--           -- model='pszemraj/grammar-synthesis-large',
--           min_length = 40,
--           check_text = {
--             on_open = false,
--             on_save = true,
--             on_change = false,
--           }
--         },
--         hf_completion = {
--           enabled = true,
--           gpu = false,
--           model = 'bert-base-multilingual-cased',
--           topk = 5,
--         },
--         openai = {
--           enabled = false,
--           api_key = '<MY_API_KEY>',
--           check_text = {
--             on_open = false,
--             on_save = false,
--             on_change = false,
--           },
--           -- model = 'text-ada-001',
--           model = 'text-babbage-001',
--           -- model = 'text-curie-001',
--           -- model = 'text-davinci-003',
--           edit_model = 'text-davinci-edit-001',
--           max_token = 16,
--         },
--         grammarbot = {
--           enabled = false,
--           api_key = '<MY_API_KEY>',
--           -- longer texts are split, this parameter sets the maximum number of splits per analysis
--           input_max_requests = 1,
--           check_text = {
--             on_open = false,
--             on_save = false,
--             on_change = false,
--           }
--         },
--       },
--       documents = {
--         org = {
--           org_todo_keywords = {
--             'TODO',
--             'IN_PROGRESS',
--             'DONE'
--           },
--         },
--         txt = {
--           parse = true,
--         },
--       },
--     }
--
require('lspconfig').sqls.setup{
    on_attach = function(client, bufnr)
        require('sqls').on_attach(client, bufnr)
    end,
}
require("lspconfig").pylsp.setup {
  filetypes = { "python" },
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    pylsp = {
      plugins = {
        pylint = {
          enabled = true,
        },
        pyright = {
          enabled = true,
        },
        textlsp = {
          enabled = true,
        },
        isort = {
          enabled = true,
        },
        pydocstyle = {
          ignore = { "D200", "D213", "D203", "D212" },
          enabled = true,
        },
        pycodestyle = {
          maxLineLength = 100
        },
        flake8 = {
          enabled = false,
        },
        black = {
          enabled = true,
          maxLineLength = 100
        },
        ruff = {
          enabled = true,
          maxLineLength = 100
        }
      }
    }
  }
}
-- function FormatFile()
--   if vim.bo.filetype == 'python' then
--     vim.cmd('Black<CR>:%s/\\s\\+$//e')
--   elseif vim.bo.filetype == 'sql' then
--   else
--     FormatFunction()
--   end
-- end
-- Try to get black good a proper
--if vim.bo.filetype == "python" then
vim.keymap.set('n', '<leader>mh', ":vertical resize -20 <CR>", { silent = true })
vim.keymap.set('n', '<leader>ml', ":vertical resize +20 <CR>", { silent = true })

--vim.g.black_linelength = 80

    --vim.cmd(":execute \"set colorcolumn=\" . (&colorcolumn == \"\" ? \"81\" : \"\")")
    vim.cmd("set fo+=t")
    vim.cmd("set textwidth=87")
    --end

    -- Key map for reload
    vim.keymap.set('n', '<leader>cc', ":tabnew ~/.config/nvim/init.lua  <CR>", { silent = true })

    vim.keymap.set('t', "<esc>", "<C-\\><C-n>", { silent = true })

    vim.opt.spell = true
    vim.opt.spelllang = 'en_us'
    -- vim.opt.spelloptions("camel")

    -- vim.highlight.create('SpellBad', 'cterm=underline ctermfg=red')
    -- hi SpellBad cterm=underline ctermfg=red

    -- copy paste
    vim.keymap.set('n', 'C-c', "\"+y")

    -- Windows helper
    in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

    if in_wsl then
      vim.g.clipboard = {
        name = 'WslClipboard',
        copy = {
          ['+'] = { 'clip.exe' },
          ['*'] = { 'clip.exe' },
        },
        paste = {
          ['+'] = {
            'powershell.exe -c [Console]::\'Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))\'' },
          ['*'] = {
            'powershell.exe -c [Console]::\'Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))\'' },
        },
        cache_enabled = 0,
      }
      --     vim.g.clipboard = {
      --         name = 'wsl clipboard',
      --         copy =  { ["+"] = { "clip.exe" },   ["*"] = { "clip.exe" } },
      --         paste = { ["+"] = { "~/.config/nvim/vim_paste" }, ["*"] = { "~/.config/nvim/vim_paste" } },
      --         cache_enabled = true
      --     }
    end
    require("jupynium").setup({
      --- For Conda environment named "jupynium",
      -- python_host = { "conda", "run", "--no-capture-output", "-n", "jupynium", "python" },
      python_host = "C:\\Users\\rory_flynn\\AppData\\Local\\Programs\\Python\\Python312\\python.exe",

      default_notebook_URL = "localhost:8888/nbclassic",

      -- Write jupyter command but without "notebook"
      -- When you call :JupyniumStartAndAttachToServer and no notebook is open,
      -- then Jupynium will open the server for you using this command. (only when notebook_URL is localhost)
      jupyter_command = "jupyter",
      --- For Conda, maybe use base environment
      --- then you can `conda install -n base nb_conda_kernels` to switch environment in Jupyter Notebook
      -- jupyter_command = { "conda", "run", "--no-capture-output", "-n", "base", "jupyter" },

      -- Used when notebook is launched by using jupyter_command.
      -- If nil or "", it will open at the git directory of the current buffer,
      -- but still navigate to the directory of the current buffer. (e.g. localhost:8888/nbclassic/tree/path/to/buffer)
      notebook_dir = nil,

      -- Used to remember the last session (password etc.).
      -- e.g. '~/.mozilla/firefox/profiles.ini'
      -- or '~/snap/firefox/common/.mozilla/firefox/profiles.ini'
      firefox_profiles_ini_path = nil,
      -- nil means the profile with Default=1
      -- or set to something like 'default-release'
      firefox_profile_name = nil,

      -- Open the Jupynium server if it is not already running
      -- which means that it will open the Selenium browser when you open this file.
      -- Related command :JupyniumStartAndAttachToServer
      auto_start_server = {
        enable = false,
        file_pattern = { "*.ju.*" },
      },

      -- Attach current nvim to the Jupynium server
      -- Without this step, you can't use :JupyniumStartSync
      -- Related command :JupyniumAttachToServer
      auto_attach_to_server = {
        enable = true,
        file_pattern = { "*.ju.*", "*.md" },
      },

      -- Automatically open an Untitled.ipynb file on Notebook
      -- when you open a .ju.py file on nvim.
      -- Related command :JupyniumStartSync
      auto_start_sync = {
        enable = false,
        file_pattern = { "*.ju.*", "*.md" },
      },

      -- Automatically keep filename.ipynb copy of filename.ju.py
      -- by downloading from the Jupyter Notebook server.
      -- WARNING: this will overwrite the file without asking
      -- Related command :JupyniumDownloadIpynb
      auto_download_ipynb = true,

      -- Automatically close tab that is in sync when you close buffer in vim.
      auto_close_tab = true,

      -- Always scroll to the current cell.
      -- Related command :JupyniumScrollToCell
      autoscroll = {
        enable = true,
        mode = "always", -- "always" or "invisible"
        cell = {
          top_margin_percent = 20,
        },
      },

      scroll = {
        page = { step = 0.5 },
        cell = {
          top_margin_percent = 20,
        },
      },

      -- Files to be detected as a jupynium file.
      -- Add highlighting, keybindings, commands (e.g. :JupyniumStartAndAttachToServer)
      -- Modify this if you already have lots of files in Jupytext format, for example.
      jupynium_file_pattern = { "*.ju.*" },

      use_default_keybindings = true,
      textobjects = {
        use_default_keybindings = true,
      },

      syntax_highlight = {
        enable = true,
      },

      -- Dim all cells except the current one
      -- Related command :JupyniumShortsightedToggle
      shortsighted = false,

      -- Configure floating window options
      -- Related command :JupyniumKernelHover
      kernel_hover = {
        floating_win_opts = {
          max_width = 84,
          border = "none",
        },
      },




    })

    -- You can link highlighting groups.
    -- This is the default (when colour scheme is unknown)
    -- Try with CursorColumn, Pmenu, Folded etc.
    vim.cmd [[
    hi! link JupyniumCodeCellSeparator CursorLine
    hi! link JupyniumMarkdownCellSeparator CursorLine
    hi! link JupyniumMarkdownCellContent CursorLine
    hi! link JupyniumMagicCommand Keyword
    ]]

    -- Please share your favourite settings on other colour schemes, so I can add defaults.
    -- Currently, tokyonight is supported.
    local cmp = require "cmp"
    local compare = cmp.config.compare

    cmp.setup {
      sources = {
        { name = "jupynium", priority = 1000 },  -- consider higher priority than LSP
        { name = "nvim_lsp", priority = 100 },
        -- ...
      },
      sorting = {
        priority_weight = 1.0,
        comparators = {
          compare.score,            -- Jupyter kernel completion shows prior to LSP
          compare.recently_used,
          compare.locality,
          -- ...
        },
      },
    }
