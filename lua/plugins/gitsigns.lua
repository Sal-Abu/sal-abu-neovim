return {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("gitsigns").setup({
            signs = {
                add          = { text = 'A' },
                change       = { text = 'C' },
                delete       = { text = 'D' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signcolumn = true,
            watch_gitdir = {
                interval = 1000,
                follow_files = true
            },
            attach_to_untracked = true,
        })
    end
}
