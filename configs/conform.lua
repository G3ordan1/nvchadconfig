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
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}
