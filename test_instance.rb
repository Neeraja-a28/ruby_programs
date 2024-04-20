class TestInstance

	def initialize
		puts "invoking initialize method..."
	end

   private
	def instance_method
       puts "calling instance method!"
	end
    private 
	def self.method2
		puts "calling class level methods..."
	end
end

i = TestInstance.new.instance_eval('instance_method')
 p i
j = TestInstance.instance_eval('method2')
  p j


# thiscode we will get an error as protected method `printArea' called for #<Box:0x000002b773b438e0 @width=10, @heigth=5> (NoMethodError)
class Box < TestInstance

  	def initialize(w,h)
      @width = w
      @heigth = h
    end
     
     def getArea
     	getWidth() * getHeigth
     end

    def getWidth
    	@width
    end
    def getHeigth
    	@heigth
    end

    private :getWidth, :getHeigth

    def printArea
    	@area = getWidth() * getHeigth()
    	puts "box area is :#{@area}"
    end

    protected :printArea

end

b = Box.new(10,5)
 
 p b.getArea
 p b.printArea