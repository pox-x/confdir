return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.theme = {
      normal = { c = { bg = "NONE", fg = "#ECEFF4" } },
      inactive = { c = { bg = "NONE", fg = "#D8DEE9" } },
    }
  end,
}
