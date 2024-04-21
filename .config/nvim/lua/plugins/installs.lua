return {
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "theprimeagen/harpoon",
  },
  {
    "mbbill/undotree",
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  {
    "lewis6991/spaceless.nvim",
  },
  {
    "smoka7/hop.nvim",
    --tag = "*", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
    end,
  },
  {
    "pplatta/vim-uefi",
  },
  {
    "nvim-pack/nvim-spectre",
  },
  {
    "nvim-lua/plenary.nvim",
  },
}
