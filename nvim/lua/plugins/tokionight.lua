return {
  "folke/tokyonight.nvim",
  lazy = true,
  priority = 1000,
  opts = {
    style = "night", -- "day" est trop clair avec du texte blanc
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_colors = function(colors)
      colors.fg = "#ffffff" -- texte principal en blanc
    end,
    on_highlights = function(hl, colors)
      hl.Normal = { fg = "#ffffff", bg = "NONE" }
      hl.NormalNC = { fg = "#ffffff", bg = "NONE" }
      hl.NormalFloat = { fg = "#ffffff", bg = "NONE" }
      hl.FloatBorder = { fg = "#ffffff", bg = "NONE" }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
