-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  use { 'nvim-telescope/telescope.nvim',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } } }
  use 'mbbill/undotree'
  use 'nvim-treesitter/nvim-treesitter'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp' } }
  use { 'L3MON4D3/LuaSnip', requires = { 'saadparwaiz1/cmp_luasnip' } }
  use 'andweeb/presence.nvim'
  use 'ThePrimeagen/harpoon'
  use 'lervag/vimtex'
  use 'SirVer/ultisnips'
  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
      require("catppuccin").setup()
      vim.api.nvim_command "colorscheme catppuccin"
    end;
    use 'MunifTanjim/prettier.nvim';
    use 'jose-elias-alvarez/null-ls.nvim'


  }


end)
