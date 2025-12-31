-- Set up LSP for clangd
local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
  cmd = { "clangd", "--background-index", "--clang-tidy", "--completion-style=detailed", "--header-insertion=iwyu" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", ".git"),
  settings = {
    clangd = {
      -- Optional: Turn off background indexing if you don't need it
      excludeArguments = { "--background-index" },
    },
  },
}
