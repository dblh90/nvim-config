return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- pyright will be automatically installed with mason and loaded with lspconfig
                -- pyright = {},
                gopls = {
                    completeUnimported = true,
                    usePlaceholders = true,
                    analyses = { -- Full list of analyzers https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md
                        unusedvariable = true,
                        QF1001 = true,
                        QF1005 = true, -- https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md#qf1005-expand-call-to-mathpow
                        QF1006 = true, -- https://github.com/golang/tools/blob/master/gopls/doc/analyzers.md#qf1006-lift-ifbreak-into-loop-condition
                    }
                }
            },
        },
    },
}