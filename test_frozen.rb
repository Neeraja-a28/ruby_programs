class TestFrozen
	def initialize(i,j)
		@apple = i
		@banana = j
	end

	def getApple
      @apple
	end

	def getBanana
	  @banana 
	end

    def setApple=(value)
      @apple = value
    end

    def setBanana=(value)
      @banana = value
    end
end

box = TestFrozen.new(5,10)
b = TestFrozen.allocate
p b

p b.getApple

p box.getApple
p box.getBanana

box.freeze

if (box.frozen? )
	puts "box object is froze"
else
	puts "box is not frozen"
end

box.setApple = 15
box.setBanana = 12

