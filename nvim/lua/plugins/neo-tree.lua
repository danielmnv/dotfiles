return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    config = function()
      require("neo-tree").setup({
        hijack_netrw_behavior = "open_current"
      })

      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
    end
  }
}
