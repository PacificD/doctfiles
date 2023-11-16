return {
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "prettier")
      opts.ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "css-lsp",
        "cssmodules-language-server",
        "json-lsp",
        "lua-language-server",
        "prisma-language-server",
        "tailwindcss-language-server",
        "typescript-language-server",
        "html-lsp",
        "emmet-language-server",
        "astro-language-server",
        "svelte-language-server",
        "vue-language-server",
      }
    end,
  },
}
