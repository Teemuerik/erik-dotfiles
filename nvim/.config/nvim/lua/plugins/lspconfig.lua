return {{
    "neovim/nvim-lspconfig",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp", -- Autocomplete.
        "hrsh7th/nvim-cmp", -- Completion engine.
    },
    config = function()
        require("lspconfig").cssls.setup({
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
    end,
}}
