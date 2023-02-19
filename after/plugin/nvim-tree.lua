-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- default setup
require("nvim-tree").setup({
    view = {
        side = "left",
        width = 30,
        hide_root_folder = true,
    }
})

vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')

-- Always Open Nvim Tree
-- local function open_nvim_tree()

--     -- always open the tree
--     require("nvim-tree.api").tree.open()
-- end

-- open_nvim_tree()
