local slow_format_filetypes = {"r"}
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
  -- format_on_save = {
    -- These options will be passed to conform.format()
  --   timeout_ms = 2000,
  --   lsp_fallback = true,
  -- },
  format_on_save = function(bufnr)
    if slow_format_filetypes[vim.bo[bufnr].filetype] then
      return
    end
    local function on_format(err)
      if err and err:match("timeout$") then
        slow_format_filetypes[vim.bo[bufnr].filetype] = true
      end
    end

    return { timeout_ms = 200, lsp_format = "fallback" }, on_format
  end,

  format_after_save = function(bufnr)
    if not slow_format_filetypes[vim.bo[bufnr].filetype] then
      return
    end
    return { lsp_format = "fallback" }
  end,
}
local slow_format_filetypes = {}
require("conform").setup({
  format_on_save = function(bufnr)
    if slow_format_filetypes[vim.bo[bufnr].filetype] then
      return
    end
    local function on_format(err)
      if err and err:match("timeout$") then
        slow_format_filetypes[vim.bo[bufnr].filetype] = true
      end
    end

    return { timeout_ms = 200, lsp_format = "fallback" }, on_format
  end,

  format_after_save = function(bufnr)
    if not slow_format_filetypes[vim.bo[bufnr].filetype] then
      return
    end
    return { lsp_format = "fallback" }
  end,
})
