class FindDuplicateValues
  def find_duplicate_num(array)
		duplicates = {}
		length = array.size

		(0...length).each do |i|
			count = 1
			(i+1...length).each do |j|
				if array[i] == array[j]
					count += 1
				end
			end

			if count > 1 && !duplicates.key?(array[i])
				duplicates[array[i]] = count
			end
		end
		duplicates
	end
	
	
end

array = [3,9,3,7,4,8,2,9,4,8]

p = FindDuplicateValues.new
puts p.find_duplicate_num(50)