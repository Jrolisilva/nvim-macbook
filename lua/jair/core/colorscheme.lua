-- Tenta carregar o colorscheme nightfly
local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not found!") -- Exibe uma mensagem de erro se o colorscheme não for encontrado
  return
end

-- Ajuste das cores ANSI usadas por terminais (LazyGit, LazyDocker, etc)

-- Cores ANSI
vim.g.terminal_color_0  = '#1d3b53'  -- black
vim.g.terminal_color_1  = '#fc514e'  -- red
vim.g.terminal_color_2  = '#a1cd5e'  -- green
vim.g.terminal_color_3  = '#e3d18a'  -- yellow
vim.g.terminal_color_4  = '#4c7ed3'  -- blue (ajustado: cor de seleção padrão em TUI)
vim.g.terminal_color_5  = '#c792ea'  -- magenta
vim.g.terminal_color_6  = '#7fdbca'  -- cyan
vim.g.terminal_color_7  = '#a1aab8'  -- white
-- Cores brilhantes
vim.g.terminal_color_8  = '#7c8f8f'  -- bright black
vim.g.terminal_color_9  = '#ff5874'  -- bright red
vim.g.terminal_color_10 = '#21c7a8'  -- bright green
vim.g.terminal_color_11 = '#ecc48d'  -- bright yellow
vim.g.terminal_color_12 = '#b4d0ff'  -- bright blue (ajustado: seleção em destaque)
vim.g.terminal_color_13 = '#ae81ff'  -- bright magenta
vim.g.terminal_color_14 = '#7fdbca'  -- bright cyan
vim.g.terminal_color_15 = '#d6deeb'  -- bright white

