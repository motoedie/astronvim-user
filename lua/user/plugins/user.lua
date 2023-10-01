return {
  {
    'akinsho/git-conflict.nvim',
    config = function()
      require('git-conflict').setup()
    end,
  },
  {
    'tpope/vim-fugitive',
    lazy = false,
  },
  {
    'AckslD/muren.nvim',
    config = true,
    lazy = false,
  }
}
