return {
	"folke/neodev.nvim",
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"volar",
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"intelephense",
				},
				automatic_installation = true,
			})

			local util = require("lspconfig.util")

			require("mason-lspconfig").setup_handlers({
				-- The first entry (without a key) will be the default handler
				-- and will be called for each installed server that doesn't have
				-- a dedicated handler.
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
				["volar"] = function()
					require("lspconfig").volar.setup({
						filetypes = { "vue", "javascript", "typescript", "javascriptreact", "typescriptreact" },
						init_options = {
							vue = {
								hybridMode = false,
							},
							typescript = {
								tsdk = "~/.local/share/nvim/mason/packages/vue-language-server/node_modules/typescript/lib",
							},
						},
					})
				end,
				["phpactor"] = function()
					require("lspconfig").phpactor.setup({
						on_attach = function(client)
							client.server_capabilities.hoverProvider = false
							client.server_capabilities.documentSymbolProvider = false
							client.server_capabilities.referencesProvider = false
							client.server_capabilities.completionProvider = false
							client.server_capabilities.documentFormattingProvider = false
							client.server_capabilities.definitionProvider = false
							client.server_capabilities.implementationProvider = true
							client.server_capabilities.typeDefinitionProvider = false
							client.server_capabilities.diagnosticProvider = false
						end,
						settings = {
							phpactor = {
								language_server_phpstan = { enabled = false },
								language_server_psalm = { enabled = false },
								inlayHints = {
									enable = true,
									parameterHints = true,
									typeHints = true,
								},
							},
						},
					})
				end,
				["intelephense"] = function()
					require("lspconfig").intelephense.setup({
						root_dir = util.root_pattern("composer.json", ".git"),
						on_attach = function(client)
							client.server_capabilities.workspaceSymbolProvider = false
						end,
						settings = { php = { completion = { callSnippet = "Replace" } } },
					})
				end,
			})
		end,
	},
}
