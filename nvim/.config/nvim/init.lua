vim.diagnostic.config({
  virtual_text = true,       -- mensagem inline ao lado do código
  signs = false,             -- símbolos na sign column
  underline = true,          -- sublinhado na palavra com erro
  update_in_insert = false,  -- não atualiza no insert mode (padrão)
})

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:block,r-cr-o:hor20"

vim.keymap.set("n", "==", function()
  if #vim.lsp.get_clients({ bufnr = 0 }) > 0 then
    vim.lsp.buf.format()
  else
    vim.cmd("normal! ==")
  end
end, { desc = "Format file" })

vim.keymap.set("v", "=", function()
  if #vim.lsp.get_clients({ bufnr = 0 }) > 0 then
    vim.lsp.buf.format({
      range = {
        ["start"] = vim.api.nvim_buf_get_mark(0, "<"),
        ["end"] = vim.api.nvim_buf_get_mark(0, ">"),
      },
    })
  else
    vim.cmd("normal! =")
  end
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "nx", false)
end, { desc = "Format selection" })

require("config.keymaps")
require("config.lazy")
