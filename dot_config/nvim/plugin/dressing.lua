local ok, dressing = pcall(require, "dressing")
if not ok then
	return
end

dressing.setup {
	input = {
		enabled = true,
		default_prompt = "Input: ",
		insert_only = true,
		start_in_insert = true,
	}
}
