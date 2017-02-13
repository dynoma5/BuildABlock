module Enumerable

def my_each
total = (self.length)-1
for i in(0..total)

	yield(self[i])
	end
end

def my_each_with_index
total = (self.length)-1
for i in (0..total)

	yield(self[i],i)
	end
end
	
def my_select
	total = (self.length)-1
	for i in (0..total)
		unless (yield(self[i]))
		self[i].delete
		end
	end
end	


end
	
test = [1,2,3,4,5]
#test.my_each{|x| puts x}
#test.my_each_with_index{|x,y| puts x,y}
#test.each_with_index{|x,y| puts x,y}
test.my_select do|x| 
 puts x >1
end 
test.select{|x| x>1 }

