class ExpressionValidator
	def valid_expression?(input)
		stack = []

		input.each_char do |char|
			if char == '(' || char == '[' || char == '{'
				stack.push(char)
			elsif char == ')'
				return false if stack.empty? || stack.pop != '('
			elsif char == ']'
				return false if stack.empty? || stack.pop != '['
			elsif char == '}'
				return false if stack.empty? || stack.pop != '{'
			end
		end

		stack.empty?
	end


	# second approch

	def test_valid?(input)
		stack = []

		input.each_char do |char|
			if ['(', '[', '{'].include?(char)
				stack.push(char)
			elsif [')', ']', '}'].include?(char)
				last_open = stack.pop

				if !last_open || !matching_pair?(last_open, char)
					return false
				end
			end
		end
		stack.empty?
		
	end

	def matching_pair?(open, close)
    	(open == '(' && close == ')') ||   (open == '[' && close == ']') || (open == '{' && close == '}')
  	end
end

valid = ExpressionValidator.new
puts valid.valid_expression?("()")        # o/p: true
puts valid.valid_expression?("()[]{}" )   # o/p: true
puts valid.valid_expression?("(]")         # o/p: false
puts valid.valid_expression?("[]")        # o/p: true

puts valid.test_valid?("()")
