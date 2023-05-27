-------------------------------------------------------------
-- ALE CONFIG -----------------------------------------------
-------------------------------------------------------------

-- Configurações gerais -------------------------------------
vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_enter = 0
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_lint_on_filetype_changed = 0
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_disable_lsp = 1


-- Configurar linters ---------------------------------------
vim.g.ale_linters = {
    python = {'flake8', 'pyright', 'bandit', 'trim_whitespace'},
}

-- Configurar formatters ------------------------------------
vim.g.ale_fixers = {
    python = {'black', 'isort'}
}

-- Tamanho max de caracteres por linha black -----------------
vim.g.ale_python_black_line_length = 79
-- Configurando isort ---------------------------------------   
vim.g.ale_python_isort_options = '--profile black'

-- Desabilitar whitespace warnings --------------------------
vim.g.ale_warn_about_trailing_whitespace = 0