-- Define a tecla leader como espaço
vim.g.mapleader = " "

local keymap = vim.keymap -- para simplificar

-- Remaps para navegação entre janelas
keymap.set("n", "<C-h>", "<C-w>h") -- Mover para a janela da esquerda
keymap.set("n", "<C-j>", "<C-w>j") -- Mover para a janela de baixo
keymap.set("n", "<C-k>", "<C-w>k") -- Mover para a janela de cima
keymap.set("n", "<C-l>", "<C-w>l") -- Mover para a janela da direita

-- Criação de splits (divisões de janela)
keymap.set("n", "th", ":split<CR>") -- Split horizontal
keymap.set("n", "tv", ":vsplit<CR>") -- Split vertical

-- Fechar splits e outras janelas
keymap.set("n", "tt", ":q<CR>") -- Fechar a janela ou split atual

-- Remaps adicionais para funcionalidades convenientes

-- Usar jk para sair do modo de inserção
keymap.set("i", "jk", "<ESC>")

-- Atalhos para nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeOpen<CR>") -- Abre o nvim-tree
keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>") -- Alterna a visibilidade do nvim-tree
keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- encontre arquivos no diretório de trabalho atual, respeita .gitignore
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- encontre a string no diretório de trabalho atual enquanto você digita
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- encontre a string sob o cursor no diretório de trabalho atual
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>lg", "<cmd>LazyGit<cr> lazy_git<cr>") -- comando para abrir o lazygit
