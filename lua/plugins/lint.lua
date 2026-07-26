return {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local lint = require("lint")
        
        -- Map specific linters to filetypes
        lint.linters_by_ft = {
            astro = { "eslint_d" },
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            python = { "flake8" },
            lua = { "luacheck" },
            sh = { "shellcheck" },
            bash = { "shellcheck" },
            zsh = { "shellcheck" },
        }

        -- Trigger linting on specific editor events
        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
        vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })
    end
}
