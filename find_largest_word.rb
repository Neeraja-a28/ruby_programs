class FindLargestWord
	def method1(string)
		str = string.split(" ")
		largest_word = str.max_by {|word| word.length}
		largest_word
	end
end

input_string = "Hello, welcome to ChatGPT! This is a test string."
largest_word = FindLargestWord.new.method1(input_string)
puts "The largest word in the string is: #{largest_word}"