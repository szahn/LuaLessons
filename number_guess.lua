--Declare a basic function
function getRandomNumber(maxValue)
	math.randomseed(os.time()) --initialize the random number generator with a seed
	math.random()
	return math.random(maxValue)
end


--Variadic function
function handleGuesses(...)
	lowMessage, highMessage, number = ...

	--Keep asking for a number until it matches the random number
	while answer ~= number do

		local answer = io.read("*n") --read number from std input

		if answer < number then
			print (lowMessage)
		elseif answer > number then
			print (highMessage)
		else
			break
		end

		print "Guess again"

	end

end

local randNum = getRandomNumber(100)

print "Guess a number"
handleGuesses("Too low", "Too high", randNum);

print("Number was "..randNum)
