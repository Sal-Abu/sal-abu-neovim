return {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                separator_style = "slant",
                show_buffer_close_icons = false,
                show_close_icon = false,
            }
        })
        -- Bufferline Navigation Keymaps
        local map = vim.keymap.set
        map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true })
        map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { noremap = true, silent = true })
        map('n', '<leader>x', '<Cmd>bdelete<CR>', { noremap = true, silent = true })
    end
}
