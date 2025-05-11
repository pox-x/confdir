return {
  "chama-chomo/grail",
  name = 'grail',
  version = false,
  lazy = true,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("grail").setup({
      -- Your config here
      -- options = {
      --   transparent = true,
      --   terminal_colors = true,
      --   dim_inactive = false,
      --   styles = {
      --     comments = 'italic',
      --     keywords = 'bold'
      --   },
      -- }
    })
  end,
}
