local M = {}
local g, fn = vim.g, vim.fn

-- TODO: change it to a lua type plugin
-- but now it use vim's type plugin:-)
-- such as vim.g instead of _G.
-- In the future times I will find some
-- plugin to learn the way it become.
function M.wordswitch()
	local dictionary
	if g.custom_wordswitch_definitions then
		dictionary = g.custom_wordswitch_definitions .. g.wordswitch_definitions
	else
		dictionary = g.wordswitch_definitions
	end

	local sub
	---@type string word
	local word = fn.expand("<cword>")
	local word_first_char = word:sub(1, 1)
	local word_low_case = word:lower()

	local found = false
	-- TODO: find a way which can search words more effective
	-- without using vim.fn.index() api
	for _, v in ipairs(dictionary) do
		if found then
			break
		end
		local temp = 0
		for _, d in ipairs(v) do
			temp = temp + 1
			if word_low_case == d then
				sub = v[temp % #v + 1]
				found = true
				break
			end
		end
	end

	if sub then
		if word == word:upper() then
			sub = sub:upper()
		elseif word_first_char == word_first_char:upper() then
			sub = sub:gsub("^%l", string.upper)
		else
			sub = sub:lower()
		end
		vim.cmd("normal! ciw" .. sub)
	end
end

return M
