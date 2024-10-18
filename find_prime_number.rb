class FindPrimeNumber

	def is_prime(num)
  		return false if (num < 2)

 		(2...num).each do |n|
   		 return true if num % n == 0
  	   end
       false
    end
end
num = 50

i = FindPrimeNumber.new
puts i.is_prime(num)