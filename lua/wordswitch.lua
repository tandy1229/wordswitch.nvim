local M = {}
local g, fn = vim.g, vim.fn

function M.wordswitch()
	local dictionary, sub
	if g.custom_wordswitch_definitions then
		dictionary = g.custom_wordswitch_definitions .. g.wordswitch_definitions
	else
		dictionary = g.wordswitch_definitions
	end

	local word = fn.expand("<cword>")
	-- TODO: find a way which can search words more effective
	-- without using vim.fn.index() api
	for _, v in ipairs(dictionary) do
		local temp = 0
		for _, d in ipairs(v) do
			temp = temp + 1
			if word == d then
				if #v == temp then
					sub = v[1]
					goto dest
				else
					sub = v[temp + 1]
					goto dest
				end
			end
		end
	end
	::dest::
	if sub then
		vim.cmd("normal! ciw" .. sub)
	end
end
return M

-- another solve
-- for _, v in ipairs(dictionary) do
--     local idx = fn.index(v, word)
--
--     if idx > -1 then
--         if idx == #v - 1 then
--             sub = v[1]
--         else
--             sub = v[idx + 2]
--         end
--
--         vim.cmd('normal! ciw' .. sub)
--         break
--     end
-- end
