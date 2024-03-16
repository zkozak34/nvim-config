vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
  use('nvim-lua/plenary.nvim') 
  use('ellisonleao/gruvbox.nvim') 
  use('christoomey/vim-tmux-navigator')
  use('szw/vim-maximizer')
  use('nvim-tree/nvim-tree.lua')
  use('kyazdani42/nvim-web-devicons')
  use('nvim-lualine/lualine.nvim')
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }) -- depends BurntSushi/ripgrep
  use({ 'nvim-telescope/telescope.nvim', branch = '0.1.x' })
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use({ 'L3MON4D3/LuaSnip', tag = 'v2.*' })
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('neovim/nvim-lspconfig') 
  use('hrsh7th/cmp-nvim-lsp')
  use({ 'glepnir/lspsaga.nvim', branch = "main" })
  use('jose-elias-alvarez/typescript.nvim')
  use('onsails/lspkind.nvim')

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
