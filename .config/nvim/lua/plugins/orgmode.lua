local M = {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter', lazy = true },
    { 'akinsho/org-bullets.nvim', lazy = true },
  },
  ft = { 'org', 'orgagenda' },

  config = function()
    -- Setup orgmode
    require('orgmode').setup({
      org_agenda_files = '~/org/**/*',
      org_default_notes_file = '~/org/notes.org',
      win_split_mode = 'vertical',
      org_hide_leading_stars = true,
    })

    -- Setup org-bullets plugin
    require('org-bullets').setup({
      concealcursor = true,
      symbols = {
        checkboxes = {
          half = { '', 'OrgTSCheckboxHalfChecked' },
          done = { '✓', 'OrgDone' },
          todo = { '×', 'OrgTODO' },
        },
      },
    })
  end,
}

return M
