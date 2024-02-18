local M = {}

function M.warn(msg, notify_opts)
  vim.notify(msg, vim.log.levels.WARN, notify_opts)
end

function M.error(msg, notify_opts)
  vim.notify(msg, vim.log.levels.ERROR, notify_opts)
end

function M.info(msg, notify_opts)
  vim.notify(msg, vim.log.levels.INFO, notify_opts)
end

function M.toggle(option, verbose, values)
  if values then
    if vim.opt_local[option]:get() == values[1] then
      vim.opt_local[option] = values[2]
    else
      vim.opt_local[option] = values[1]
    end
    return require("utils").info("Set " .. option .. " to " .. vim.opt_local[option]:get())
  end

  vim.opt_local[option] = not vim.opt_local[option]:get()

  if verbose then
    if vim.opt_local[option]:get() then
      require("utils").info("Enabled " .. option, { title = "Option" })
    else
      require("utils").info("Disabled " .. option, { title = "Option" })
    end
  end
end

function M.toggle_cmdheight()
  require("utils").toggle('cmdheight', false, {0, 1})
end

function M.toggle_conceallevel()
  require("utils").toggle('conceallevel', true, {0, 2})
end

function M.toggle_laststatus()
  require("utils").toggle('laststatus', false, {0, 2})
end

return M



