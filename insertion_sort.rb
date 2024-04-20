class InsertionSort
	def insertion_sort(array)
		for i in 1...(array.length)
			j = i
			while j > 0
				if array[j-1] > array[j]
					temp = array[j]
					array[j] = array[j-1]
					array[j-1] = temp
				else
					break
				end
				 j = j-1
			end
		end

		return array
    end

    def insertion_sort_another_method(arr)
       is_sorted = true
        while is_sorted
        	is_sorted = false
        	(0...arr.length-1).each do |i|
        		if arr[i] > arr[i+1]
        			arr[i],arr[i+1] = arr[i+1],arr[i]
        			is_sorted = true
        		end
        		
        	end
        end
        arr
    end
end


values = [12,3,8,10,22,1,2,14]
i = InsertionSort.new
puts i.insertion_sort([12,3,8,10,22,1,2,14])

puts i.insertion_sort_another_method(values)

