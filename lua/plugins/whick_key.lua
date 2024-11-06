return {
  "folke/which-key.nvim",
  config = function()
    local wk = require("which-key")
    wk.setup {
      -- Здесь можно добавить настройки, если нужно
    }
    wk.add({
        {"<leader>g", group = "lsp"},
        {"<leader>gd", desc = "goto definition", mode="n"},
        {"<leader>gD", desc = "goto declaration", mode="n"},
        {"<leader>gt", desc = "goto type definition", mode="n"},
        {"<leader>gi", desc = "goto implementation", mode="n"},

    })
    wk.add({
        {'<leader>f',  group="telescope"},
        {'<leader>ff', desc = 'find files', mode="n"},
        {'<leader>fg', desc = 'live grep' , mode="n"},
        {'<leader>fb', desc = 'buffers'   , mode="n"},
        {'<leader>fh', desc = 'help tags' , mode="n"},
    })
    wk.add({
         {'<leader>r',  desc="ranger"},
    })
    wk.add({
        {'<leader>tt', desc="toggleterm"},
    })
  end
}
