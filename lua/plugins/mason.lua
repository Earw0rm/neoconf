return   {
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- запускает обновление серверов при установке
    config = function()
      require("mason").setup()
    end
}
