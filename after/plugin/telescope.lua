local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>ts', builtin.resume, {})
vim.keymap.set('n', '<leader>fg', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    dynamic_preview_title = true,
    path_display = truncate,
    layout_strategy = 'vertical',
    layout_config = { height = 0.95 },
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        --["<C-h>"] = "which_key"
        --["<C-w>"] = delete_buffer
      }
    },
    --file_ignore_patterns = {
    --  "Build/",
    --  "Edk2Platforms/"
    --}
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
      --   picker_config_key = value,
      --   ...
      -- }
      -- Now the picker_config_key will be applied every time you call this
      -- builtin picker
    },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
      --   extension_config_key = value,
      -- }
      -- please take a look at the readme of the extension you want to configure
  }
}

