class TestOops
	def initialize(w,h)
		@width = w
		 @height = h
		 #  puts "checking width value #{@width}"
		 #  puts "checking width value #{@height}"
	end
	
	def method1
		puts "calling method1..."
	end
	puts "invoked initialize/method1  method"
    
    def print_width
    	@width
    end

    def print_heigth
    	 @height
    end

    def setWidth=(value)
      @width = value
    end
    def setHeight=(value)
      @height = value
    end
end

t = TestOops.new(10,5)
t.method1

puts t.print_heigth
puts t.print_width

puts t.setHeight = 20