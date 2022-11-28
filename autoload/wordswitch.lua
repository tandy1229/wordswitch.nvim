local M = {}
local g, fn = vim.g, vim.fn
function M.antovim_swap()
	local dictionary, sub
	if g.custom_antovim_definitions then
		dictionary = g.antovim_definitions .. g.custom_antovim_definitions
	else
		dictionary = g.antovim_definitions
	end

	local word = fn.expand('<cword>')

	for _, v in ipairs(dictionary) do
		if word == v[1] then
			sub = v[2]
			break
		elseif word == v[2] then
			sub = v[1]
			break
		end
	end
	if sub then
		vim.cmd('normal! ciw' .. sub)
	end
end
return M
