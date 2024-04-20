class RepeatedNumbers
  a = [1,1,1,2,2,3,3,4]
  output = a.uniq.map { |e| [e, a.count(e)]}.to_h
   puts "#{output}"

  a = "aabbdddfff"
  count_hash = {}
   a.each_char do |lt|
    if count_hash.has_key?(lt)
        count_hash[lt] += 1
    else
        count_hash[lt] = 1
    end
  end
  puts count_hash

end