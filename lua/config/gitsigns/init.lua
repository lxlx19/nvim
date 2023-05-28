------------------------------------------------------------ 
-- GIT SIGNS -----------------------------------------------
------------------------------------------------------------
require('gitsigns').setup(
    {
        signs = {
            add = { text = '+ ' },
            change = { text = '~ ' },
            delete = { text = '- ' },
            topdelete = { text = '= ' },
            changedelete = { text = '| ' },
        },
        signcolumn = true,
        numhl = true,
        linehl = false,
        word_diff = false,
        keymaps = {},
        watch_gitdir ={
            interval = 1000,
            follow_files = true
        },
        current_line_blame = false,
        current_line_blame_opts = {
            virt_text = true,
            virt_text_pos = 'eol',
            delay = 1000,
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d %H:%M:%S> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil,
    }
)
