return {
  'tamton-aquib/duck.nvim',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<leader>@h', function() require("duck").hatch() end, {})
    vim.keymap.set('n', '<leader>@k', function() require("duck").cook() end, {})
  end
}
