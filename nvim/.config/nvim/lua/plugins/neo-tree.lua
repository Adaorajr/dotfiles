return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle file tree" },
    },
    opts = {
      default_component_configs = {
        icon = {
          folder_closed = "›",
          folder_open = "⌄",
          folder_empty = "·",
        },
      },
    },
  },
}
