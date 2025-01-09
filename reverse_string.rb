class ReverseString
 
 def find_reverse_str(input)
    reverse_str = ""
    length = input.length

    (length-1).downto(0) do |i|
        reverse_str += input[i]
    end

    reverse_str
 end

end

input = "hello new ruby"
r = ReverseString.new
puts r.find_reverse_str(input)  # o/p: ybur wen olleh