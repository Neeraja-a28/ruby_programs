class TestSortValues
  def sort_values(input)
    keys = input.keys
    (0...keys.length).each do |i|
      (0...(keys.length - i - 1)).each do |j|
        if keys[j].to_s.length > keys[j + 1].to_s.length
          keys[j], keys[j + 1] = keys[j + 1], keys[j]
        end
      end
    end

    sorted_hash = {}
    keys.each { |key| sorted_hash[key] = input[key] }
    puts sorted_hash
  end

  def find_another_sort(input)
    input.keys.map(&:to_s).sort_by(&:length)
  end
end

input = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }

t = TestSortValues.new
output = t.sort_values(input)

puts t.find_another_sort(input)

puts output  # {:abc=>"hello", 4567=>"third", "another_key"=>123}
