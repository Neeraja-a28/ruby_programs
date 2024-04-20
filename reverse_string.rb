class ReverseString
 
 a = "abcdef"
  puts a.reverse

  puts a.chars.reduce{|x,y| y+x}

  b = a.length - 1
   while b >= 0
    puts a[b]
    b = b-1    
   end

end