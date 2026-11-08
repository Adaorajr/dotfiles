return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("roslyn").setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
    end,
  },
}
