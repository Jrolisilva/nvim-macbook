-- lsp/mason.lua
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"tsserver",
		"lua_ls",
		"jsonls",
		"eslint",
	},
	automatic_installation = true,
})
