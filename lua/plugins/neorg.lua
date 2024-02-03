return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	ft = "norg",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-neorg/neorg-telescope",
		{ "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
	},

	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {
					config = {
						icons = {
							todo = {
								urgent = { icon = "" },
							},
						},
					},
				}, -- adds pretty icons to your documents
				["core.completion"] = {
					config = { engine = "nvim-cmp" },
				},
				["core.summary"] = {},

				["core.integrations.treesitter"] = {},

				["core.integrations.telescope"] = {},

				["core.esupports.metagen"] = {
					config = { timezones = "implicit-local", type = "auto" },
				},

				["core.journal"] = {
					config = {
						strategy = "flat",
						workspace = "notes",
					},
				},

				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/Notes/notes",
							work = "~/Notes/work",
						},
						default_workspace = "notes",
					},
				},

				["core.keybinds"] = {
					config = {
						hook = function(keybinds)
							keybinds.map("norg", "n", "<localleader>r", ":Neorg return<CR>")
							keybinds.map("norg", "i", "-(", "- ( ) ")
							keybinds.remap_event("norg", "i", "\\date", "core.tempus.insert-date-insert-mode")
						end,
					},
				},
				["external.templates"] = {
					config = {
						templates_dir = vim.fn.stdpath("config") .. "/templates/norg",
						default_subcommand = "load", -- or "fload", "load"
						keywords = {
							TODAY = function()
								return require("luasnip").text_node(os.date("%A %B %d, %Y"))
							end,
							YESTERDAY_PATH = function()
								local yesterday = os.date("%Y/%m/%d", os.time() - 86400)
								return require("luasnip").text_node(("../../%s"):format(yesterday))
							end,
							TOMORROW_PATH = function()
								local tomorrow = os.date("%Y/%m/%d", os.time() + 86400)
								return require("luasnip").text_node(("../../%s"):format(tomorrow))
							end,
							DESC = function()
								local i = require("luasnip").insert_node
								return i(1)
							end,
							RATING = function()
								local i = require("luasnip").insert_node
								return i(1)
							end,
							WEATHER = function()
								local c = require("luasnip").choice_node
								local t = require("luasnip").text_node
								return c(1, { t("Sun"), t("Rain"), t("Storm"), t("Snow"), t("Clouds") })
							end,
							SLEEP = function()
								local i = require("luasnip").insert_node
								return i(1)
							end,
						},
						snippets_overwrite = {},
					},
				},
			},
		})
		local neorg_callbacks = require("neorg.core.callbacks")

		neorg_callbacks.on_event("core.keybinds.events.enable_keybinds", function(_, keybinds)
			-- Map all the below keybinds only when the "norg" mode is active
			keybinds.map_event_to_mode("norg", {
				n = { -- Bind keys in normal mode
					{ "<C-s>", "core.integrations.telescope.find_linkable" },
				},

				i = { -- Bind in insert mode
					{ "<C-l>", "core.integrations.telescope.insert_link" },
				},
			}, {
				silent = true,
				noremap = true,
			})
		end)
	end,
}
