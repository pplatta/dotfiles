return {
  {
    "sainnhe/gruvbox-material",
    init = function()
      vim.g.gruvbox_material_disable_italic_comment = "1"
      vim.g.gruvbox_material_better_performance = "1"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = "2"
      vim.g.gruvbox_material_visual = "reverse"
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
