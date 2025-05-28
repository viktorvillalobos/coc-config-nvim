-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Configuración para ajuste de líneas en LazyVim
vim.opt.wrap = true -- Habilitar ajuste de líneas
vim.opt.linebreak = true -- Evitar cortes en mitad de palabras
vim.opt.showbreak = ">>>" -- Mostrar un indicador para líneas continuadas
