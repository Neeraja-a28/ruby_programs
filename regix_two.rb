class RegixTwo
	def test_regix(input)
		str = ""
		num_count = 0
        spcl_count = 0

        input.each_char do |value|
        	if value.match?(/[a-z]/i)
        		str = str + value
        	elsif value.match?(/[0-9]/)
        		num_count = num_count + 1
        	else
        		spcl_count = spcl_count + 1
        	end
        			
        end

     
  	  puts str.empty? ? "No letters found" : str.downcase
 	  puts "Special characters #{spcl_count}"
 	  puts "Numbers #{num_count}"

	end
end

input = 'h,e,4,5,6!ll23-2o'
test = RegixTwo.new
test.test_regix(input)