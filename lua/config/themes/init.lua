-----------------------------------------------------
-- THEMES CONFIG ------------------------------------
-----------------------------------------------------

-----------------------------------------------------
-- Set Theme ----------------------------------------
-----------------------------------------------------

-- Zephyr -------------------------------------------
-- vim.cmd('colorscheme zephyr')

-- Cobalt2 ------------------------------------------
-- require('colorbuddy').colorscheme('cobalt2')

-- Bluloco ------------------------------------------
-- require("bluloco").setup({
  -- style = "dark",               -- "auto" | "dark" | "light"
  -- transparent = false,
  -- italics = false,
  -- terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
  -- guicursor   = true,
-- })

-- Gruvbox ------------------------------------------
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd('colorscheme gruvbox')
