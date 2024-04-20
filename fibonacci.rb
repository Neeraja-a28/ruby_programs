class Fibonacci

	def test_fibonaci(num)
		values = [0,1]

		(2..num).each do |i|
			values[i] = values[i-1]+values[i-2]
		end
		values
	end
end

t = Fibonacci.new
puts t.test_fibonaci(10)