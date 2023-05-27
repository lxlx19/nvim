-----------------------------------------------------
-- THEMES CONFIG ------------------------------------
-----------------------------------------------------

-----------------------------------------------------
-- Set Theme ----------------------------------------
-----------------------------------------------------
-- vim.cmd('colorscheme zephyr')

-- require('colorbuddy').colorscheme('cobalt2')
--
require("bluloco").setup({
  style = "dark",               -- "auto" | "dark" | "light"
  transparent = false,
  italics = false,
  terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
  guicursor   = true,
})

vim.opt.termguicolors = true
vim.cmd('colorscheme bluloco')
