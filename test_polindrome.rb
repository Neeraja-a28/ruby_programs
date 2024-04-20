class Polindrome

	def find_polindrome(string)
		if string.reverse == string
			puts "#{string} is polindrome"
		else
			puts "#{string} is not polindrome"
		end
	end
end

p = Polindrome.new
puts p.find_polindrome("Number")