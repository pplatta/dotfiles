return {
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
  {
    "tpope/vim-fugitive",
  },
  {
    "cappyzawa/trim.nvim",
  },
  {
    "ellisonleao/glow.nvim",
    cmd = "Glow",
    config = function()
      require("glow").setup({
        style = "dark",
        width = 200,
      })
    end,
  },
}
