sumArray:= method(l, 
sum := 0
for(i, 0, l size -1, 
  for(j, 0, l at(i) size -1,   
	sum = sum + l at(i) at(j)
  )
)
return sum
)