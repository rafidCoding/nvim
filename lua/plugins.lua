local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end



local plugins = require('plugconfigs')
local packer = require('packer')
packer.init({
  git = { clone_timeout = 120 },
})
local use = packer.use

use 'wbthomason/packer.nvim'
use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  -- event = {"BufRead", "BufNewFile"},
  event = "VimEnter",
  config = plugins.treesitter
}
use {
  'p00f/nvim-ts-rainbow',
  -- event = {"BufRead", "BufNewFile"},
  event = "VimEnter"
}
use 'ii14/onedark.nvim'
use 'glepnir/zephyr-nvim'
use 'morhetz/gruvbox'
use 'lifepillar/vim-solarized8'
use 'tomasiser/vim-code-dark'
use 'shaunsingh/nord.nvim'
use 'folke/tokyonight.nvim'
use {'dracula/vim', as = 'dracula'}
-- use {
--   'hoob3rt/lualine.nvim',
--   event = {"VimEnter", "BufRead", "BufNewFile"},
--   requires = {
--     'kyazdani42/nvim-web-devicons',
--     opt = true,
--   },
--   config = function()
--     require('lualine').setup({
--       options = {theme = 'onedark'}
--     })
--   end
-- }
use {
  'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    config = plugins.galaxyline,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
}
use {
  'akinsho/bufferline.nvim',
  event = "BufWinEnter",
  config = function()
    require("bufferline").setup{}
  end
}
use {
  'kyazdani42/nvim-tree.lua',
  -- event = "BufWinEnter"
  config = plugins.nvimtree
}
use {
  'windwp/nvim-autopairs',
  after = "nvim-cmp",
  config = plugins.autopairs
}
use {
  "numtostr/FTerm.nvim",
  event = "BufWinEnter"
}
use {
  'tweekmonster/startuptime.vim',
  event = "BufWinEnter"
}
use {
  'terrortylor/nvim-comment',
  config = function()
    require('nvim_comment').setup()
  end
}
use {
  'nvim-telescope/telescope.nvim',
  requires = {'nvim-lua/plenary.nvim'},
}
use {
  'sbdchd/neoformat',
  config = plugins.neoformat
}
use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = plugins.dashboard
}
-- use {'mg979/vim-visual-multi', branch = 'master'}
use {
  'neovim/nvim-lspconfig',
} -- Collection of configurations for built-in LSP client
use {
  'hrsh7th/nvim-cmp',
  event = "VimEnter",
  requires = {
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-vsnip', after = 'nvim-cmp'},
    {'hrsh7th/cmp-buffer', after = 'nvim-cmp', config = plugins.lspconfig},
  },
}
use {
  'hrsh7th/vim-vsnip',
  event = "VimEnter"
}
-- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
-- use 'L3MON4D3/LuaSnip' -- Snippets plugin'
-- use {
--   'hrsh7th/vim-vsnip',
--   event = "InsertEnter"
-- }
use {
  'norcalli/nvim-colorizer.lua',
  config = function()
    require'colorizer'.setup()
  end
}


use {
  'lukas-reineke/indent-blankline.nvim',
  event = "VimEnter",
  config = plugins.indentBlankline
}

use {
  'rcarriga/nvim-notify',
  event = "VimEnter",
  config = function()
    vim.notify = require("notify")
    require("notify").setup({
      timeout = 2500,
    })
  end
}

use {
  'phaazon/hop.nvim',
  as = 'hop',
  config = function()
    -- you can configure Hop the way you like here; see :h hop-config
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}

use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = plugins.gitsigns
}

use {
  'karb94/neoscroll.nvim',
  event = "VimEnter",
  config = function()
    require('neoscroll').setup()
  end
}


use {
  'mfussenegger/nvim-dap',
  requires = {
    {
      'rcarriga/nvim-dap-ui',
      event = "VimEnter",
      config = function()
        require("dapui").setup()
      end
    },
    {
      'theHamsta/nvim-dap-virtual-text',
      event = "VimEnter",
      config = function()
        vim.g.dap_virtual_text = true
      end
    }
  },
  config = plugins.dap
}