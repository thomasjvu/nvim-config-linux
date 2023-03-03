require('lualine').setup {
    options = {
        icons_enabled = true,
    },
    theme = 'spacegray',
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
