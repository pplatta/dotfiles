return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        modules = {},
        ignore_install = {},
        auto_install = true,
        ensure_installed = { "c", "lua", "vim", "vimdoc" },
        sync_install = false,
        indent = { enable = true },
        highlight = { enable = true },
      })
    end,
  },
}
