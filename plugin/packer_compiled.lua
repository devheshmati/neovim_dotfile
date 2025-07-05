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
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n”\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\nicons\0\tshow\1\0\1\tshow\0\1\0\4\vfolder\2\tfile\2\17folder_arrow\2\bgit\2\tview\1\0\2\rrenderer\0\tview\0\1\0\2\tside\tleft\nwidth\3\30\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
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
    config = { "\27LJ\2\nï\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Live grep!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\tdesc\15Find files\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\rdefaults\1\0\1\rdefaults\0\18layout_config\1\0\1\20prompt_position\btop\1\0\3\18layout_config\0\21sorting_strategy\14ascending\20layout_strategy\15horizontal\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/womoboy/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nï\3\0\0\6\0\18\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0'\3\15\0'\4\16\0005\5\17\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Live grep!<cmd>Telescope live_grep<cr>\15<leader>fg\1\0\1\tdesc\15Find files\"<cmd>Telescope find_files<cr>\15<leader>ff\6n\bset\vkeymap\bvim\rdefaults\1\0\1\rdefaults\0\18layout_config\1\0\1\20prompt_position\btop\1\0\3\18layout_config\0\21sorting_strategy\14ascending\20layout_strategy\15horizontal\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n”\1\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\t\0005\4\a\0005\5\6\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\1\nicons\0\tshow\1\0\1\tshow\0\1\0\4\vfolder\2\tfile\2\17folder_arrow\2\bgit\2\tview\1\0\2\rrenderer\0\tview\0\1\0\2\tside\tleft\nwidth\3\30\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

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
