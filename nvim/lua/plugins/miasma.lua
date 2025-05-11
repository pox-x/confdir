return {
  "xero/miasma.nvim",
  lazy = true,
  priority = 1000,
  config = function()
    local status, miasma = pcall(require, "miasma")
    if not status then
      print("Miasma is not installed")
    else
      miasma.setup({
        options = {
          theme = "miasma"
        },
        transparent_bg = true,
      })
    end
    vim.cmd("colorscheme miasma")
  end,
}
