MyList := List clone

MyList dim := method(x, y,
	for(i, 0, x-1,
		self append(list())
		for(j, 0, y-1,
			self at(i) append(nil)
		)
	)	
)

MyList set := method(x, y, value,
	self at(x) atPut(y, value)
)

MyList get := method(x, y,
	self at(x) at(y)
)

MyList transpose := method(
	writeln("x - " .. self size)
	writeln("y - " .. self at(0) size)
	
	new_x := self at(0) size
	new_y := self size
	
	new_list := MyList clone
	new_list dim(new_x, new_y)
	
	for(i, 0, new_x -1,
		for(j, 0, new_y -1,
			new_list set(i, j, self get(j, i))	)
	)
	return new_list
)

MyList write_matrix := method(
	s := ""
	f := File openForUpdating("matrix.txt")
	
	foreach(i, v, 
	  s = s .. at(i) join(" ") .. "\n"
	)
	
	f write(s)
	f close
)

MyList read_matrix := method(
	l := ""
	f := File openForReading("matrix.txt")
	new_matrix := List clone
	
	f foreachLine(line,
		new_matrix append(line split)
	)
	
	f close
	return new_matrix
)

x := MyList clone
x dim(3,4)
c := 0
for(i, 0, x size -1,
  for(j, 0, x at(0) size -1, 
 	x set(i, j, c)
 	c = c + 1
  )
)
  	
  	
