module Enumerable

def my_each
for i in self
	yield(i)
	end
end

def my_each_with_index
index = 0
for i in self
	yield(i,index)
	index += 1
	end
end
	
def my_select
	copy = self.dup
	for i in self
	if copy.class == "Array"	
		copy.delete(i) unless yield i
	else
		copy.delete(i[0]) unless yield(i[0],i[1])
		 end
	end
	return copy
end	

def my_all?
check = true
	for i in self
	
	if self.class == Array
		if yield(i) == false
			check = false
			break
		end
	else
		if yield(i[0],i[1]) == false
			check = false
			break
		end	
	end
	end	
	return check
end	

def my_any?
check = false
	for i in self
	
	if self.class == Array
		if yield(i)
			check = true
			break
		end
	else
		if yield(i[0],i[1])
			check = true
			break
		end
	end	
	end
return check	
end

def my_none?
check = true
	for i in self
		if self.class == Array
			if yield(i)
			check = false
			break
			end
		else
			if yield(i[0],i[1])
				check = false
				break
			end
		end	
	end
return check	
end

def my_count
count = 0
	for i in self
		if yield(i)
			count += 1
		end
	end
return count
end	

def my_map
 new = []
 for i in self
	result = yield(i)
	new.push(result)
end
return new
end
	
def my_inject(result = 0, sym)
	
	for i in self
		if sym == nil
			result = yield(result,i)
		else
			result = i.send(sym,result)
		end	
			
	end
return result	
end
  
 
end
 def multiply_els(array)
	result = array.my_inject(:*)
	return result
end	
#test = [1,2,3,4,5]
test = {1=> 'a', 2=> 'b', 3=>'c',4=>'d'}

dummy = (5..10).my_inject(:+) 
puts dummy
 print multiply_els([2,4,5])


