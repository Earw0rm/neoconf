return {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = "c", -- устанавливаем поддержку C
        highlight = { enable = true },
      }
    end
}
