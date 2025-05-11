return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        godot = {
          server = "127.0.0.1",
          port = 6005,
        },
      },
      setup = {
        godot = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          local util = require("lspconfig.util")
          local root_files = { "project.godot" }

          if not configs.godot then
            configs.godot = {
              default_config = {
                cmd = vim.lsp.rpc.connect(opts.server, opts.port),
                filetypes = { "gdscript", "mono" },
                single_file_support = true,
                root_dir = util.root_pattern(unpack(root_files)),
                settings = {},
              },
              command = {},
              docs = { description = [[]] },
            }
          end
          lspconfig.godot.setup(opts)
        end,
      }
    }
  }
}
