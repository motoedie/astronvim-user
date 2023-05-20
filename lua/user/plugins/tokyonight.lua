return {
  "folke/tokyonight.nvim",
  opts = {
    on_highlights = function(hl, c)
      hl.CursorLine = {
        bg = c.bg_visual,
      }
    end,
    on_colors = function(colors)
      colors.bg_statusline = colors.none
    end
  },
}
