return {
  "folke/tokyonight.nvim",
  opts = {
    on_highlights = function(hl, c)
      hl.CursorLine = {
        bg = c.bg_visual,
      }
    end,
  },
}
