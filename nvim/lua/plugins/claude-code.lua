return {
  'greggh/claude-code.nvim',
  lazy_load = true,
  opts = {},
  -- Optional dependencies
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require('claude-code').setup()
  end,
}
