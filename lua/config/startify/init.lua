----------------------------------------------------------
-- STARTIFY CONFIG ---------------------------------------
----------------------------------------------------------

-- Instalação do nvim-web-devicons
vim.cmd [[packadd nvim-web-devicons]]

vim.g.startify_enable_special = 0 
 vim.g.startify_files_number = 6
 vim.g.startify_change_to_dir = 1 
 -- forçar que os atalhos sejam letras e não numeros
 vim.g.startify_custom_indices = { 
     'a', 'b', 'c', 'd', 'e', 'f', 
     'g', 'h', 'i' , 'j', 'k', 'l', 
     'm', 'n', 'o', 'p', 'q', 'r' , 
     's', 't', 'u', 'v', 'w', 'x', 
     'y', 'z' 
 }


 vim.g.startify_commands = {
     { '  New File', 'enew' },
     { '  Packer Sync', 'PackerSync' },
     { '  Mason Update', 'MasonUpdate'},
     { '  Treesitter Update', 'TSUpdate' },
     { '  Check Health', 'checkhealth'},
     { '  Settings', 'edit ~/.config/nvim/init.lua'},
     { '  Quit', 'qa!'},
 }


 function _G.webDevIcons(path)
    local filename = vim.fn.fnamemodify(path, ":t")
    local extension = vim.fn.fnamemodify(path, ":e")
    return require("nvim-web-devicons").get_icon(filename, extension, { default = true })
end

vim.api.nvim_exec(
    [[
function! StartifyEntryFormat() abort
  return 'v:lua.webDevIcons(absolute_path) . " " . entry_path'
endfunction
]],
    false
)
----------------------------------------------------------
-- Startify header ---------------------------------------
----------------------------------------------------------
vim.g.startify_custom_header = {
[[       __   __   ______   ______   __   __ __   __    __          ]], 
[[      /\ "-.\ \ /\  ___\ /\  __ \ /\ \ / //\ \ /\ "-./  \         ]],
[[      \ \ \-.  \\ \  __\ \ \ \/\ \\ \ \'/ \ \ \\ \ \-./\ \        ]],
[[       \ \_\\"\_\\ \_____\\ \_____\\ \__|  \ \_\\ \_\ \ \_\       ]], 
[[        \/_/ \/_/ \/_____/ \/_____/ \/_/    \/_/ \/_/  \/_/       ]],                                                            
[[                              _   _                               ]],               
[[        Alex Simões          (_)-(_)                              ]],  
[[        github.com/lxlx19     (o o)                               ]],
[[      --------------------ooO--(_)--Ooo--------------------       ]],                                            
}

----------------------------------------------------------
-- Startify lists ----------------------------------------
----------------------------------------------------------
vim.g.startify_lists = {
    { type = 'sessions', header = {'    Sessions'} },
    { type = 'files', header = {'     Files'} },
    { type = 'dir', header = {'    Current Directory ' .. vim.fn.getcwd()} },
    { type = 'bookmarks', header = {'   Bookmarks'} },
    { type = 'commands', header = {'    Commands'} },
}

------------------------------------------------------------
--  Startify session sort method -------------------------
----------------------------------------------------------
vim.g.startify_session_sort = 1 
