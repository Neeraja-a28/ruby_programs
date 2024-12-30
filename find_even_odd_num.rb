class FindEvenOddNum
   def find_even_num(array)
	 even_num = []
	 odd_num = []
	  array.each do |i|
       if i % 2 == 0
     	 even_num << i
       else
     	odd_num << i
       end
	end
	even_num.count
 end
end


array = [3,4,5,6,7,8]
t = FindEvenOddNum.new
t.find_even_num(array)