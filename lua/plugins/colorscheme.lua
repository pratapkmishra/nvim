return {
  {
    "tiagovla/tokyodark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local colors = {
        bg = "#011628",
        bg_dark = "#011423",
        bg_highlight = "#143652",
        bg_search = "#0A64AC",
        bg_visual = "#275378",
        fg = "#CBE0F0",
        fg_dark = "#B4D0E9",
        fg_gutter = "#627E97",
        border = "#547998",
      }

      require("tokyodark").setup({
        on_colors = function(c)
          c.bg = colors.bg
          c.bg_dark = colors.bg_dark
          c.bg_highlight = colors.bg_highlight
          c.bg_search = colors.bg_search
          c.bg_visual = colors.bg_visual
          c.fg = colors.fg
          c.fg_dark = colors.fg_dark
          c.fg_gutter = colors.fg_gutter
          c.border = colors.border
        end,
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme tokyodark]])
    end,
  },
}
