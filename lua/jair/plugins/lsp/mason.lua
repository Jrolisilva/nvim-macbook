-- lsp/mason.lua
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"jsonls"
	},
	automatic_installation = true,
})
