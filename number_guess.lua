print "Guess a number"

math.randomseed(os.time()) --initialize the random number generator with a seed
math.random()

rand_num = math.random(100)

--Keep asking for a number until it matches the random number
while answer ~= rand_num do

	answer = io.read("*n") --read number from std input

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
