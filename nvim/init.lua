require 'core.options' -- Load general options
require 'core.keymaps' -- Load general keymaps
require 'core.snippets' -- Custom code snippets

-- Install package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Import color theme based on environment variable NVIM_THEME
local default_color_scheme = 'githubtheme'
local env_var_nvim_theme = os.getenv 'NVIM_THEME' or default_color_scheme

-- Define a table of theme modules
local themes = {
  jellybeans = 'plugins.themes.jellybeans',
  githubtheme = 'plugins.themes.githubtheme',
  posterpole = 'plugins.themes.posterpole',
  flexoki = 'plugins.themes.flexoki',
  mellifluous = 'plugins.themes.mellifluous',
  nord = 'plugins.themes.nord',
  onedark = 'plugins.themes.onedark',
}

-- Setup plugins
require('lazy').setup({
  require(themes[env_var_nvim_theme]),
  require 'plugins.telescope', -- fuzzy search
  require 'plugins.treesitter', -- syntax highlighting
  require 'plugins.lsp', -- goto definition
  require 'plugins.autocompletion', -- code completion
  require 'plugins.none-ls', -- autoformatter
  require 'plugins.lualine', -- status line at bottom
  require 'plugins.bufferline', -- neovim tab/buffer appearing at top
  require 'plugins.neo-tree', -- file, folder browser
  -- require 'plugins.alpha',  -- ascii splash page
  require 'plugins.indent-blankline', -- vertical lines for indents
  require 'plugins.lazygit', -- lazygit integration
  require 'plugins.comment', -- code commenting helper
  require 'plugins.debug', -- debugger adapter protocol
  require 'plugins.gitsigns', -- git symbols showing changed lines, etc
  require 'plugins.database', -- database client
  require 'plugins.misc', -- which key, etc.
  -- require 'plugins.harpoon',  -- configurable navigation hotkeys to project locations
  -- require 'plugins.avante',  -- AI assistant ala Cursor
  require 'plugins.aerial', -- code outline, folding
  require 'plugins.vim-tmux-navigator', -- navigate tmux and neovim panes and splits
}, {
  ui = {
    -- If you have a Nerd Font, set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- Function to check if a file exists
local function file_exists(file)
  local f = io.open(file, 'r')
  if f then
    f:close()
    return true
  else
    return false
  end
end

-- Path to the session file
local session_file = '.session.vim'

-- Check if the session file exists in the current directory
if file_exists(session_file) then
  -- Source the session file
  vim.cmd('source ' .. session_file)
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
