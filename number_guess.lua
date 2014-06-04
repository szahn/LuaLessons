print "Guess a number"

math.randomseed(os.time()) --initialize the random number generator with a seed
math.random()

rand_num = math.random(100)
answer = io.read("*n") --read number from std input

if answer < rand_num then
	print "Too low"
elseif answer > rand_num then
	print "Too high"
else
	print "You got it"
end

print("Number was "..rand_num)
