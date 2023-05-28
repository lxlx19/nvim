-------------------------------------------------------------------------------- 
-- DAP ------------------------------------------------------------------------- 
--------------------------------------------------------------------------------
local dap = require('dap')
local map = vim.api.nvim_set_keymap
local create_cmd = vim.api.nvim_create_user_command
--------------------------------------------------------------------------------
-- Debugpy ---------------------------------------------------------------------
--------------------------------------------------------------------------------
dap.adapters.python = {
  type = 'executable',
  command = 'python',
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    pythonPath = function()
      local venv_path = vim.fn.getenv 'VIRTUAL_ENVIRONMENT'
      if venv_path ~= vim.NIL and venv_path ~= '' then
        return venv_path .. '/bin/python'
      else
        return '/usr/bin/python'
      end
    end,
  },
}
--------------------------------------------------------------------------------
-- Neovim Lua ------------------------------------------------------------------
--------------------------------------------------------------------------------
dap.adapters.nlua = function(callback, config)
  callback { type = 'server', host = config.host, port = config.port }
end

dap.configurations.lua = {
  {
    type = 'nlua',
    request = 'attach',
    name = 'Attach to running Neovim instance',
    host = function()
      local value = vim.fn.input 'Host [127.0.0.1]: '
      if value ~= '' then
        return value
      end
      return '127.0.0.1'
    end,
    port = function()
      local val = tonumber(vim.fn.input 'Port: ')
      assert(val, 'Please provide a port number')
      return val
    end,
  },
}
--------------------------------------------------------------------------------
-- lldb ------------------------------------------------------------------------
--------------------------------------------------------------------------------
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode',
  name = 'lldb',
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
--------------------------------------------------------------------------------
-- Commands --------------------------------------------------------------------
--------------------------------------------------------------------------------
create_cmd('BreakpointToggle', function()
  dap.toggle_breakpoint()
end, {})
create_cmd('Debug', function()
  dap.continue()
end, {})
create_cmd('DapREPL', function()
  dap.repl.open()
end, {})

map('n', '<F5>', '', {
  callback = function()
    dap.continue()
  end,
  noremap = true,
})
map('n', '<F10>', '', {
  callback = function()
    dap.step_over()
  end,
  noremap = true,
})
map('n', '<F11>', '', {
  callback = function()
    dap.step_into()
  end,
  noremap = true,
})
map('n', '<F12>', '', {
  callback = function()
    dap.step_out()
  end,
  noremap = true,
})
