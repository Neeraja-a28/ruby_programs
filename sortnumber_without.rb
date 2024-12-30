class SortnumberWithout

  def sort_values(input)
    0.upto(input.size-1) do |i|
	   (i+1).upto(input.size-1) do |j|
	     if input[i] > input[j]
          input[i],input[j] = input[j],input[i]
	     end
	   end
    end
    puts "#{a}"
  end
end

input = [7,9,2,3,0,1,8,6,5]

s = SortnumberWithout.new
s.sort_values(input)