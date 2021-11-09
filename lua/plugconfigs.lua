local config = {}



function config.treesitter()
  require'nvim-treesitter.configs'.setup {
    ensure_installed = {'cpp', 'c', 'python', 'lua'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {enable = true},
    rainbow = {
      enable = true,
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      -- colors = {}, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    },
  }
end



function config.autopairs()
  local remap = vim.api.nvim_set_keymap
  local npairs = require('nvim-autopairs')

  -- skip it, if you use another global object
  -- _G.MUtils= {}

  -- MUtils.completion_confirm=function()
  --   if vim.fn.pumvisible() ~= 0  then
  --     return npairs.esc("<cr>")
  --   else
  --     return npairs.autopairs_cr()
  --   end
  -- end

  -- remap('i' , '<CR>','v:lua.MUtils.completion_confirm()', {expr = true , noremap = true})

  -- require("nvim-autopairs.completion.cmp").setup({
  --   map_cr = true, --  map <CR> on insert mode
  --   map_complete = true, -- it will auto insert `(` (map_char) after select function or method item
  --   auto_select = true, -- automatically select the first item
  --   insert = false, -- use insert confirm behavior instead of replace
  --   map_char = { -- modifies the function or method delimiter by filetypes
  --     all = '(',
  --     tex = '{'
  --   }
  -- })


  -- local npairs = require("nvim-autopairs")

  require('nvim-autopairs').setup({
    check_ts = true
  })
  -- If you want insert `(` after select function or method item
  local cmp_autopairs = require('nvim-autopairs.completion.cmp')
  local cmp = require('cmp')
  cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

end



function config.dashboard()
  vim.g.dashboard_custom_header = {
    -- [[__     __                           _   _       _           ]],
    -- [[\ \   / /_ _ _ __   ___  _   _ _ __| \ | |_   _(_)_ __ ___  ]],
    -- [[ \ \ / / _` | '_ \ / _ \| | | | '__|  \| \ \ / / | '_ ` _ \ ]],
    -- [[  \ V / (_| | |_) | (_) | |_| | |  | |\  |\ V /| | | | | | |]],
    -- [[   \_/ \__,_| .__/ \___/ \__,_|_|  |_| \_| \_/ |_|_| |_| |_|]],
    -- [[            |_|                                             ]]
    [[⠀⠀⠀⣠⣾⣶⠀⠀⠀⠀⠀⠀⠀⠀⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⢀⣴⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⣿⣿⣿⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⠀⠀⠀⢀⢀⠀⠀⠀⠀⠀⢀⢀⢀⢈⢉⢉⠀⢀⢀⢀⠀⢀⢀⢀⠀⠀⢀⢀⢀⢀⠀⠀]],
    [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣄⢶⠛⠛⠛⢷⣄⠀⠀⣠⣶⠛⠋⠛⠳⣤⠀⠀⣠⣶⠛⠛⠛⠻⣶⣀⢹⣿⣿⡀⠀⠀⠀⣾⣿⡟⢸⣿⣿⠀⢸⣿⣿⣾⢿⢿⣿⣷⣴⣿⢿⢿⣿⣿⣄]],
    [[⣿⣿⣿⣿⣿⠻⣿⣿⣿⣿⣿⣤⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣇⠀⠀⠀⠀⠀⣿⢀⣰⣟⣀⣀⣀⣀⣀⣘⣇⢰⣿⠀⠀⠀⠀⠀⠈⣿⡄⢻⣿⣿⠀⢀⣼⣿⣿⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⢹⣿⣿⠘⠀⠀⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⠀⠈⢿⣿⣿⣿⣿⣷⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⢀⢿⣏⠈⠈⠈⠈⠈⠈⠁⢻⣇⠀⠀⠀⠀⠀⢀⣿⡇⠀⢿⣿⣷⣰⣿⣿⠀⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⣸⣿⣿⠀⠀⠀⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⢀⠈⣿⣀⠀⠀⠀⢀⢀⠀⠈⣿⣀⠀⠀⠀⢀⣠⣿⠀⠀⠀⢿⣿⣿⣿⠀⠀⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⣸⣿⣿⠀⠀⠀⣿⣿⣿]],
    [[⣿⣿⣿⣿⣿⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠛⠃⠀⠀⠀⠀⠀⠛⠀⠀⠀⠉⠛⠳⠚⠛⠉⠀⠀⠀⠉⠛⠲⠒⠛⠉⠀⠀⠀⠀⠈⠛⠛⠁⠀⠀⠀⠘⠛⠛⠀⠘⠛⠛⠀⠀⠀⠚⠛⠛⠀⠀⠀⠛⠛⠛]],
    [[⠙⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠙⢿⣿⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    [[⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]]

  }
  
  vim.g.dashboard_default_executive = 'telescope'
  
  vim.g.dashboard_custom_section = {
    a = {description = {'  Find File          '}, command = 'Telescope find_files'},
    d = {description = {'  Search Text        '}, command = 'Telescope live_grep'},
    b = {description = {'  Recent Files       '}, command = 'Telescope oldfiles'},
    e = {description = {'  Config             '}, command = 'edit ~/.config/nvim/init.lua'},
  }
  vim.g.dashboard_custom_footer = {'Do one thing, do it well - Unix philosophy'}
end


function config.neoformat()
  vim.cmd[[
    let g:neoformat_cpp_clangformat = {
        \ 'exe': 'clang-format',
        \ 'args': ['--style="{IndentWidth: 2}"']
    \}
    let g:neoformat_enabled_cpp = ['clangformat']
    let g:neoformat_enabled_c = ['clangformat']
    augroup fmt
      autocmd!
      autocmd BufWritePost *.cpp,*.cc,*.c Neoformat
    augroup END
  ]]
end



function config.nvimtree()
  -- nvim-tree setup
  vim.g.nvim_tree_gitignore = 1
  vim.g.nvim_tree_indent_markers = 1
  require'nvim-tree'.setup {
    disable_netrw = false,
    auto_open = 1,
    auto_close = 1
  }
  vim.g.nvim_tree_highlight_opened_files = 1
  vim.g.nvim_tree_add_trailing = 1
end



function config.cmp()
  -- lspconfig cmp setup
  local cmp = require'cmp'

  local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
  end

  local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
  end
  
  cmp.setup({
    snippet = {
      expand = function(args)
        -- require('luasnip').lsp_expand(args.body)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` user.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      -- ['<TAB>'] = cmp.mapping.select_next_item(),
      -- ['<TAB>'] = cmp.mapping(function(fallback))
      -- ['<S-TAB>'] = cmp.mapping.select_prev_item()
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.fn["vsnip#available"](1) == 1 then
          feedkey("<Plug>(vsnip-expand-or-jump)", "")
        elseif has_words_before() then
          cmp.complete()
        else
          fallback() -- The fallback function sends a already mapped key. In this case, it's probably `<Tab>`.
        end
      end, { "i", "s" }),
  
      ["<S-Tab>"] = cmp.mapping(function()
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.fn["vsnip#jumpable"](-1) == 1 then
          feedkey("<Plug>(vsnip-jump-prev)", "")
        end
      end, { "i", "s" }),
    },
    sources = {
      { name = 'nvim_lsp' },
      -- { name = 'luasnip' },
      { name = 'vsnip' },
      { name = "latex_symbols" }
    },
    formatting = {
      format = require("lspkind").cmp_format({with_text = true, menu = ({
          buffer = "[Buffer]",
          nvim_lsp = "[LSP]",
          luasnip = "[LuaSnip]",
          nvim_lua = "[Lua]",
          latex_symbols = "[Latex]",
        })}),
    },    
  })
end
function config.lspconfig()
  -- Setup lspconfig.
  require'lspconfig'.clangd.setup {
    capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
  require'lspconfig'.texlab.setup {
    capabilities = require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
  local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

  for type, icon in pairs(signs) do
    local hl = "LspDiagnosticsSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end
end

function config.galaxyline()
  local gl = require('galaxyline')
  local theme = {}
  theme.gruvboxcolors = {
      bg = '#3c3836',
      -- fg = '#ebdbb2',
      fg = 'd5c4a1',
      yellow = '#fabd2f',
      cyan = '#8ec07c',
      darkblue = '#458588',
      green = '#b8bb26',
      orange = '#fe8019',
      violet = '#d3869b',
      magenta = '#b16286',
      blue = '#83a598',
      red = '#fb4934'
    }
  theme.solarizedcolors = {
    bg = '#073642',
    fg = '#eee8d5',
    yellow = '#b58900',
    cyan = '#2aa198',
    darkblue = '#268bd2',
    green = '#859900',
    orange = '#cb4b16',
    violet = '#6c71c4',
    magenta = '#d33682',
    blue = '#839496',
    red = '#dc322f'
  }
  theme.codedarkcolors = {
    bg = '#353535',
    fg = '#d4d4d4',
    yellow = '#dcdcaa',
    cyan = '#4ec9b0',
    darkblue = '#569cd6',
    green = '#608b4e',
    orange = '#ce9178',
    violet = '#646695',
    magenta = '#c586c0',
    blue = '#9cdcfe',
    red = '#f44747'
  }
  local colors = require('galaxyline.theme').default  
  local condition = require('galaxyline.condition')
  local gls = gl.section
  gl.short_line_list = {'NvimTree','vista','dbui','packer'}
  
  gls.left[1] = {
    RainbowRed = {
      provider = function() return '▊ ' end,
      highlight = {colors.blue,colors.bg}
    },
  }
  gls.left[2] = {
    ViMode = {
      provider = function()
        -- auto change color according the vim mode
        local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                            [''] = colors.blue,V=colors.blue,
                            c = colors.magenta,no = colors.red,s = colors.orange,
                            S=colors.orange,[''] = colors.orange,
                            ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                            cv = colors.red,ce=colors.red, r = colors.cyan,
                            rm = colors.cyan, ['r?'] = colors.cyan,
                            ['!']  = colors.red,t = colors.red}
        vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()] ..' guibg='..colors.bg)
        return '  '
      end,
    },
  }
  gls.left[3] = {
    FileSize = {
      provider = 'FileSize',
      condition = condition.buffer_not_empty,
      highlight = {colors.fg,colors.bg}
    }
  }
  gls.left[4] ={
    FileIcon = {
      provider = 'FileIcon',
      condition = condition.buffer_not_empty,
      highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
    },
  }
  
  gls.left[5] = {
    FileName = {
      provider = 'FileName',
      condition = condition.buffer_not_empty,
      highlight = {colors.fg,colors.bg,'bold'}
    }
  }
  
  gls.left[6] = {
    LineInfo = {
      provider = 'LineColumn',
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.fg,colors.bg},
    },
  }
  
  gls.left[7] = {
    PerCent = {
      provider = 'LinePercent',
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.fg,colors.bg,'bold'},
    }
  }
  
  gls.left[8] = {
    DiagnosticError = {
      provider = 'DiagnosticError',
      icon = '  ',
      highlight = {colors.red,colors.bg}
    }
  }
  gls.left[9] = {
    DiagnosticWarn = {
      provider = 'DiagnosticWarn',
      icon = '  ',
      highlight = {colors.yellow,colors.bg},
    }
  }
  
  gls.left[10] = {
    DiagnosticHint = {
      provider = 'DiagnosticHint',
      icon = '  ',
      highlight = {colors.cyan,colors.bg},
    }
  }
  
  gls.left[11] = {
    DiagnosticInfo = {
      provider = 'DiagnosticInfo',
      icon = '  ',
      highlight = {colors.blue,colors.bg},
    }
  }
  
  gls.left[12] = {
    ShowLspClient = {
      provider = 'GetLspClient',
      condition = function ()
        local tbl = {['dashboard'] = true,['']=true}
        if tbl[vim.bo.filetype] then
          return false
        end
        return true
      end,
      icon = ' LSP:',
      highlight = {colors.yellow,colors.bg,'bold'}
    }
  }
  
  gls.right[1] = {
    FileEncode = {
      provider = 'FileEncode',
      condition = condition.hide_in_width,
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.green,colors.bg,'bold'}
    }
  }
  
  gls.right[2] = {
    FileFormat = {
      provider = 'FileFormat',
      condition = condition.hide_in_width,
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.green,colors.bg,'bold'}
    }
  }
  
  gls.right[3] = {
    GitIcon = {
      provider = function() return '  ' end,
      condition = condition.check_git_workspace,
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.violet,colors.bg,'bold'},
    }
  }
  
  gls.right[4] = {
    GitBranch = {
      provider = 'GitBranch',
      condition = condition.check_git_workspace,
      highlight = {colors.violet,colors.bg,'bold'},
    }
  }
  
  gls.right[5] = {
    DiffAdd = {
      provider = 'DiffAdd',
      condition = condition.hide_in_width,
      icon = '  ',
      highlight = {colors.green,colors.bg},
    }
  }
  gls.right[6] = {
    DiffModified = {
      provider = 'DiffModified',
      condition = condition.hide_in_width,
      icon = ' 柳',
      highlight = {colors.orange,colors.bg},
    }
  }
  gls.right[7] = {
    DiffRemove = {
      provider = 'DiffRemove',
      condition = condition.hide_in_width,
      icon = '  ',
      highlight = {colors.red,colors.bg},
    }
  }
  
  gls.right[8] = {
    RainbowBlue = {
      provider = function() return ' ▊' end,
      highlight = {colors.blue,colors.bg}
    },
  }
  
  gls.short_line_left[1] = {
    BufferType = {
      provider = 'FileTypeName',
      separator = ' ',
      separator_highlight = {'NONE',colors.bg},
      highlight = {colors.blue,colors.bg,'bold'}
    }
  }
  
  gls.short_line_left[2] = {
    SFileName = {
      provider =  'SFileName',
      condition = condition.buffer_not_empty,
      highlight = {colors.fg,colors.bg,'bold'}
    }
  }
  
  gls.short_line_right[1] = {
    BufferIcon = {
      provider= 'BufferIcon',
      highlight = {colors.fg,colors.bg}
    }
  }
end


function config.indentBlankline()
  vim.g.indent_blankline_filetype_exclude = {
    "dashboard",
    "dotooagenda",
    "log",
    "fugitive",
    "gitcommit",
    "packer",
    "vimwiki",
    "markdown",
    "json",
    "txt",
    "vista",
    "help",
    "todoist",
    "NvimTree",
    "peekaboo",
    "git",
    "TelescopePrompt",
    "undotree",
    "flutterToolsOutline",
    "" -- for all buffers without a file type
  }
  vim.opt.list = true
  vim.opt.listchars:append("space:⋅")
  vim.opt.listchars:append("eol:↴")

  require("indent_blankline").setup {
      space_char_blankline = " ",
      show_current_context = true,
  }
end

function config.gitsigns()
  require('gitsigns').setup {
    signs = {
      add = {hl = 'GitGutterAdd', text = '▋'},
      change = {hl = 'GitGutterChange',text= '▋'},
      delete = {hl= 'GitGutterDelete', text = '▋'},
      topdelete = {hl ='GitGutterDeleteChange',text = '▔'},
      changedelete = {hl = 'GitGutterChange', text = '▎'},
    },
    keymaps = {
       -- Default keymap options
       noremap = true,
       buffer = true,

       ['n ]g'] = { expr = true, "&diff ? ']g' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
       ['n [g'] = { expr = true, "&diff ? '[g' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

       ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
       ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
       ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
       ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
       ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',

       -- Text objects
       ['o ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>',
       ['x ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>'
     },
     current_line_blame = true
  }
end

function config.dap()
  require('dapui').setup()
  local dap = require('dap')
  dap.adapters.cppdbg = {
    type = 'executable',
    command = '/home/gitpod/.config/nvim/debugAdapters/extension/debugAdapters/bin/OpenDebugAD7',
  }
  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = '${fileDirname}/${fileBasenameNoExtension}',
      -- program = function()
      --   return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
      -- end,
      cwd = '${workspaceFolder}',
      stopOnEntry = true,
    }
  }
end

return config
