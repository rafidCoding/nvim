-- options
vim.cmd('filetype plugin indent on')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.hidden = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.opt.iskeyword:append("-")
vim.o.pumheight = 10
vim.o.fileencoding = "utf-8"
vim.o.cmdheight = 2
vim.o.splitbelow = true
vim.o.termguicolors = true
vim.o.splitright = true
vim.opt.termguicolors = true
vim.o.conceallevel = 0
vim.o.showtabline = 2
vim.o.showmode = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.updatetime = 300
vim.o.timeoutlen = 500
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.scrolloff = 3
vim.o.sidescrolloff = 5
vim.o.mouse = "a"

vim.wo.wrap = false
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"

vim.o.tabstop = 2
-- vim.bo.tabstop = 2
vim.o.softtabstop = -1
-- vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
-- vim.bo.shiftwidth = 2
vim.o.autoindent = true
-- vim.bo.autoindent = true
vim.o.expandtab = true
-- vim.bo.expandtab = true



-- vim.g.loaded_matchit           = 1
-- vim.g.loaded_logiPat           = 1
-- vim.g.loaded_rrhelper          = 1
-- vim.g.loaded_tarPlugin         = 1
-- vim.g.loaded_gzip              = 1
-- vim.g.loaded_zipPlugin         = 1
-- vim.g.loaded_2html_plugin      = 1
-- vim.g.loaded_shada_plugin      = 1
-- vim.g.loaded_spellfile_plugin  = 1
-- vim.g.loaded_netrw             = 1
-- vim.g.loaded_netrwPlugin       = 1
-- vim.g.loaded_tutor_mode_plugin = 1
-- vim.g.loaded_remote_plugins    = 1

vim.cmd[[
augroup packer_user_config
  autocmd!
  autocmd BufWritePost ~/.config/nvim/lua/plugins.lua source ~/.config/nvim/lua/plugins.lua | PackerSync
augroup end
autocmd BufWritePost ~/.config/nvim/lua/settings.lua luafile ~/.config/nvim/lua/settings.lua
autocmd BufWritePost ~/.config/nvim/lua/mappings.lua luafile ~/.config/nvim/lua/mappings.lua
autocmd BufWritePost ~/.config/nvim/lua/plugconfigs.lua luafile ~/.config/nvim/lua/plugconfigs.lua
autocmd BufNewFile  *.cpp 0r ~/.config/nvim/main.cpp
autocmd BufNewFile  *.cc 0r ~/.config/nvim/main.cpp
colorscheme zephyr
]]
