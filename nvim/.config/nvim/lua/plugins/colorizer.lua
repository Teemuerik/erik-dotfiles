return {{
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPre",
    config = function()
        require("colorizer").setup({
            filetypes = {
                css = { css = true },
                html = {},
                ["*"] = {}, -- Highlight all filetypes by default.
            }
        })
    end
}}
