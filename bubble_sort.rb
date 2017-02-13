def bubble_sort(array)
	length = array.length
	total = length - 2
	num1 = 0
	num2 = 0
	length.times do
		for i in (0..total) 
			num1 = array[i]
			num2 = array[i+1]
			if num1 > num2
				array[i] = num2
				array[i+1] = num1
			end	
			
		end
	end
	print array
end


def bubble_sort_by(array)
	total = array.length
	newone = ""
	newtwo = ""
	iteration = total -2
	total.times do
		for i in (0..iteration)
			newone = array[i]
			newtwo = array[i+1]
			if yield(array[i], array[i+1]) > 0
				array[i] = newtwo
				array[i+1] = newone
			end
		end
	end
	print array
end
	



bubble_sort([4,3,78,2,0,2])	
bubble_sort_by(["hi", "hello", "hey"]) do |left,right|
left.length-right.length
end
