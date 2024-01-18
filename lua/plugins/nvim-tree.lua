return {

    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({})

        vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
        -- vim.cmd("NvimTreeOpen")
        -- vim.cmd("autocmd VimEnter * wincmd w")
    end
}
