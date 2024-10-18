class FindPrimeNumberWithout
	def find_prime_number(num)
		primes = []

		(2..num).each do |i|
			is_prime = true
			(2...i).each do |j|
				if i%j == 0
					is_prime = false
					break
				end
			end
			primes << i if is_prime
		end
		primes
	end
end

f = FindPrimeNumberWithout.new
puts f.find_prime_number(50)
