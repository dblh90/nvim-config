return {
    { "ellisonleao/gruvbox.nvim" },

    {
        "embark-theme/vim",
        lazy = false,
        priority = 1000,
        name = 'embark'
    },

    -- Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight",
        },
    },
}