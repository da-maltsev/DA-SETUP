return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- disabled till I figure it out how to correcctly configure it
      --local on_attach = function(client, bufnr)
      --if client.name == "ruff_lsp" then
      ---- Disable hover in favor of Pyright
      --client.server_capabilities.hoverProvider = false
      --end
      --end
      require("lspconfig").ruff_lsp.setup({
        --	on_attach = on_attach,
        init_options = {
          settings = {
            -- Any extra CLI arguments for `ruff` go here.
            args = {
              "--line-length=120",
            },
          },
        },
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities,
      })
      lspconfig.svelte.setup({
        capabilities = capabilities,
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
    end,
  },
}
