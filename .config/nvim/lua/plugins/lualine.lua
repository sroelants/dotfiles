  require('lualine').setup{
    options = { 
    theme = 'gruvbox',
    section_separators = '',
    component_separators = '' 
    },
    sections = {
      lualine_x = { 'filetype' },

      lualine_c = { 
        { 'filename',
          path = 1
        }
      }
    }
  }
