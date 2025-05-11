return {
  {
    "chrisbra/Colorizer",
    config = function()
      vim.cmd([[
        augroup AnsiColorizer
          autocmd!
          autocmd BufReadPost *.log,*.txt ColorHighlight
        augroup END
      ]])
    end,
  },
}
