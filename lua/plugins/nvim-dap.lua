return {
    {
        "mfussenegger/nvim-dap",
        keys = {
            { "<leader>db", "<cmd> DapToggleBreakpoint <CR>", desc = "Add breakpoint at line" },
            { "<leader>dus",
                function()
                    local widgets = require('dap.ui.widgets');
                    local sidebar = widgets.sidebar(widgets.scopes);
                    sidebar.open();
                end,
                "Open debugging sidebar"
            },

        }
},
    {
        "leoluz/nvim-dap-go",
        ft = "go",
        dependencies = "mfussenegger/nvim-dap",
        keys = {
            { "<leader>dgt",
                function()
                    require('dap-go').debug_test()
                end,
                desc = "Debug go test" ,
            },
            { "<leader>dgl",
                function()
                    require('dap-go').debug_test()
                end,
                desc = "Debug last go test" ,
            },
        },
        config = function(_, opts)
            require("dap-go").setup(opts)
        end
    }
}