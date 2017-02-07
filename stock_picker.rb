
def stock_picker (array)
	optimize = false
	list = Hash.new()
	
	total = array.length
	0.upto(total-1) do |i|
		check = array[i]
		k = i+1
		while(k <= total-1) do
			difference = check - array [k]
			list.store(difference, [i, k])
			k = k+1
		end
	end
profit = list.keys
profit.sort!
max = profit[0]
print list[max]
end	
			
		
	
stock_picker([2332,223,339,429,215,118,226,331,340])	