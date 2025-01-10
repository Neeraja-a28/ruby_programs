class RemoveZeroArray

	# with built method

	def remove_zero(array)
		array.reject! { |num| num == 0}
	end


	# without inbuilt method

	def remove_zero_in_array(array)
		remove_arr = []
		(1...array.length).each do |i|
			if array[i] != 0
				remove_arr << i
			end
		end
		remove_arr
	end
end

array = [3,9,0,2,8,3,0,1,74,0,12,0,7]

r = RemoveZeroArray.new
# puts r.remove_zero_in_array(array)
puts r.remove_zero(array)
