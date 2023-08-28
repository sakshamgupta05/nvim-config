return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
         cmd = "Mason",
         build = ":MasonUpdate",
         opts = {
           ensure_installed = {
             "stylua",
             "typescript-language-server",
             "eslint-lsp",
             -- "java-language-server",
           },
         },
         config = function(_, opts)
           require("mason").setup(opts)
           local mr = require("mason-registry")
           local function ensure_installed()
             for _, tool in ipairs(opts.ensure_installed) do
               local p = mr.get_package(tool)
               if not p:is_installed() then
                 p:install()
               end
             end
           end
           if mr.refresh then
             mr.refresh(ensure_installed)
           else
             ensure_installed()
           end
         end,
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function(_, _)
      local lsp = require('lsp-zero').preset({})

      lsp.on_attach(function(_, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions
        lsp.default_keymaps({buffer = bufnr})
      end)

      lsp.setup()
    end,
  }
  -- NOTE: For project level settings
  -- https://github.com/folke/neoconf.nvim
}
