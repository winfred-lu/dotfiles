vim.g.mapleader = ","
vim.g.mapllocaleader = " "

-- for netrw-gx under Windows and WSL
if IS_WINDOWS or IS_WSL then
  vim.g.netrw_browsex_viewer = "cmd.exe /C start"
end

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

