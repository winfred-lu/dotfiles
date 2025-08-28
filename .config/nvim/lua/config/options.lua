vim.g.mapleader = ","
vim.g.mapllocaleader = " "

-- under Windows and WSL
if IS_WINDOWS or IS_WSL then
  -- for netrw-gw
  vim.g.netrw_browsex_viewer = "cmd.exe /C start"

  -- to copy to or paste from win32 cilpboard
  vim.g.clipboard = {
    name = "win32yank-wsl",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = false,
  }
end

vim.opt.mousemodel = "popup"

vim.opt.laststatus = 0
--vim.opt.iskeyword:append('-')

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.clipboard = "unnamed"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.wildmode = "longest:full,full" -- command line completion mode

vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"

vim.opt.tags = "./tags,./TAGS,tags;~,TAGS:~"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false

vim.opt.conceallevel = 2 -- for orgmode to concel links
vim.opt.concealcursor = 'nc'

