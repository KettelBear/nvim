require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "c",
    "eex",
    "elixir",
    "erlang",
    "heex",
    "html",
    "lua",
    "vim",
    "vimdoc",
    "query"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same
    -- time. Set this to `true` if you depend on 'syntax' being enabled (like
    -- for indentation). Using this option may slow down your editor, and you
    -- may see some duplicate highlights. Instead of true it can also be a list
    -- of languages
    additional_vim_regex_highlighting = false,
  },
}
