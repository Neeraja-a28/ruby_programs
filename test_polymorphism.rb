class TestPolymorphism

	def method1
		puts "calling parent class method1"
	end
end

class ChildPolymorphism < TestPolymorphism

  def method2
  	puts "calling child class method2"
  end

  def method1
  	super
  	puts method2
  	puts "overrinding parent class method1"
  end
end

t = ChildPolymorphism.new
 
 puts t.method1
 #puts t.method2