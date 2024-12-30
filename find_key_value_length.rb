class FindKeyValueLength
	def test_key_value_length(input)
		input.keys.map(&:to_s).sort_by(&:length)  # o/p: [abc, 4567, another_key]
	end

	def find_another_key_length(input)
		sorted_keys = input.keys
		n = sorted_keys.length

		for i in 0...(n-1)
			for j in 0...(n-i-1)
				if sorted_keys[j].to_s.length > sorted_keys[j+1].to_s.length
					temp = sorted_keys[j]
					sorted_keys[j] = sorted_keys[j+1]
					sorted_keys[j+1] = temp
				end
			end
		end

		sorted_hash = {}
		sorted_keys.each do |key|
			sorted_hash[key] = input[key]
		end

		sorted_hash
	end
end

input = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }

t = FindKeyValueLength.new
# puts t.test_key_value_length(input)
puts t.find_another_key_length(input)

