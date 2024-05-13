return {
  { "ellisonleao/gruvbox.nvim", lazy = true },
  { "Mofiqul/dracula.nvim", lazy = true },
  { "rebelot/kanagawa.nvim", lazy = true }, -- kanagawa kanagawa-wave kanagawa-dragon kanagawa-lotus
  {
    "rose-pine/neovim",
    lazy = true,
  }, -- rose-pine rose-pine-moon rose-pine-dawn
  { "glepnir/zephyr-nvim", lazy = true },
  {
    "AlexvZyl/nordic.nvim",
    lazy = true,
    opts = {
      transparent_bg = true,
    },
  },
  {
    "marko-cerovac/material.nvim",
    lazy = true,
    opts = {
      disable = {
        background = true,
      },
    },
  }, -- material material-oceanic material-deep-ocean material-palenight material-lighter material-darker
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
      transparent = true,
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
    "scottmckendry/cyberdream.nvim",
    lazy = true,
    opts = {
      transparent = true,
      italic_comments = true,
      hide_fillchars = true,
      borderless_telescope = false,
      terminal_colors = true,
      theme = {
        highlights = {
          Comment = { fg = "#696969", bg = "NONE", italic = true },
          -- Constant = { bold = true },
          Function = { bold = true },
          CursorLine = { bg = "#3c4048" },
        },
        colors = { bg = "#000000", green = "#00ff00", magenta = "#ff00ff" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream", -- onedark_vivid
    },
  },
}
