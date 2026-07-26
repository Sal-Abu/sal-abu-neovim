local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Markdown Filetype
autocmd({"BufNewFile", "BufFilePre", "BufRead"}, {
    pattern = "*.md",
    command = "set filetype=markdown",
})

-- Vim Folding
local filetype_vim = augroup("filetype_vim", { clear = true })
autocmd("FileType", {
    group = filetype_vim,
    pattern = "vim",
    command = "setlocal foldmethod=marker",
})

-- HTML Indentation
autocmd("FileType", {
    pattern = "html",
    command = "setlocal tabstop=2 shiftwidth=2 expandtab",
})

-- Dynamic Cursorline
local cursor_off = augroup("cursor_off", { clear = true })
autocmd("WinLeave", {
    group = cursor_off,
    pattern = "*",
    command = "set nocursorline nocursorcolumn",
})
autocmd("WinEnter", {
    group = cursor_off,
    pattern = "*",
    command = "set cursorline cursorcolumn",
})

-- Autosave
local autosave = vim.api.nvim_create_augroup("autosave", { clear = true })

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged", "FocusLost" }, {
    group = autosave,
    pattern = "*",
    command = "silent! update",
})
