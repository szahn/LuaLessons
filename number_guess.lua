print "Guess a number"

--Declare a basic function
function getRandomNumber(maxValue)
	math.randomseed(os.time()) --initialize the random number generator with a seed
	math.random()
	return math.random(maxValue)
end

local rand_num = getRandomNumber(100)


--Keep asking for a number until it matches the random number
while answer ~= rand_num do

	local answer = io.read("*n") --read number from std input

	if answer < rand_num then
		print "Too low"
	elseif answer > rand_num then
		print "Too high"
	else
		break
	end

	print "Guess again"

end

print("Number was "..rand_num)
