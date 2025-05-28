require("lspconfig").pyright.setup({
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off", -- Desactiva el chequeo estricto
        diagnosticMode = "openFilesOnly", -- Solo verifica los archivos abiertos
      },
    },
  },
})
