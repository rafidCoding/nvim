-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/gitpod/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/gitpod/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/gitpod/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/gitpod/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/gitpod/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FTerm.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/FTerm.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/gitpod/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-vsnip"] = {
    after_files = { "/home/gitpod/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/cmp-vsnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\25\0\0\4\0\23\0!6\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0005\1\n\0005\2\b\0005\3\a\0=\3\t\2=\2\v\0015\2\r\0005\3\f\0=\3\t\2=\2\14\0015\2\16\0005\3\15\0=\3\t\2=\2\17\0015\2\19\0005\3\18\0=\3\t\2=\2\20\1=\1\6\0006\0\0\0009\0\1\0005\1\22\0=\1\21\0K\0\1\0\1\2\0\0/Do one thing, do it well - Unix philosophy\28dashboard_custom_footer\6e\1\0\1\fcommand!edit ~/.config/nvim/init.lua\1\2\0\0\29  Config             \6b\1\0\1\fcommand\23Telescope oldfiles\1\2\0\0\29  Recent Files       \6d\1\0\1\fcommand\24Telescope live_grep\1\2\0\0\29  Search Text        \6a\1\0\0\16description\1\0\1\fcommand\25Telescope find_files\1\2\0\0\29  Find File          \29dashboard_custom_section\14telescope dashboard_default_executive\1\f\0\0�\1⠀⠀⠀⣠⣾⣶⠀⠀⠀⠀⠀⠀⠀⠀⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⢀⣴⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⣿⣿⣿⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣶⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢀⠀⠀⠀⢀⢀⠀⠀⠀⠀⠀⢀⢀⢀⢈⢉⢉⠀⢀⢀⢀⠀⢀⢀⢀⠀⠀⢀⢀⢀⢀⠀⠀�\1⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣄⢶⠛⠛⠛⢷⣄⠀⠀⣠⣶⠛⠋⠛⠳⣤⠀⠀⣠⣶⠛⠛⠛⠻⣶⣀⢹⣿⣿⡀⠀⠀⠀⣾⣿⡟⢸⣿⣿⠀⢸⣿⣿⣾⢿⢿⣿⣷⣴⣿⢿⢿⣿⣿⣄�\1⣿⣿⣿⣿⣿⠻⣿⣿⣿⣿⣿⣤⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⣇⠀⠀⠀⠀⠀⣿⢀⣰⣟⣀⣀⣀⣀⣀⣘⣇⢰⣿⠀⠀⠀⠀⠀⠈⣿⡄⢻⣿⣿⠀⢀⣼⣿⣿⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⢹⣿⣿⠘⠀⠀⣿⣿⣿�\1⣿⣿⣿⣿⣿⠀⠈⢿⣿⣿⣿⣿⣷⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⢀⢿⣏⠈⠈⠈⠈⠈⠈⠁⢻⣇⠀⠀⠀⠀⠀⢀⣿⡇⠀⢿⣿⣷⣰⣿⣿⠀⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⣸⣿⣿⠀⠀⠀⣿⣿⣿�\1⣿⣿⣿⣿⣿⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⢀⠈⣿⣀⠀⠀⠀⢀⢀⠀⠈⣿⣀⠀⠀⠀⢀⣠⣿⠀⠀⠀⢿⣿⣿⣿⠀⠀⠀⢸⣿⣿⠀⢸⣿⣿⠀⠀⠀⣸⣿⣿⠀⠀⠀⣿⣿⣿�\1⣿⣿⣿⣿⣿⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠛⠃⠀⠀⠀⠀⠀⠛⠀⠀⠀⠉⠛⠳⠚⠛⠉⠀⠀⠀⠉⠛⠲⠒⠛⠉⠀⠀⠀⠀⠈⠛⠛⠁⠀⠀⠀⠘⠛⠛⠀⠘⠛⠛⠀⠀⠀⠚⠛⠛⠀⠀⠀⠛⠛⠛�\1⠙⣿⣿⣿⣿⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⠀⠀⠙⢿⣿⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀�\1⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\28dashboard_custom_header\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t▊ �\3\0\0\a\1&\0M5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0'\5#\0-\6\0\0009\6$\6&\3\6\3B\1\2\1'\1%\0L\1\2\0\2�\n  \abg\f guibg=\tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bredS\0\0\2\0\4\0\v5\0\0\0006\1\1\0009\1\2\0019\1\3\0018\1\1\0\15\0\1\0X\2\2�+\1\1\0L\1\2\0+\1\2\0L\1\2\0\rfiletype\abo\bvim\1\0\2\14dashboard\2\5\2\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n  \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ▊�\25\1\0\f\0}\0�\0026\0\0\0'\2\1\0B\0\2\0024\1\0\0005\2\3\0=\2\2\0015\2\5\0=\2\4\0015\2\a\0=\2\6\0016\2\0\0'\4\b\0B\2\2\0029\2\t\0026\3\0\0'\5\n\0B\3\2\0029\4\v\0005\5\r\0=\5\f\0009\5\14\0045\6\21\0005\a\16\0003\b\15\0=\b\17\a4\b\3\0009\t\18\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a\22\6>\6\1\0059\5\14\0045\6\25\0005\a\24\0003\b\23\0=\b\17\a=\a\26\6>\6\2\0059\5\14\0045\6\31\0005\a\27\0009\b\28\3=\b\29\a4\b\3\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a \6>\6\3\0059\5\14\0045\6$\0005\a!\0009\b\28\3=\b\29\a4\b\3\0006\t\0\0'\v\"\0B\t\2\0029\t#\t>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a%\6>\6\4\0059\5\14\0045\6(\0005\a&\0009\b\28\3=\b\29\a5\b'\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a)\6>\6\5\0059\5\14\0045\6-\0005\a*\0005\b+\0009\t\19\2>\t\2\b=\b,\a4\b\3\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a.\6>\6\6\0059\5\14\0045\0062\0005\a/\0005\b0\0009\t\19\2>\t\2\b=\b,\a5\b1\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a3\6>\6\a\0059\5\14\0045\0066\0005\a4\0004\b\3\0009\t5\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a7\6>\6\b\0059\5\14\0045\6:\0005\a8\0004\b\3\0009\t9\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a;\6>\6\t\0059\5\14\0045\6>\0005\a<\0004\b\3\0009\t=\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a?\6>\6\n\0059\5\14\0045\6A\0005\a@\0004\b\3\0009\t\18\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\aB\6>\6\v\0059\5\14\0045\6F\0005\aC\0003\bD\0=\b\29\a5\bE\0009\t9\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\aG\6>\6\f\0059\5H\0045\6N\0005\aI\0009\bJ\3=\b\29\a5\bK\0009\t\19\2>\t\2\b=\b,\a5\bM\0009\tL\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\aO\6>\6\1\0059\5H\0045\6S\0005\aP\0009\bJ\3=\b\29\a5\bQ\0009\t\19\2>\t\2\b=\b,\a5\bR\0009\tL\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\aT\6>\6\2\0059\5H\0045\6[\0005\aV\0003\bU\0=\b\17\a9\bW\3=\b\29\a5\bX\0009\t\19\2>\t\2\b=\b,\a5\bZ\0009\tY\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a\\\6>\6\3\0059\5H\0045\6_\0005\a]\0009\bW\3=\b\29\a5\b^\0009\tY\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a`\6>\6\4\0059\5H\0045\6b\0005\aa\0009\bJ\3=\b\29\a4\b\3\0009\tL\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\ac\6>\6\5\0059\5H\0045\6f\0005\ad\0009\bJ\3=\b\29\a4\b\3\0009\te\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\ag\6>\6\6\0059\5H\0045\6i\0005\ah\0009\bJ\3=\b\29\a4\b\3\0009\t5\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\aj\6>\6\a\0059\5H\0045\6m\0005\al\0003\bk\0=\b\17\a4\b\3\0009\t\18\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\an\6>\6\b\0059\5o\0045\6s\0005\ap\0005\bq\0009\t\19\2>\t\2\b=\b,\a5\br\0009\t\18\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\at\6>\6\1\0059\5o\0045\6w\0005\au\0009\b\28\3=\b\29\a5\bv\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\ax\6>\6\2\0059\5y\0045\6{\0005\az\0004\b\3\0009\t\30\2>\t\1\b9\t\19\2>\t\2\b=\b\20\a=\a|\6>\6\1\0052\0\0�K\0\1\0\15BufferIcon\1\0\0\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\rprovider\17FileTypeName\14separator\6 \20short_line_left\16RainbowBlue\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\2\ticon\n  \rprovider\15DiffRemove\17DiffModified\1\0\0\vorange\1\0\2\ticon\t 柳\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\2\ticon\n  \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\15FileFormat\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\rprovider\15FileFormat\14separator\6 \15FileEncode\1\0\0\1\4\0\0\0\0\tbold\ngreen\1\2\0\0\tNONE\18hide_in_width\1\0\2\rprovider\15FileEncode\14separator\6 \nright\18ShowLspClient\1\0\0\1\4\0\0\0\0\tbold\0\1\0\2\ticon\r LSP:\rprovider\17GetLspClient\19DiagnosticInfo\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\tcyan\1\0\2\ticon\n  \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\vyellow\1\0\2\ticon\n  \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\bred\1\0\2\ticon\n  \rprovider\20DiagnosticError\fPerCent\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\rprovider\16LinePercent\14separator\6 \rLineInfo\1\0\0\24separator_highlight\1\2\0\0\tNONE\1\0\2\rprovider\15LineColumn\14separator\6 \rFileName\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\1\0\1\rprovider\rFileIcon\rFileSize\1\0\0\afg\14condition\21buffer_not_empty\1\0\1\rprovider\rFileSize\vViMode\1\0\0\1\0\0\0\15RainbowRed\1\0\0\14highlight\abg\tblue\rprovider\1\0\0\0\tleft\1\5\0\0\rNvimTree\nvista\tdbui\vpacker\20short_line_list\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\1\0\v\vviolet\f#646695\afg\f#d4d4d4\rdarkblue\f#569cd6\tblue\f#9cdcfe\bred\f#f44747\fmagenta\f#c586c0\abg\f#353535\vorange\f#ce9178\ngreen\f#608b4e\tcyan\f#4ec9b0\vyellow\f#dcdcaa\19codedarkcolors\1\0\v\vviolet\f#6c71c4\afg\f#eee8d5\rdarkblue\f#268bd2\tblue\f#839496\bred\f#dc322f\fmagenta\f#d33682\abg\f#073642\vorange\f#cb4b16\ngreen\f#859900\tcyan\f#2aa198\vyellow\f#b58900\20solarizedcolors\1\0\v\vviolet\f#d3869b\afg\vd5c4a1\rdarkblue\f#458588\tblue\f#83a598\bred\f#fb4934\fmagenta\f#b16286\abg\f#3c3836\vorange\f#fe8019\ngreen\f#b8bb26\tcyan\f#8ec07c\vyellow\f#fabd2f\18gruvboxcolors\15galaxyline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\5\0\22\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\0025\3\16\0005\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\2B\0\2\1K\0\1\0\fkeymaps\tn [g\1\2\1\0@&diff ? '[g' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'\texpr\2\tn ]g\1\2\1\0@&diff ? ']g' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'\texpr\2\1\0\t\to ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\tx ih2:<C-U>lua require\"gitsigns\".text_object()<CR>\fnoremap\2\17n <leader>hb0<cmd>lua require\"gitsigns\".blame_line()<CR>\17n <leader>hp2<cmd>lua require\"gitsigns\".preview_hunk()<CR>\17n <leader>hr0<cmd>lua require\"gitsigns\".reset_hunk()<CR>\vbuffer\2\17n <leader>hu5<cmd>lua require\"gitsigns\".undo_stage_hunk()<CR>\17n <leader>hs0<cmd>lua require\"gitsigns\".stage_hunk()<CR>\nsigns\1\0\1\23current_line_blame\2\17changedelete\1\0\2\ahl\20GitGutterChange\ttext\b▎\14topdelete\1\0\2\ahl\26GitGutterDeleteChange\ttext\b▔\vdelete\1\0\2\ahl\20GitGutterDelete\ttext\b▋\vchange\1\0\2\ahl\20GitGutterChange\ttext\b▋\badd\1\0\0\1\0\2\ahl\17GitGutterAdd\ttext\b▋\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  hop = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/hop"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\4\0\14\0\0296\0\0\0009\0\1\0005\1\3\0=\1\2\0006\0\0\0009\0\4\0+\1\2\0=\1\5\0006\0\0\0009\0\4\0009\0\6\0\18\2\0\0009\0\a\0'\3\b\0B\0\3\0016\0\0\0009\0\4\0009\0\6\0\18\2\0\0009\0\a\0'\3\t\0B\0\3\0016\0\n\0'\2\v\0B\0\2\0029\0\f\0005\2\r\0B\0\2\1K\0\1\0\1\0\2\25show_current_context\2\25space_char_blankline\6 \nsetup\21indent_blankline\frequire\feol:↴\14space:⋅\vappend\14listchars\tlist\bopt\1\21\0\0\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\tjson\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\5&indent_blankline_filetype_exclude\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  neoformat = {
    config = { "\27LJ\2\n�\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0�\2    let g:neoformat_cpp_clangformat = {\n        \\ 'exe': 'clang-format',\n        \\ 'args': ['--style=\"{IndentWidth: 2}\"']\n    \\}\n    let g:neoformat_enabled_cpp = ['clangformat']\n    let g:neoformat_enabled_c = ['clangformat']\n    augroup fmt\n      autocmd!\n      autocmd BufWritePost *.cpp,*.cc,*.c Neoformat\n    augroup END\n  \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n�\2\0\0\f\0\16\0\0296\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0026\2\3\0'\4\4\0B\2\2\0029\2\5\0025\4\6\0B\2\2\0016\2\3\0'\4\a\0B\2\2\0026\3\3\0'\5\b\0B\3\2\0029\4\t\3\18\6\4\0009\4\n\4'\a\v\0009\b\f\0025\n\14\0005\v\r\0=\v\15\nB\b\2\0A\4\2\1K\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp\"nvim-autopairs.completion.cmp\1\0\1\rcheck_ts\2\nsetup\19nvim-autopairs\frequire\20nvim_set_keymap\bapi\bvim\0" },
    load_after = {
      ["nvim-cmp"] = true,
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-vsnip", "nvim-autopairs", "cmp-buffer" },
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim�\3\1\0\b\0\27\00026\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\n\0009\5\b\0009\5\t\5)\a��B\5\2\2=\5\v\0049\5\b\0009\5\t\5)\a\4\0B\5\2\2=\5\f\0049\5\b\0009\5\r\5B\5\1\2=\5\14\0049\5\b\0009\5\15\5B\5\1\2=\5\16\0049\5\b\0009\5\17\0055\a\18\0B\5\2\2=\5\19\0049\5\b\0009\5\20\5B\5\1\2=\5\21\0049\5\b\0009\5\22\5B\5\1\2=\5\23\4=\4\b\0034\4\3\0005\5\24\0>\5\1\0045\5\25\0>\5\2\4=\4\26\3B\1\2\1K\0\1\0\fsources\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\n<TAB>\21select_next_item\f<S-TAB>\21select_prev_item\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\n<C-f>\n<C-d>\1\0\0\16scroll_docs\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n�\2\0\0\4\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\4\0005\2\6\0=\2\5\0019\1\a\0004\2\3\0005\3\t\0>\3\1\2=\2\b\1K\0\1\0\1\0\6\frequest\vlaunch\fprogram.${fileDirname}/${fileBasenameNoExtension}\tname\16Launch file\bcwd\23${workspaceFolder}\ttype\vcppdbg\16stopOnEntry\2\bcpp\19configurations\1\0\2\ttype\15executable\fcommandU/home/gitpod/.config/nvim/debugAdapters/extension/debugAdapters/bin/OpenDebugAD7\vcppdbg\radapters\bdap\nsetup\ndapui\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n�\3\0\0\v\0\20\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\n\0006\3\0\0'\5\4\0B\3\2\0029\3\5\0036\5\6\0009\5\a\0059\5\b\0059\5\t\5B\5\1\0A\3\0\2=\3\v\2B\0\2\0015\0\f\0006\1\r\0\18\3\0\0B\1\2\4H\4\v�'\6\14\0\18\a\4\0&\6\a\0066\a\6\0009\a\15\a9\a\16\a\18\t\6\0005\n\17\0=\5\18\n=\6\19\nB\a\3\1F\4\3\3R\4�K\0\1\0\vtexthl\ttext\1\0\1\nnumhl\5\16sign_define\afn\23LspDiagnosticsSign\npairs\1\0\4\tHint\t \nError\t \16Information\t \fWarning\t \17capabilities\1\0\0\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\nsetup\vclangd\14lspconfig\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n^\0\0\4\0\5\0\f6\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0006\0\2\0'\2\1\0B\0\2\0029\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\0\1\ftimeout\3�\19\nsetup\frequire\vnotify\bvim\0" },
    load_after = {
      ["zephyr-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle" },
    config = { "\27LJ\2\n�\2\0\0\3\0\n\0\0236\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\a\0B\0\2\0016\0\0\0009\0\1\0)\1\1\0=\1\b\0006\0\0\0009\0\1\0)\1\1\0=\1\t\0K\0\1\0\27nvim_tree_add_trailing%nvim_tree_highlight_opened_files\1\0\3\14auto_open\3\1\18disable_netrw\1\15auto_close\3\1\nsetup\14nvim-tree\frequire\29nvim_tree_indent_markers\24nvim_tree_gitignore\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-autopairs" },
    config = { "\27LJ\2\n�\1\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\frainbow\1\0\2\venable\2\18extended_mode\2\14highlight\1\0\1\venable\2\21ensure_installed\1\0\0\1\5\0\0\bcpp\6c\vpython\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["startuptime.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["zephyr-nvim"] = {
    after = { "nvim-notify" },
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\23colorscheme zephyr\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/gitpod/.local/share/nvim/site/pack/packer/opt/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufWinEnter, BufRead ++once lua require("packer.load")({'dashboard-nvim'}, { event = "BufWinEnter, BufRead" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-colorizer.lua', 'nvim-dap-ui', 'nvim-lspconfig', 'neoformat', 'gitsigns.nvim', 'nvim-cmp', 'indent-blankline.nvim', 'zephyr-nvim', 'galaxyline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-colorizer.lua', 'nvim-dap-ui', 'dashboard-nvim', 'nvim-lspconfig', 'neoformat', 'gitsigns.nvim', 'nvim-cmp', 'indent-blankline.nvim', 'zephyr-nvim', 'galaxyline.nvim'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim', 'nvim-lspconfig', 'neoformat', 'nvim-treesitter', 'indent-blankline.nvim', 'zephyr-nvim', 'nvim-ts-rainbow', 'neoscroll.nvim', 'galaxyline.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'nvim-lspconfig', 'neoformat', 'startuptime.vim', 'FTerm.nvim', 'bufferline.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-vsnip', 'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
