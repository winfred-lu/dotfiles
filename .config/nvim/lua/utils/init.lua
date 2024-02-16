local M = {}

function M.toggle(option, values)
  if values then
    if vim.opt_local[option]:get() == values[1] then
      vim.opt_local[option] = values[2]
    else
      vim.opt_local[option] = values[1]
    end
    return
  end
  vim.opt_local[option] = not vim.opt_local[option]:get()
end

function M.toggle_cmdheight()
  require("utils").toggle('cmdheight', {0, 1})
end

function M.toggle_conceallevel()
  require("utils").toggle('conceallevel', {0, 2})
end

function M.toggle_laststatus()
  require("utils").toggle('laststatus', {0, 2})
end

return M



