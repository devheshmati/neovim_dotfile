-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/womoboy/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?.lua;/home/womoboy/.cache/nvim/packer_hererocks/2.1.1748459687/share/lua/5.1/?/init.lua;/home/womoboy/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?.lua;/home/womoboy/.cache/nvim/packer_hererocks/2.1.1748459687/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/womoboy/.cache/nvim/packer_hererocks/2.1.1748459687/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  LuaSnip = {
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n¿\1\0\0\v\0\a\0\0226\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0B\2\2\0019\2\5\1B\2\1\0026\3\6\0\18\5\2\0B\3\2\4X\6\4€8\b\a\0009\b\3\b4\n\0\0B\b\2\1E\6\3\3R\6ú\127K\0\1\0\vipairs\26get_installed_servers\1\0\1\27automatic_installation\2\nsetup\20mason-lspconfig\14lspconfig\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/opt/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-null-ls.nvim"] = {
    config = { "\27LJ\2\no\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\3\0B\1\1\1K\0\1\0\1\0\1\20automatic_setup\2\nsetup\18mason-null-ls\fnull-ls\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/mason-null-ls.nvim",
    url = "https://github.com/jay-babu/mason-null-ls.nvim"
  },
  ["mason.nvim"] = {
    after = { "mason-lspconfig.nvim" },
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    only_config = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["none-ls.nvim"] = {
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandÙ\3\1\0\v\0\26\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\bB\b\1\2=\b\14\a9\b\t\0009\b\15\bB\b\1\2=\b\16\a9\b\t\0009\b\17\b5\n\18\0B\b\2\2=\b\19\aB\5\2\2=\5\t\0049\5\20\0009\5\21\0054\a\5\0005\b\22\0>\b\1\a5\b\23\0>\b\2\a5\b\24\0>\b\3\a5\b\25\0>\b\4\aB\5\2\2=\5\21\4B\2\2\0012\0\0€K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\3\n<Tab>\0\f<S-Tab>\0\t<CR>\0\21select_next_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsources\0\fsnippet\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nÓ\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\nicons\0\tshow\1\0\1\tshow\0\1\0\4\bgit\2\vfolder\2\tfile\2\17folder_arrow\2\tview\1\0\2\tview\0\rrenderer\0\1\0\2\nwidth\3\30\tside\tleft\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nÌ\4\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\0025\3\17\0005\4\16\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0!override_by_operating_system\napple\1\0\1\napple\0\1\0\4\ncolor\f#A2AAAD\16cterm_color\b248\ticon\bî˜µ\tname\nApple\26override_by_extension\blog\1\0\1\blog\0\1\0\3\ncolor\f#81e043\tname\bLog\ticon\bïŽ\25override_by_filename\15.gitignore\1\0\1\15.gitignore\0\1\0\3\ncolor\f#f1502f\tname\14Gitignore\ticon\bîœ‚\roverride\1\0\b\fvariant\tdark\vstrict\2\fdefault\2\16color_icons\2\roverride\0\26override_by_extension\0!override_by_operating_system\0\25override_by_filename\0\bzsh\1\0\1\bzsh\0\1\0\4\ncolor\f#428850\16cterm_color\a65\ticon\bîž•\tname\bZsh\nsetup\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÎ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\1\rdefaults\0\18layout_config\1\0\1\20prompt_position\btop\1\0\3\18layout_config\0\21sorting_strategy\14ascending\20layout_strategy\15horizontal\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nÓ\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\nicons\0\tshow\1\0\1\tshow\0\1\0\4\bgit\2\vfolder\2\tfile\2\17folder_arrow\2\tview\1\0\2\tview\0\rrenderer\0\1\0\2\nwidth\3\30\tside\tleft\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\nÌ\4\0\0\5\0\20\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\3=\3\v\0025\3\r\0005\4\f\0=\4\14\3=\3\15\0025\3\17\0005\4\16\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0!override_by_operating_system\napple\1\0\1\napple\0\1\0\4\ncolor\f#A2AAAD\16cterm_color\b248\ticon\bî˜µ\tname\nApple\26override_by_extension\blog\1\0\1\blog\0\1\0\3\ncolor\f#81e043\tname\bLog\ticon\bïŽ\25override_by_filename\15.gitignore\1\0\1\15.gitignore\0\1\0\3\ncolor\f#f1502f\tname\14Gitignore\ticon\bîœ‚\roverride\1\0\b\fvariant\tdark\vstrict\2\fdefault\2\16color_icons\2\roverride\0\26override_by_extension\0!override_by_operating_system\0\25override_by_filename\0\bzsh\1\0\1\bzsh\0\1\0\4\ncolor\f#428850\16cterm_color\a65\ticon\bîž•\tname\bZsh\nsetup\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandÙ\3\1\0\v\0\26\0/6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0049\5\t\0009\5\n\0059\5\v\0055\a\r\0009\b\t\0009\b\f\bB\b\1\2=\b\14\a9\b\t\0009\b\15\bB\b\1\2=\b\16\a9\b\t\0009\b\17\b5\n\18\0B\b\2\2=\b\19\aB\5\2\2=\5\t\0049\5\20\0009\5\21\0054\a\5\0005\b\22\0>\b\1\a5\b\23\0>\b\2\a5\b\24\0>\b\3\a5\b\25\0>\b\4\aB\5\2\2=\5\21\4B\2\2\0012\0\0€K\0\1\0\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\21select_prev_item\n<Tab>\1\0\3\n<Tab>\0\f<S-Tab>\0\t<CR>\0\21select_next_item\vinsert\vpreset\fmapping\fsnippet\1\0\3\fsources\0\fsnippet\0\fmapping\0\vexpand\1\0\1\vexpand\0\0\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÎ\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\rdefaults\1\0\1\rdefaults\0\18layout_config\1\0\1\20prompt_position\btop\1\0\3\18layout_config\0\21sorting_strategy\14ascending\20layout_strategy\15horizontal\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: mason-null-ls.nvim
time([[Config for mason-null-ls.nvim]], true)
try_loadstring("\27LJ\2\no\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0B\1\2\0019\1\3\0B\1\1\1K\0\1\0\1\0\1\20automatic_setup\2\nsetup\18mason-null-ls\fnull-ls\frequire\0", "config", "mason-null-ls.nvim")
time([[Config for mason-null-ls.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd mason-lspconfig.nvim ]]

-- Config for: mason-lspconfig.nvim
try_loadstring("\27LJ\2\n¿\1\0\0\v\0\a\0\0226\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0015\4\4\0B\2\2\0019\2\5\1B\2\1\0026\3\6\0\18\5\2\0B\3\2\4X\6\4€8\b\a\0009\b\3\b4\n\0\0B\b\2\1E\6\3\3R\6ú\127K\0\1\0\vipairs\26get_installed_servers\1\0\1\27automatic_installation\2\nsetup\20mason-lspconfig\14lspconfig\frequire\0", "config", "mason-lspconfig.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
