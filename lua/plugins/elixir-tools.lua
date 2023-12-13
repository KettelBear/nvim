return {
  "elixir-tools/elixir-tools.nvim",
  version = "*",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local elixir = require("elixir")
    -- local elixirls = require("elixir.elixirls")

    elixir.setup {
      nextls = {
        enable = true,
        -- cmd = "",
        on_attach = function(client, bufnr)
          local opts = { buffer = true, noremap = true }

          vim.keymap.set("n", "<leader>fp", ":ElixirFromPipe<cr>", opts)
          vim.keymap.set("n", "<leader>tp", ":ElixirToPipe<cr>", opts)
          vim.keymap.set("v", "<leader>em", ":ElixirExpandMacro<cr>", opts)

          vim.keymap.set("n", "<leader>te", ":Mix test<CR>")
          vim.keymap.set("n", "<leader>dg", ":Mix deps.get<CR>")
          vim.keymap.set("n", "<leader>co", ":Mix compile<CR>")
        end,
        init_options = {
          experimental = { completions = { enable = false } }
        }
      },
      credo = { enable = true },
      elixirls = { enable = false }
      --[[
        -- The rest of the elixirls config
        cmd = "",
        settings = elixirls.settings({
          fetchDeps = true,
          dialyzerEnabled = true,
          enableTestLenses = false,
        }),
        on_attach = on_attach,
      },
      ]]--
    }
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
