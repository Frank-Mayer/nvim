return {
    "mfussenegger/nvim-lint",
    config = function()
        local lint = require("lint")
        lint.linters_by_ft = {
            python = { "flake8" },
            lua = { "luacheck" },
            sh = { "shellcheck" },
            markdown = { "markdownlint" },
            yaml = { "yamllint" },
            json = { "jsonlint" },
            javascript = { "eslint_d" },
            typescript = { "eslint_d" },
            typescriptreact = { "eslint_d" },
            javascriptreact = { "eslint_d" },
            html = { "tidy" },
            css = { "stylelint" },
            scss = { "stylelint" },
            sass = { "stylelint" },
            less = { "stylelint" },
            go = { "golangcilint" },
            c = { "cppcheck" },
            cpp = { "cppcheck" },
            objc = { "cppcheck" },
            java = { "checkstyle" },
        }

        local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
        vim.api.nvim_create_autocmd({
            "BufEnter",
            "BufWritePost",
            "InsertLeave",
        }, {
            group = lint_augroup,
            callback = function()
                lint.try_lint()
            end,
        })
    end,
}
