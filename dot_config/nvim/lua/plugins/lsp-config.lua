return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({ ensure_installed = { "angularls", "bashls", "clangd", "html", "jsonls", "lua_ls", "tsserver", "zls" } })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    end
  },
  {
    "OmniSharp/omnisharp-vim",
    config = function()
      vim.g.OmniSharp_server_studio = 1
      vim.g.OmniSharp_selector_ui = 'fzf'
      vim.g.OmniSharp_selector_findusages = 'fzf'
      vim.g.OmniSharp_server_use_mono = 1
      vim.g.OmniSharp_highlighting = 3
    end
  }
}
