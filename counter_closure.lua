function simpleCounterIterator(max)
	local count = 0

	--return an anon function
	return function()
		count = count  + 1
		if count > max then
			return nil
		end

		return count
	end

end

for v in simpleCounterIterator(50) do
	print(v)
end
