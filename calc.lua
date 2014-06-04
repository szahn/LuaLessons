function adder(x, y)
	return x + y
end

function subtractor(x, y)
	return x - y
end

function calc(x, y, f)
	return f(x, y)
end

print "Enter a number"
local x = io.read("*n", "*l") --Read a number and line

print "Enter another number"
local y = io.read("*n", "*l")

print "Do you want to add or subtract? (Type + or -)"
local op = io.read(1, "*l") --Read one letter

if op == "-" then
	operation = subtractor
else
	operation = adder
end

print(calc(x, y, operation))

