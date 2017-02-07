dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring (string, dic)
	list = string.downcase.split()
	result = Hash.new(0)
	dic.each do |word| 
		list.each do |check|
			if (/#{word}/=~ check) != nil
			result[word] = result[word] +1
			end
		end
	end
	print result
end



substring("Howdy partner, sit down! How's it going?", dictionary)	
			
			