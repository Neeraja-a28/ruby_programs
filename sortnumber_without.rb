class SortnumberWithout
  a = [7,9,2,3,0,1,8,6,5]
  puts "#{a}"

  0.upto(a.size-1) do |i|
	(i+1).upto(a.size-1) do |j|
	  if a[i] > a[j]
       a[i],a[j] = a[j],a[i]
	  end
	end
  end
  puts "#{a}"
end