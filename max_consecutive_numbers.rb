class MaxConsecutiveNumbers

	def find_number(array)
	  max_count = 0
  	  current_count = 0

  	  array.each do |num|
   		 if num == 1
      		current_count += 1
     		max_count = current_count if current_count > max_count
   		 else
      		current_count = 0
    	 end
  	  end

 	 max_count
	end
end

array = [1, 1, 0, 1, 1, 1, 0, 1, 1]
max_ones_count = MaxConsecutiveNumbers.new.find_number(array)
puts "Max consecutive ones count: #{max_ones_count}"