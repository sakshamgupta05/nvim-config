return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
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
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      {
        'hrsh7th/nvim-cmp',
        config = function(_, _)
          local cmp = require("cmp")
          vim.opt.completeopt = { "menu", "menuone", "noselect" }

          cmp.setup({
            mapping = cmp.mapping.preset.insert({
              ["<C-b>"] = cmp.mapping.scroll_docs(-4),
              ["<C-f>"] = cmp.mapping.scroll_docs(4),
              ["<C-Space>"] = cmp.mapping.complete(),
              ["<C-e>"] = cmp.mapping.abort(),
              -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
              ["<Tab>"] = cmp.mapping.confirm({ select = true }),
            }),
          })
        end,
      },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function(_, _)
      local lsp = require('lsp-zero').preset({})

      lsp.on_attach(function(client, bufnr)
        -- see :help lsp-zero-keybindings
        -- to learn the available actions

        -- Enable format on save
        client.server_capabilities.documentFormattingProvider = true
        if client.server_capabilities.documentFormattingProvider then
          vim.api.nvim_create_autocmd("BufWritePre", { callback = function() vim.lsp.buf.format() end })
        end

        vim.api.nvim_create_autocmd("CursorHold", {
          buffer = bufnr,
          callback = function()
            local opts = {
              focusable = false,
              close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
              border = 'rounded',
              source = 'always',
              prefix = ' ',
              scope = 'cursor',
            }
            vim.diagnostic.open_float(nil, opts)
          end
        })

        lsp.default_keymaps({ buffer = bufnr })
      end)

      require("lspconfig").dartls.setup({
        cmd = { "dart", "language-server", "--protocol=lsp" },
      })

      lsp.setup()
    end,
  },
  -- NOTE: Can be used as flutter LSP
  -- {
  --   'akinsho/flutter-tools.nvim',
  --   -- lazy = false,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --   },
  --   config = true,
  -- }
  -- NOTE: For project level settings
  -- https://github.com/folke/neoconf.nvim
}
