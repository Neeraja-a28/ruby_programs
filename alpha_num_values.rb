class AlphaNumvalues
	def find_alpha_num_values(array)
		alpha_values = []
		num_values = []

		array.each do |item|
			if item.is_a?(String) && item.match?(/[a-zA-z]/)
				alpha_values << item
			elsif item.is_a?(Integer) && item.to_s.match?(/[0-9]/)
				num_values << item
			end
		end
		[alpha_values, num_values]
	end
end
	
array = ["Red", "Green", "Blue", "White", 1, 3, 4, 5, 7]
a = AlphaNumvalues.new
alpha_values, num_values = a.find_alpha_num_values(array)

puts "Alpha Values: #{alpha_values}"
puts "Number Values: #{num_values}"

