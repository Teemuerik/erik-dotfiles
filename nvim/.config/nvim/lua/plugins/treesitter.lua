return {{
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "css" },
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'org' },
            },
            indent = {
                enable = true,
                disable = { "html" },
            },
            matchup = {
                enable = true,
            },
        })
    end
}}
