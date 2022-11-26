-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

require('mason').setup()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'glepnir/dashboard-nvim'
    use 'joshdick/onedark.vim'
    use 'itchyny/lightline.vim'
    use 'scrooloose/nerdtree'
    use 'tiagofumo/vim-nerdtree-syntax-highlight'
    use 'ryanoasis/vim-devicons'
    use 'ap/vim-css-color'
    use 'vim-syntastic/syntastic'
    use 'rhysd/vim-clang-format'
    use 'lambdalisue/suda.vim'
    use 'neovim/nvim-lspconfig'
    use 'jackguo380/vim-lsp-cxx-highlight'
    use 'williamboman/mason.nvim'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    -- TODO: add telescope and other useful plugins
end)

