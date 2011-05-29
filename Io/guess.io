guess := 0
rand := (Random value * 100) round

for(i, 1, 10,   
	guess = (File standardInput readLine) asNumber;
	if(guess == rand, writeln("You guess the correct number!") break)
	if(guess > rand, writeln("Too high"), writeln("Too low"))
)