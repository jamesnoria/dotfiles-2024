vim.opt.termguicolors = true

require('bufferline').setup {
    options = {
    numbers = 'none',
    diagnostics = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    seperator_style = 'slant',
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    offsets = {
        {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            separator = true -- use a "true" to enable the default, or set your own character
        }
      }
   },
}

