return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",
        "prettier",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",

        -- python
        "python-lsp-server",

        "typescript-language-server",
        "tailwindcss-language-server",
        "prisma-language-server",
        "clangd",
        "rust-analyzer",
        "graphql-language-service-cli",
      },
    },
  },
}
