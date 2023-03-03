function ColorMyNeovim(color)
    color = color or "spacegray"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
end

ColorMyNeovim()

-- Line Number
vim.api.nvim_set_hl(0, 'LineNr', { fg = "NONE" })
