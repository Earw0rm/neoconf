return {
  -- Auto-pairs for brackets and quotes
  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
}
