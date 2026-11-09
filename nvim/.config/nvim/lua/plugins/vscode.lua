return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        style = "light",
        group_overrides = {
          NeoTreeDimText = { bg = "NONE" },
        },
      })
      vim.cmd.colorscheme("vscode")
    end,
  },
}
