local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
	ensure_installed = "all",
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	ignore_install = {
		"vala", "verilog", "turtle",
		"supercollider", "teal", "yang",
		"zig", "wgsl",
		"rego", "pioasm",
		"phpdoc", "php",
		"norg", "nix", "ocaml", "ocaml_interface",
		"ocamllex", "pascal", "fortram"
	}, -- list of parsers to ignore installing
	autopairs = {
		enable = true
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
}
