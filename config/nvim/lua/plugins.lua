vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)

  -- basic setup
  use 'wbthomason/packer.nvim'
  use 'editorconfig/editorconfig-vim'

  -- syntax
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    config = function()
      require('config/treesitter')
    end,
  })

  -- colours
  use({
    'catppuccin/nvim',
    as = 'catppuccin',
    -- branch = 'dev',
    config = function()
      require('config/catppuccin')
    end,
  })

  -- status line
  use({
    'feline-nvim/feline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    after = { 'catppuccin' },
    config = function()
      require('config/feline')
    end,
  })

  -- zen mode
  use({
    'Pocco81/true-zen.nvim',
    config = function()
      require('config/zen')
    end,
  })

end)
