class FindReverseStringWord

	# with builtin methods
	def find_reverse_word(input)
		input.split.map{|word| word.reverse}.join(' ')
	end


	# with out inbuiltin methods

	def find_reverse_word_by_word(input)
		words = input.split(" ")

		reversed_words = words.map do |word|
			reverse_word = ""
			word.length.times do |i|
				reverse_word = word[i] + reverse_word
			end

			reverse_word
		end

		reversed_string = reversed_words.join(" ")
		return reversed_string
	end
end

input = "New Ruby On Rails"
f = FindReverseStringWord.new
# puts f.find_reverse_word(input) # O/p: weN ybuR nO sliaR

# puts f.find_reverse_word_by_word(input)  # O/p: weN ybuR nO sliaR