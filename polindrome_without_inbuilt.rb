class PolindromeWithoutInbuilt
  def is_palindrome(str)
  # Convert the string to lowercase for case-insensitive comparison
  str = str.downcase

  # Initialize variables for start and end indices of the string
  start_index = 0
  end_index = str.length - 1

  # Loop until the start index is less than the end index
  while start_index < end_index
    # Check if characters at start and end indices are not alphanumeric
    if !str[start_index].match?(/[a-z0-9]/)
      # If not, move the start index to the right
      start_index += 1
    elsif !str[end_index].match?(/[a-z0-9]/)
      # If not, move the end index to the left
      end_index -= 1
    else
      # Compare characters at start and end indices
      if str[start_index] != str[end_index]
        return false
      end
      # Move start index to the right and end index to the left for next iteration
      start_index += 1
      end_index -= 1
    end
  end

  # If the loop completes without returning false, the string is a palindrome
  return true
end
end

p = PolindromeWithoutInbuilt.new 

# Test the function
puts p.is_palindrome("A man, a plan, a canal, Panama")  # Output: true
puts p.is_palindrome("hello world")                     # Output: false
	



