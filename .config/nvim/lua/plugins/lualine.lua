M = {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'jellybeans',
    },
    sections = {
      lualine_a = {
        {'mode', fmt = function(str) return str:sub(1,1) end},
      },
      lualine_x = {'fileformat', 'filetype'},
    },
  },
  config = function(_, opts)
    require'lualine'.setup(opts)
  end,
}

return M
