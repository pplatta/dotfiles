return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4', -- or, branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
 }

  -- Themes
  use "sainnhe/gruvbox-material"
  use 'rose-pine/neovim'

  use ("nvim-treesitter/nvim-treesitter", {run = ':TSUpdate'})
  use("theprimeagen/harpoon")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use({
    "aaronhallaert/advanced-git-search.nvim",
    config = function()
      require("telescope").load_extension("advanced_git_search")
    end,
    requires = {
      {
        "nvim-telescope/telescope.nvim",
        -- to show diff splits and open commits in browser
        "tpope/vim-fugitive",
        -- to open commits in browser with fugitive
        "tpope/vim-rhubarb",
        -- optional: to replace the diff from fugitive with diffview.nvim
        -- (fugitive is still needed to open in browser)
        -- "sindrets/diffview.nvim",
      }
    },
  })

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'}
    }
  }
  use 'nvim-tree/nvim-web-devicons'

  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  }

  use 'lewis6991/gitsigns.nvim'

  use {
    'lewis6991/spaceless.nvim',
    config = function()
      require'spaceless'.setup()
    end
  }

  use {
    'xeluxee/competitest.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function() require('competitest').setup() end
  }

  use {
    'smoka7/hop.nvim',
    tag = '*', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  use 'christoomey/vim-tmux-navigator'
  --use 'm4xshen/autoclose.nvim'

  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup()
    end,
  })

  use 'nvim-pack/nvim-spectre'
  use 'nvim-lua/plenary.nvim'
  use 'pplatta/vim-uefi'
end)
