def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(array)
	if array.empty?
		return 0
	else array.inject() {|total, ind| total+ind}
	end
end

