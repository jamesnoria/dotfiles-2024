require('lualine').setup {
    options = {
        theme = "catppuccin",
        icons_enabled = true
    },
  sections = {
    lualine_a = {'mode'},
    lualine_c = {{'filename', path = 1}},
  },
}
