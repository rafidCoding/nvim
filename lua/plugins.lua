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
-- use 'ii14/onedark.nvim'
use {
  'glepnir/zephyr-nvim',
  event = {
    "VimEnter",
    "BufRead",
    "BufNewFile"
  },
  config = function()
    vim.cmd('colorscheme zephyr')
  end
}
-- use 'morhetz/gruvbox'
-- use 'lifepillar/vim-solarized8'
-- use 'tomasiser/vim-code-dark'
-- use 'shaunsingh/nord.nvim'
-- use 'folke/tokyonight.nvim'
-- use {'dracula/vim', as = 'dracula'}
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
    -- branch = 'main',
    event = {
      "VimEnter",
      "BufRead",
      "BufNewFile"
    },
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
  cmd = "NvimTreeToggle",
  config = plugins.nvimtree
}
use {
  'windwp/nvim-autopairs',
  after = {
    "nvim-treesitter",
    "nvim-cmp"
  },
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
  cmd = "Telescope"
}
use {
  'sbdchd/neoformat',
  -- event = "VimEnter",
  event = {'VimEnter', "BufWinEnter", "BufRead", "BufNewFile"},
  config = plugins.neoformat
}
use {
  'glepnir/dashboard-nvim',
  event = {'VimEnter', "BufWinEnter, BufRead", "BufNewFile"},
  config = plugins.dashboard
}
-- use {'mg979/vim-visual-multi', branch = 'master'}
use {
  'neovim/nvim-lspconfig',
  event = {
    "VimEnter",
    "BufWinEnter",
    "BufRead",
    "BufNewFile"
  },
  requires = {'onsails/lspkind-nvim'},
  config = plugins.lspconfig
} -- Collection of configurations for built-in LSP client
use {
  'hrsh7th/nvim-cmp',
  event = {
    "BufRead",
    "BufNewFile",
    "InsertEnter"
  },
  requires = {
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-vsnip', after = 'nvim-cmp'},
    {'hrsh7th/cmp-buffer', after = 'nvim-cmp'},
    {'kdheepak/cmp-latex-symbols', after = 'nvim-cmp'}
  },
  config = plugins.cmp
}
use {
  'hrsh7th/vim-vsnip',
  requires = {
    'hrsh7th/vim-vsnip-integ',
    'rafamadriz/friendly-snippets'
  },
  event = "InsertEnter"
}
-- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
-- use 'L3MON4D3/LuaSnip' -- Snippets plugin'
-- use {
--   'hrsh7th/vim-vsnip',
--   event = "InsertEnter"
-- }
use {
  'norcalli/nvim-colorizer.lua',
  event = {
    "BufRead",
    "BufNewFile"
  },
  config = function()
    require'colorizer'.setup()
  end
}


use {
  'lukas-reineke/indent-blankline.nvim',
  -- event = "VimEnter",
  event = {
    "VimEnter",
    "BufRead",
    "BufNewFile"
  },
  config = plugins.indentBlankline
}

use {
  'rcarriga/nvim-notify',
  -- event = "VimEnter",
  after = "zephyr-nvim",
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
  event = {
    "BufRead",
    "BufNewFile"
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


-- use {
--   'mfussenegger/nvim-dap',
--   requires = {
--     {
--       'rcarriga/nvim-dap-ui',
--       event = "VimEnter",
--       config = function()
--         require("dapui").setup()
--       end
--     },
--     {
--       'theHamsta/nvim-dap-virtual-text',
--       event = "VimEnter",
--       config = function()
--         vim.g.dap_virtual_text = true
--       end
--     }
--   },
--   config = plugins.dap
-- }

use {
  'rcarriga/nvim-dap-ui',
  event = {
    "BufRead",
    "BufNewFile"
  },
  requires = {
    "mfussenegger/nvim-dap",
    -- "jbyuki/one-small-step-for-vimkind"
  },
  config = plugins.dap
}
