local setup, neural = pcall(require, "neural")
if not setup then
	return
end

neural.setup({
	ui = {
		prompt_icon = "🍄",
		animated_sign_enabled = false,
	},
	source = {
		openai = {
			api_key = os.getenv("OPENAI_API_KEY"),
		},
	},
})
