return {{
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- Autocomplete.
        "hrsh7th/nvim-cmp", -- Completion engine.
    },
    config = function()
        vim.lsp.config("cssls", {
            capabilities = require("cmp_nvim_lsp").default_capabilities()
        })
        vim.lsp.enable({"cssls"})
    end,
}}
