return {
    'nvim-lua/plenary.nvim',
    dependencies = {'ThePrimeagen/harpoon'},
    config = function()
        require("harpoon").setup({})
        local mark = require("harpoon.mark")
        local ui = require ("harpoon.ui")
        vim.keymap.set("n","<leader>a",mark.add_file, {desc = "Harpoon add file"})
        vim.keymap.set("n","<C-i>", ui.toggle_quick_menu, {desc = "Harpoon menu"})
        vim.keymap.set("n","<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n","<C-t>", function() ui.nav_file(2) end)
        vim.keymap.set("n","<C-n>", function() ui.nav_file(3) end)
        vim.keymap.set("n","<C-s>", function() ui.nav_file(4) end)

    end,
    
}
