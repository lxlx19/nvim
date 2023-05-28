---------------------------------------------------------
-- GENERAL CONFIG ---------------------------------------
---------------------------------------------------------
vim.cmd('syntax enable') -- Enables syntax highlighing
vim.cmd('filetype plugin indent on') -- Enables filetype detection, plugins and indenting
---------------------------------------------------------
-- Encoding ---------------------------------------------
---------------------------------------------------------
vim.o.encoding = 'utf-8' -- The encoding displayed
vim.o.fileencoding = 'utf-8' -- The encoding written to file
vim.scriptencoding = 'utf-8' -- The encoding used internally
---------------------------------------------------------
-- UI ---------------------------------------------------
---------------------------------------------------------
vim.o.title = true -- Set the title of window to the value of the titlestring
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.hlsearch = true -- Highlight search results
vim.o.showcmd = true -- Show command in bottom bar
vim.o.cmdheight = 1 -- Height of the command bar
vim.o.laststatus = 2 -- Always display the status line
-- vim.o.shell = 'bash' -- Shell to use for `!`, `:!`, `system()` etc.
vim.o.breakindent = true -- Break indent
vim.o.wrap = false -- Disable line wrap
vim.o.backspace = 'indent,eol,start' -- Make backspace behave like every other editor
vim.o.termguicolors = true -- True color support
vim.o.mouse = 'a' --
vim.o.clipboard = 'unnamedplus' -- Copy paste between vim and everything else
vim.o.hidden = true -- Enable background buffers
vim.o.splitright = true -- Vertical split to the right
vim.o.splitbelow = true -- Horizontal split to the bottom
vim.o.ignorecase = true -- Ignore case
vim.o.smartcase = true -- Don't ignore case with capitals
vim.o.incsearch = true -- Find as you type
vim.o.autoindent = true -- Good auto indent
vim.o.smartindent = true -- Insert indents automatically    
vim.o.tabstop = 4 -- Number of spaces tabs count for
vim.o.shiftwidth = 4 -- Size of an indent
vim.o.softtabstop = 4 -- Number of spaces tabs count for
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.showtabline = 2 -- Always show tabs
vim.o.number = true -- Show line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.cursorline = true -- Highlight cursor line
vim.o.signcolumn = 'yes' -- Always show the sign column, otherwise it would shift the text each time
vim.o.updatetime = 300 -- Faster completion
vim.o.scrolloff = 8 -- Lines of context
vim.o.sidescrolloff = 5 -- Columns of context
vim.o.wrap = false -- Disable line wrap
vim.o.winblend = 10 -- Transparency
vim.o.wildoptions = 'pum' -- Complete options
vim.o.pumblend = 17 -- Popup blend

