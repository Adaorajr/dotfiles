return {
  {
    "sonph/onehalf",
    name = "onehalf",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.rtp:append(vim.fn.stdpath("data") .. "/lazy/onehalf/vim")
      vim.cmd.colorscheme("onehalflight")
    end,
  },
}
