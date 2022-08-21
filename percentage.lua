local function getpercent(name)
	local perc = 0
	perc += (20 - #name) / 35
	perc += (#name) / 100
	for i = 1,#name do
		local l = name:sub(i, i):lower()
		local la = name:sub(i-1, i-1):lower()
		if l == "t" or l == "x" then
			perc += .05
		end
		if la == "t" and (l == "p" or l == "s") then
			perc += .1
		end
		if l == "x" then
			perc += .1
		end
		if l == "e" then
			perc += .025
		end
	end
	return perc * 100
end
