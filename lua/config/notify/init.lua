--------------------------------------------------------
--- NOTIFY CONFIG --------------------------------------
--------------------------------------------------------
vim.notify = require('notify')
require('notify').setup({
    stages = "fade_in_slide_out",
    timeout = 3000,
    background_colour = "#000000",
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
