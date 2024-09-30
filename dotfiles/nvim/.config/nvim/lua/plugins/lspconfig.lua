return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  dependencies = {
    "jose-elias-alvarez/typescript.nvim",
    init = function()
      require("lazyvim.util").lsp.on_attach(function(_, buffer)
        -- stylua: ignore
        vim.keymap.set( "n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
        vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
      end)
    end,
  },
  opts = {
    ---@type lspconfig.options
    servers = {
      pyright = {},
      -- intelephense = {},
      -- tsserver = {},
      -- gopls = {},
      -- stimulus_ls = {},
      -- rust_analyzer = {},
      -- csharp_ls = {},
    },
    setup = {
      tsserver = function(_, opts)
        require("typescript").setup({ server = opts })
        return true
      end,
    }
  },
}
