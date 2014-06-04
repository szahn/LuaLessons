function findMax(...)
	local arguments = {...}
	local max = ...

	--# means count of arguments
	for  i = 1, #arguments do
		if arguments[i] > max then
			max = arguments[i]
		end
	end

	return max

end

local maxNum = findMax(1,5,3,10,8,12,5,2)
print(maxNum)
