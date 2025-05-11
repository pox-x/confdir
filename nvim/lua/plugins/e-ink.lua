return {
  "alexxGmZ/e-ink.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    require("e-ink").setup()
    local set_hl = vim.api.nvim_set_hl
    local stat, mono = pcall(require, "e-ink.palette")
    local pono = mono.mono()

    vim.cmd.colorscheme "e-ink"
    if stat then
      print("e-ink palette is set begin config")
      set_hl(0, "Normal", { fg = pono[12], bg = "NONE" })
      set_hl(0, "Comment", { fg = pono[8] })
    else
      print("e-ink palette is not config set")
    end

    -- choose light mode or dark mode
    -- vim.opt.background = "dark"
    -- vim.opt.background = "light"
    --
    -- or do
    -- :set background=dark
    -- :set background=light
  end
}
