local M = {
  "nvim-neorg/neorg",
  lazy = true,
  ft = "norg",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-cmp",
    "nvim-lua/plenary.nvim",
  },
  build = ":Neorg sync-parsers",
  cmd = "Neorg",
  config = {
    load = {
      ["core.defaults"] = {},
      ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
      ["core.integrations.nvim-cmp"] = {},
      ["core.concealer"] = { config = { icon_preset = "diamond" } },
      ["core.keybinds"] = {
        -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds
        config = {
          default_keybinds = true,
          neorg_leader = "<Leader><Leader>",
        },
      },
    },
  },
}

return M

