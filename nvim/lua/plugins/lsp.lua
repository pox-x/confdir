require("lspconfig").clangd.setup {
  cmd = { vim.fn.stdpath("data") .. "/mason/bin/clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  single_file_support = true,
  root_dir = require("lspconfig.util").root_pattern("compile_commands.json", "Makefile", ".git"),
}

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false,
        }
      }
    }
  }
}
