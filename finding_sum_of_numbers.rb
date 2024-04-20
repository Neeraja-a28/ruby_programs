class FindingSumOfNumbers

  def find_numbers_with_sum(numbers, target_sum)
     numbers.each do |num1|
       numbers.each do |num2|
         return [num1, num2] if num1 + num2 == target_sum
       end
     end
     nil # Return nil if no pair is found
  end

 # target_sum = 77
 # numbers = (1..100).to_a

  result = find_numbers_with_sum(numbers, target_sum)

  if result
    puts "The two numbers whose sum is #{target_sum} are: #{result[0]} and #{result[1]}"
  else
    puts "No two numbers found whose sum is #{target_sum}"
  end

end

test = FindingSumOfNumbers.new((1..100).to_a, 77)