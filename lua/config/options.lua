local opt = vim.opt

opt.signcolumn = "yes"
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.wrap = true
opt.linebreak = true
opt.breakindent = true
opt.list = false
opt.spell = true
opt.spelllang = "en_gb"
opt.number = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.scrolloff = 10
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.showcmd = true
opt.showmode = true
opt.showmatch = true
opt.hlsearch = true
opt.history = 1000
opt.wildmenu = true
opt.wildmode = "list:longest"
opt.wildignore = { "*.docx", "*.jpg", "*.png", "*.gif", "*.pdf", "*.pyc", "*.exe", "*.flv", "*.img", "*.xlsx" }

-- Persistent Undo
opt.undodir = vim.fn.expand("~/.vim/backup")
opt.undofile = true
opt.undoreload = 10000

-- Status Line
opt.statusline = " %F %M %Y %R%="
opt.laststatus = 2

-- Diagnostic settings
vim.diagnostic.config({
    virtual_text = {
        prefix = "●",
        source = "always",
    },
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = "rounded",
        source = "always",
    },
})
