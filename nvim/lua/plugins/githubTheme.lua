-- Install without configuration
-- { 'projekt0n/github-nvim-theme', name = 'github-theme' }

local palettes = {
  all = {
    comment = '#332233',
  },
}

local specs = {
  all = {
    comment = '#332233',
  },
}

local groups = {
  all = {
    comment = '#332233',
  },
}

-- Or with configuration
return {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = true,     -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      -- ...
      options = {
        transparent = true,
        terminal_colors = true,
        dim_inactive = false,
        module_default = false,
        code_style = {
          comments = { fg = "#404040", italic = true },
          conditionals = { italic = true },
        },
        styles = {
          comments = 'italic',
          keywords = 'bold',
          types = 'italic, bold',
        },
        palettes = palettes,
        specs = specs,
        groups = groups,
      },
    })
    vim.cmd('colorscheme github_dark')
  end,
}
