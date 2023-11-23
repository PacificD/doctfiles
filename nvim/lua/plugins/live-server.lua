-- https://github.com/barrett-ruth/live-server.nvim
-- Usage:
--  :LiveServerStart
--  :LiveServerStop
return {
  "barrett-ruth/live-server.nvim",
  build = "npm i -g live-server",
  config = true,
  opts = {
    args = {
      "--port=1024",
    },
  },
  -- config = function()
  --   require("live-server").setup({
  --     args = {
  --       "--port=1024",
  --     },
  --   })
  -- end,
}
