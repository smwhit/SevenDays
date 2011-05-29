fib := method(n,
	current := 1
	prev := 0
	sum := 0
	for(i, 0, n, 
		
		if( n == 1, return 1)
		
		sum = current + prev
		current = prev
		prev = sum
		
		)
	return sum
)

fibrec := method(n,
	if( n <= 1, return 1)
	return fibrec(n-1) + fibrec(n-2)
)
	
writeln("iterative fib")
for(i, 0, 9, writeln( fib(i)))
writeln("recursive fib")
for(i, 0, 9, writeln( fibrec(i)))