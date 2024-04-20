class BasicRegix
 string = "searching string all values 10 with integerger of 12 string"

 p string =~ /r/

 p string =~ /alL/i ? "valid string" : "invalid string"

 p string.to_enum(:scan, /\d+/).map { Regexp.last_match} 

 puts (5..1)
end