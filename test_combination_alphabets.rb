class TestCombinationAlphabets
	def generating_combinations(n)
		alphabets = ('a'..'e').to_a
        
        current_combination = Array.new(n, 0)
        puts current_combination

        while true
        	puts current_combination.map{|index| alphabets[index]}.join

        	position = n-1
        	while position >= 0
        		current_combination[position] += 1
        		if current_combination[position] < alphabets.size
        			break
        		else
        			current_combination[position] = 0
        			position -= 1
        		end
        	end

        	break if position < 0
        end

	end

   t = TestCombinationAlphabets.new
   t.generating_combinations(2)
end

# Write a program which takes in an integer input(assume it is >=2) and does the following, 

# if the input is 1, it prints 'a', 'b', ..... 'z'
# if the input is 2 it prints 'aa', 'ab', ..... 'zz'
# if it is 3, it prints 'aaa','aab',.....'zzz'

