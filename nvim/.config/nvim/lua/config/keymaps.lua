vim.g.mapleader = " "
vim.keymap.set("n", "<leaderpv", vim.cmd.Ex)
vim.keymap.set("n", "gd", function()
  for _, client in ipairs(vim.lsp.get_clients({ bufnr = 0 })) do
    if client:supports_method("textDocument/definition", 0) then
      vim.lsp.buf.definition()
      return
    end
  end
  vim.cmd("normal! gd")
end, { desc = "Go to definition" })
vim.keymap.set("n", "<C-p>", function()
  require("telescope.builtin").find_files({ previewer = false })
end, { desc = "Find files" })
vim.keymap.set("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })
