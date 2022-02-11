local lualine = require("lualine")
local floaterm_info = require("util/floaterm_info")

local function floaterm_section()
  if (vim.bo.filetype == 'floaterm') then
    return floaterm_info()
  else
    return ''
  end
end

local dayfox_colors = {
  blue   = '#6080B0',
  cyan   = '#6CA7BD',
  black  = '#253B55',
  white  = '#D8D8D8',
  red    = '#D685AF',
  violet = '#93769D',
  grey   = '#7F848E',
}

local sunbather_colors = {
  primary = '#D65F86',
  secondary = '#121212',
  foreground = '#C6C6C6',
  background = '#080808',
}

local sunbather_theme = {
  normal = {
    a = { fg = sunbather_colors.background, bg = sunbather_colors.primary },
    b = { fg = sunbather_colors.foreground, bg = sunbather_colors.secondary },
    c = { fg = sunbather_colors.foreground, bg = sunbather_colors.secondary }
  },

  insert = {
    a = { fg = sunbather_colors.background, bg = sunbather_colors.primary }
  },

  visual = {
    a = { fg = sunbather_colors.background, bg = sunbather_colors.primary }
  },

  replace = {
    a = { fg = sunbather_colors.background, bg = sunbather_colors.primary }
  },

  inactive = {
    a = { fg = sunbather_colors.foreground, bg = sunbather_colors.secondary },
    b = { fg = sunbather_colors.foreground, bg = sunbather_colors.secondary },
    c = { fg = sunbather_colors.foreground, bg = sunbather_colors.secondary }
  },
}

local dayfox_theme = {
  normal = {
    a = { fg = dayfox_colors.black, bg = dayfox_colors.red },
    b = { fg = dayfox_colors.black, bg = dayfox_colors.white },
    c = { fg = dayfox_colors.black, bg = dayfox_colors.white },
  },

  insert = {
    a = { fg = dayfox_colors.black, bg = dayfox_colors.blue }
  },

  visual = {
    a = { fg = dayfox_colors.black, bg = dayfox_colors.cyan }
  },

  replace = {
    a = { fg = dayfox_colors.black, bg = dayfox_colors.red }
  },

  inactive = {
    a = { fg = dayfox_colors.black, bg = dayfox_colors.white },
    b = { fg = dayfox_colors.black, bg = dayfox_colors.white },
    c = { fg = dayfox_colors.black, bg = dayfox_colors.white },
  },
}

lualine.setup {
  options = {
    theme = "catppuccin",
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {},
    lualine_b = {
      {
        'filename',
        file_status = true,
        path = 1,
        symbols = {
          modified = ' 📝'
        }
      },
      'branch', 
      { floaterm_section }, 
      'diagnostics'
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {
      'progress',
      'filetype'
    },
    lualine_z = { 'mode' },
  },
  tabline = {},
  inactive_sections = {},
  extensions = {},
}
