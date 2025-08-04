return {
  "ilof2/posterpole.nvim",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("posterpole").setup({
      transparent = true,
      dim_inactive = false, -- highlight inactive splits
      brightness = 0, -- negative numbers - darker, positive - lighter
      selected_tab_highlight = false, --highlight current selected tab
      fg_saturation = 0, -- font saturation, gray colors become more brighter
      bg_saturation = 0, -- background saturation
      colors = {
        posterpole = {
          -- { mainRed = {hex = "#550000", cterm = 95} }
        }, -- { mainRed = {hex = "#550000", cterm = 95} }
      },
      groups = {
        posterpole = {
         -- Comment = {fg = {hex = "#FFF000", cterm = 95 }}
        },
      },
      adaptive_brightness = {
        enabled = false,
        max_brightness = 1, -- maximum brightness for the day
        min_brightness = -6, -- minimum brightness for the day
        daylight_duration = 12, -- how long is daylight
        noon_time = 12 -- hour when the theme will have maximum brightness
      },
      lualine = {
        transparent = true
      }
    })
    vim.cmd("colorscheme posterpole")
  end,
}

