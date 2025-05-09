return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()

    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        -- php = { { "php-cs-fixer", "pint" } },
        php = { "pint", "php-cs-fixer" },
        -- Conform will run multiple formatters sequentially
        -- python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        javascript = {  "prettierd", "prettier" },
        vue = { "prettierd", "prettier" },
      },
      init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
      end,
    })
  end
}
