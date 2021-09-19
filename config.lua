-- General

lvim.format_on_save = true
lvim.colorscheme = 'onedarker'
lvim.lint_on_save = true

-- Keymappings [view all the defaults by pressing <leader>Lk]

lvim.leader = 'space' -- add your own keymapping
lvim.keys.normal_mode['<C-s>'] = ':w<cr>'

-- LSP

lvim.lsp.diagnostics.virtual_text = false

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = 'left'
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.auto_open = 0
lvim.builtin.nvimtree.ignore = { '.git', '.cache' }

-- Whichkey

lvim.builtin.which_key.mappings.l.d = { '<cmd>TroubleToggle<cr>', 'Diagnostics' }
lvim.builtin.which_key.mappings.l.R = { '<cmd>TroubleToggle lsp_references<cr>', 'References' }
lvim.builtin.which_key.mappings.l.o = { '<cmd>SymblosOutline<cr>', 'Outline' }
lvim.builtin.which_key.mappings.T.h = { '<cmd>TSHighlightCapturesUnderCursor<cr>', 'Highlight' }
lvim.builtin.which_key.mappings.T.p = { '<cmd>TSPlaygroundToggle<cr>', 'Playgound' }
lvim.builtin.which_key.mappings['z'] = { '<cmd>ZenMode<cr>', 'Zen' }
lvim.builtin.which_key.mappings['r'] = {
  name = 'Replace',
  r = { "<cmd>lua require('spectre').open()<cr>", 'Replace' },
  w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", 'Replace Word' },
  f = { "<cmd>lua require('spectre').open_file_search()<cr>", 'Replace Buffer' },
}

-- Treesitter

lvim.builtin.treesitter.ensure_installed = {
  'bash',
  'python',
  'elm',
  'html',
  'javascript',
  'lua',
}

lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.playground.enable = true
lvim.builtin.treesitter.autotag.enable = true

-- Additional Plugins

lvim.plugins = {
  { 'lunarvim/colorschemes' },
  { 'lunarvim/onedarker' },
  { 'folke/tokyonight.nvim' },
  { 'folke/trouble.nvim', cmd = 'TroubleToggle' },
  { 'sindrets/diffview.nvim', even = 'BufRead' },
  { 'simrat39/symbols-outline.nvim', cmd = 'SymbolsOutline' },
  { 'nvim-treesitter/playground', event = 'Bufread' },
  { 'windwp/nvim-ts-autotag', event = 'InsertEnter' },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('user.colorizer').config()
    end,
  },
  {
    'ray-x/lsp_signature.nvim',
    event = 'InsertEnter',
    config = function()
      require('user.lsp_signature').config()
    end,
  },
  {
    'unblevable/quick-scope',
    config = function()
      require('user.quickscope')
    end,
  },
  --   'lukas-reineke/indent-blankline.nvim',
  -- {
  --   config = function()
  --     require('user.blankline')
  --   end,
  -- },
  {
    'ruifm/gitlinker.nvim',
    config = function()
      require('user.gitlinker').config()
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
    'nacro90/numb.nvim',
    event = 'BufRead',
    config = function()
      require('user.numb').config()
    end,
  },
  {
    'monaqa/dial.nvim',
    event = 'BufRead',
    config = function()
      require('user.dial').config()
    end,
  },
  {
    'karb94/neoscroll.nvim',
    config = function()
      require('user.neoscroll').config()
    end,
  },
  {
    'vuki656/package-info.nvim',
    config = function()
      require('user.package-info')
    end,
    ft = 'json',
  },
  -- {
  --   'rcarriga/nvim-notify',
  --   event = 'BufRead',
  --   config = function()
  --     require('user.notify').config()
  --   end,
  -- },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('user.zen').config()
    end,
  },
  {
    'blackCauldron7/surround.nvim',
    config = function()
      require('surround').setup({})
    end,
  },
  {
    'windwp/nvim-spectre',
    event = 'BufRead',
    config = function()
      require('user.spectre').config()
    end,
  },
  {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    ft = 'markdown',
  },
}
