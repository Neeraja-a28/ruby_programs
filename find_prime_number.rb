class FindPrimeNumber

	def is_prime(num)
  		return false if (num < 2)

 		(2..(num - 1)).each do |n|
   		 return false if num % n == 0
  	   end
       true
    end
end
num = 50

i = FindPrimeNumber.new
puts i.is_prime(num)