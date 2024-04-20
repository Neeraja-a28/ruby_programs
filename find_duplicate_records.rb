class FindDuplicaterecords

	def duplicate_record(array)
		array.group_by(&:itself).transform_values(&:size)
	end
end

i = FindDuplicaterecords.new
puts i.duplicate_record([1,2,8,4,0,34,23,78,2,3,8,0,1,1,2,])