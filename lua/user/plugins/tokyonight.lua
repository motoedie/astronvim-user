return {
  "folke/tokyonight.nvim",
  opts = {
    styles = {
      keywords = { italic = false },
    },
    on_highlights = function(hl, c)
      hl.CursorLine = {
        bg = c.bg_visual,
      }
      hl.DiagnosticUnnecessary = {
        fg = c.comment,
      }
    end,
    on_colors = function(colors)
      colors.bg_statusline = colors.none
    end
  },
}
