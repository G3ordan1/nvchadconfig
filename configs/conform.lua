require("conform").setup {
  formatters = {
    rprettify = {
      inherit = false,
      stdin = false,
      command = "rprettify.cmd",
      args = { "$FILENAME" },
    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    r = { "rprettify" },
    cpp = { "clang_format" },
    c = { "clang_format" },
    python = { "autopep8" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}
