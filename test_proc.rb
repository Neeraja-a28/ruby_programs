class TestProc
	full_name = Proc.new{ |first_name, last_name| first_name + " "+ last_name }
	p full_name.call("Neeraja", "A","h")

	addition = ->(a,b) {a*b}

	p addition.call(2,3)

	def procs_method
		puts "before proc method"
		my_proc = Proc.new do 
			puts "inside proc method"
			return
		end
		my_proc.call
		puts "after proc method"

	end

	def lambda_method
		puts "before lambda method"

		my_lambda = lambda  do
			puts "inside lambda method"
			return
		end

		my_lambda.call
		puts "after lamda method"
	end
end

t = TestProc.new
puts t.procs_method
puts t.lambda_method