local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
vim.g.mapleader = " "
map('n', '<Tab>', ':BufferLineCycleNext<CR>', opt)
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', opt)

map('n', '<leader>e', ':NvimTreeToggle<CR>', opt)

map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opt)
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opt)
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opt)
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opt)

map('n', '<M-h>', '<C-w>h', opt)
map('n', '<M-j>', '<C-w>j', opt)
map('n', '<M-k>', '<C-w>k', opt)
map('n', '<M-l>', '<C-w>l', opt)

map('n', 'U', '<C-r>', opt)
map('n', '<leader>v', '<C-v>', opt)
map('i', 'jk', '<Esc>', opt)
map('i', 'jj', '<Esc>l', opt)

map('n', '<leader>nf', '<cmd>Neoformat<cr>', opt)

local cpp = {
	build = '<cmd>lua require("FTerm").scratch({ cmd = {"g++", "-o", vim.fn.expand("%:r"), vim.fn.expand("%")} })<cr>',
	run = '<cmd>lua require("FTerm").scratch({ cmd = "./" .. vim.fn.expand("%:r") })<cr>'
}

map('n', '<leader>b', cpp.build, opt)
map('n', '<leader>r', cpp.run, opt)

