return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "arkav/lualine-lsp-progress",
        "catppuccin/nvim",
    },
    opts = {
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "branch", "diagnostics" },
            lualine_c = {
                {
                    "filename",
                    file_status = true, -- Displays file status (readonly status, modified status)
                    newfile_status = true, -- Display new file status (new file means no write after created)
                    path = 1,
                    -- 0: Just the filename
                    -- 1: Relative path
                    -- 2: Absolute path
                    -- 3: Absolute path, with tilde as the home directory
                    -- 4: Filename and parent dir, with tilde as the home directory

                    shorting_target = 40, -- Shortens path to leave 40 spaces in the window
                    -- for other components. (terrible name, any suggestions?)
                    symbols = {
                        modified = "󰏫", -- Text to show when the file is modified.
                        readonly = " ", -- Text to show when the file is non-modifiable or readonly.
                        unnamed = "󰜣 ", -- Text to show for unnamed buffers.
                        newfile = " ", -- Text to show for newly created file before first write
                    },
                },
            },
            lualine_x = {},
            lualine_y = {
                "encoding",
                "fileformat",
                {
                    "filetype",
                    colored = false,
                    icon_only = false,
                },
            },
            lualine_z = { "progress" },
        },
        options = {
            theme = "catppuccin",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
    },
}
