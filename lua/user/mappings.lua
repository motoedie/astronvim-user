-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>c"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    ["<leader>gf"] = {
      function()
        require("telescope.file_history").history()
      end,
      desc = "Open file history",
    },
    ["<leader>lt"] = {"<cmd>lua vim.lsp.buf.hover()<cr>", desc = "Type diagnostics" },
  },
  i = {
    ["<A-h>"] = { "<left>" },
    ["<A-j>"] = { "<down>" },
    ["<A-k>"] = { "<up>" },
    ["<A-l>"] = { "<right>" },
    ["<A-_>"] = { "<ESC>_i" },
    ["<A-$>"] = { "<ESC>A" },
    ["<A-o>"] = { "<ESC>o" },
    ["<A-w>"] = { "<C-o>w" },
    ["<A-b>"] = { "<C-o>b" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
