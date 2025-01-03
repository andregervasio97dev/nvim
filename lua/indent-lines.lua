require("mini.indentscope").setup({
	draw = {
		priority = 10,
		animation = require("mini.indentscope").gen_animation.linear({ duration = 10, unit = "step" })
	},
})
