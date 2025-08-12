return {
  dir = '/Users/gsk/code/projects/nightwriter',
  name = 'nightwriter',
  lazy = false,
  priority = 1000,
  config = function()
    require('nightwriter').setup()
  end,
}

-- return {
--   'projekt0n/github-nvim-theme',
--   name = 'github-theme',
--   lazy = false, -- make sure we load this during startup if it is your main colorscheme
--   priority = 1000, -- make sure to load this before all the other start plugins
--   config = function()
--     -- vim.cmd 'colorscheme github_dark_tritanopia'
--     vim.cmd 'colorscheme github_dark_high_contrast'
--   end,
-- }
