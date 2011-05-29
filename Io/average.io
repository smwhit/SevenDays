average := method(lst,
	sum := 0
	count := lst size
	
	lst foreach(index, n, 
		sum = sum + lst at(index))
	return sum / count
)

averageTry := method(lst,
	sum := 0
	count := lst size
	
	lst foreach(index, n, 
		e := try(
				sum = sum + lst at(index)	
			)
			e catch(Exception,
				writeln(e)
			)
		)
	return sum / count
)