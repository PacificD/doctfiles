return {
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true }, -- kanagawa kanagawa-wave kanagawa-dragon kanagawa-lotus
  { "rose-pine/neovim", lazy = true }, -- rose-pine rose-pine-moon rose-pine-dawn
  { "glepnir/zephyr-nvim", lazy = true },
  { "marko-cerovac/material.nvim", lazy = true }, -- material material-oceanic material-deep-ocean material-palenight material-lighter material-darker
  { "craftzdog/solarized-osaka.nvim", lazy = true },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "moon",
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      transparent = false,
    },
    -- tokyonight tokyonight-night tokyonight-moon tokyonight-day tokyonight-storm
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      transparent_background = true,
    },
    -- catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  },
  {
    -- https://github.com/olimorris/onedarkpro.nvim
    "olimorris/onedarkpro.nvim",
    priority = 1001, -- Ensure it loads first
    -- onedark onelight onedark_vivid onedark_dark
    opts = {
      options = {
        transparency = true,
      },
    },
  },
  { "drewtempelmeyer/palenight.vim", lazy = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material-oceanic", -- onedark_vivid
    },
  },
}
