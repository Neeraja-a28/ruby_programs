class TestMethhodOverloading
  def self.sum(a,b)
    puts a+b
  end
                  
  def self.sum(a,b,c)
    puts a+b+c
  end

end

t = TestMethhodOverloading.sum(3,4,1)