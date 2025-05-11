-- Using lazy.nvim
-- ~/.config/nvim/lua/colors/andor.lua

return {
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local stat_one, Andor = pcall(require, "colors.andor")
    local stat_two, Starwars = pcall(require, "colors.starwars")
    if stat_one and stat_two then
      local andor = Andor.colors
      local starwars = Starwars.colors
      require('bamboo').setup({
        -- optional configuration here
        -- style = 'vulgaris',
        transparent = true,
        -- term_colors = false,
        colors = {
          -- Starwars Main theme color
          -- bg = starwars.imperial_black,
          -- blue = starwars.jedi_blue,
          -- green = starwars.yoda_green,
          -- gray = starwars.metallic_gray,
          -- orange = starwars.tatooine_orange,
          -- light_blue = starwars.,
          -- yellow = starwars.imperial_yellow,
          purple = starwars.tatooine_orange,
          -- red = starwars.sith_red,

          -- Andor color
          -- fg = andor.fg,
          -- green = andor.ochre,
          -- coral = andor.blue,
          -- orange = andor.blue,
          bright_purple = andor.maroon,
          -- light_blue = andor.rust,
          -- yellow = andor.slate,
          -- purple = andor.rust,
        },
        code_style = {
          comments = { fg = "#404040", italic = true },
          conditionals = { italic = true },
        }
      })
    else
      print("andor theme is not loaded !!!")
    end

    vim.cmd('colorscheme bamboo')
    -- require('bamboo').load()
  end,
}
