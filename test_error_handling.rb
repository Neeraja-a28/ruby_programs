class TestErrorHandling

	def error_handling(e)
		File.open('error_log.txt', 'a') do |file|
			file.puts e
		end
	end
	
	begin
	 #puts 7/0
	 puts nil + 5
	#rescue ZeroDivisionError => e
     # error_handling("Error: #{e} at #{Time.now}")
    rescue StandardError => e
     error_handling("Error: #{e} at #{Time.now}")
    end  

end
