-- general
lvim.log.level = 'warn'

lvim.format_on_save = true

lvim.colorscheme = 'tokyonight'
vim.g.tokyonight_style = 'night'

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = 'space'
-- add your own keymapping
lvim.keys.normal_mode['<C-s>'] = ':w<cr>'

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = 'left'
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  'bash',
  'c',
  'elm',
  'javascript',
  'json',
  'lua',
  'python',
  'typescript',
  'css',
  'rust',
  'java',
  'yaml',
}

lvim.builtin.treesitter.ignore_install = { 'haskell' }
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
  { 'folke/tokyonight.nvim' },
  {
    'blackCauldron7/surround.nvim',
    config = function()
      require('surround').setup({})
    end,
  },
  {
    'unblevable/quick-scope',
    config = function()
      require('user.quickscope')
    end,
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('user.neoscroll').config()
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    ft = 'markdown',
  },
  {
    'folke/todo-comments.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('todo-comments').setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  {
    'andymass/vim-matchup',
    event = 'CursorMoved',
    config = function()
      require('user.matchup')
    end,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('user.colorizer').config()
    end,
  },
}
