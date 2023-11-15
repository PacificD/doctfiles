return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "css-lsp",
        "cssmodules-language-server",
        "eslint-lsp",
        "json-lsp",
        "lua-language-server",
        "prettierd",
        "prisma-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "html-lsp",
        "emmet-language-server",
        "astro-language-server",
        "svelte-language-server",
        "vue-language-server",
      },
    },
  },
}
