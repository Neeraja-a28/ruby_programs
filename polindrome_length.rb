class PolindromeLength

	#  Ruby program that finds palindromes in the given string and filters out those with a length greater than 2:

	def find_polindrome(input)
		polindrome = []

		(0...input.length).each do |i|
			(i+2...input.length).each do |j|
				substring = input[i..j]
				if substring == substring.reverse
					polindrome << substring
				end
			end
		end
		polindrome
	end
end

input = "abbbndabbanl"

result = PolindromeLength.new.find_polindrome(input)

puts "polindromes are : #{result}"