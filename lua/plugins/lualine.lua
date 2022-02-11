require('lualine').setup({
    options = {
        theme = 'catppuccin',
        icons_enabled = true,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
    },
    sections = {
        lualine_a = {'mode'},
        lualine_x = {'filetype'},
        lualine_y = {'progress', 'location'},
        lualine_z = {"os.date('%H:%M')"},
    },
    tabline = {},
    extensions = {},
})
