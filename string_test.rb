class StringTest
  def divide_words(input_string)
    words = input_string.scan(/[A-Z][a-z]*/)
    words
  end
end

input_string = "Helloworldhowareyou?"
result = StringTest.new.divide_words(input_string)

puts "Words in '#{input_string}':"
puts result
