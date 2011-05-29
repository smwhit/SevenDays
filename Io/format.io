funcs := List slotNames sort

funcs foreach(i, x,
				if(i % 5 == 0, write("\n"))
				write(x, "\t\t")
			)
			
