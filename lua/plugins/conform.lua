return {
    "stevearc/conform.nvim",
    lazy = true,
    opts = {
        formatters_by_ft = {
            javascript = { { "eslint_d", "eslint" }, { "eslint_d", "eslint" } },
            typescript = { { "prettierd", "prettier" }, { "eslint_d", "eslint" } },
            typescriptreact = { { "prettierd", "prettier" }, { "eslint_d", "eslint" } },
            json = { { "prettierd", "prettier" } },
            yaml = { { "prettierd", "prettier" } },
            html = { { "prettierd", "prettier" } },
            css = { { "prettierd", "prettier" } },
            scss = { { "prettierd", "prettier" } },
            markdown = { { "prettierd", "prettier" } },
            lua = { "stylua" },
            java = { "google-java-format" },
            cpp = { { "clang-format", "astyle" } },
            rust = { { "rustfmt", "rustfmt-nightly" } },
            python = { "black" },
            go = { "gofmt" },
            templ = { "templ" },
        },
    },
}
