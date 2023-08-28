return {
  -- Theme
  {
    "ellisonleao/gruvbox.nvim",
    version = false,
    priority = 1000,
    config = function(_, _)
      vim.opt.background = "dark"
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    version = false,
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          icons_enabled = false,
          theme = "auto",
          globalstatus = true,
          component_separators = { left = '|', right = '|'},
          section_separators = { left = '', right = '' },
        },
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      signs = true;
      keywords = {
        FIX = {
          icon = "❌",
          color = "error", -- can be a hex color, or a named color (see below)
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
        },
        TODO = { icon = "⚠️", color = "info" },
        HACK = { icon = "⚠️", color = "warning" },
        WARN = { icon = "⚠️", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = "⚠️", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = "", color = "hint", alt = { "INFO" }, signs = false},
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
    },
  },
}
