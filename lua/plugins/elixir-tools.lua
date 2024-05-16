return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")

    elixir.setup {
      nextls = {
        enable = true,
        cmd = "/home/kettelbear/.local/share/nvim/mason/packages/nextls/next_ls_linux_amd64",
        on_attach = function ()
          local opts = { buffer = true, noremap = true }

          vim.keymap.set("n", "<leader>fp", ":ElixirFromPipe<cr>", opts)
          vim.keymap.set("n", "<leader>tp", ":ElixirToPipe<cr>", opts)
          vim.keymap.set("v", "<leader>em", ":ElixirExpandMacro<cr>", opts)

          vim.keymap.set("n", "<leader>te", ":Mix test<CR>")
          vim.keymap.set("n", "<leader>dg", ":Mix deps.get<CR>")
          vim.keymap.set("n", "<leader>co", ":Mix compile<CR>")
        end,
        init_options = {
          experimental = { completions = { enable = true } }
        }
      },
      credo = { enable = true },
      elixirls = { enable = false }
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
