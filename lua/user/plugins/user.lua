return {
  {
    'akinsho/git-conflict.nvim',
    config = function()
      require('git-conflict').setup()
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require("indent_blankline").setup {
          show_end_of_line = true,
      }
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
