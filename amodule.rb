module FileUtils

 def FileUtils.line_count(filePath)
 	
 	if File.exists?(filePath) 
 		begin
			f = File.open(filePath)
			line_count = 0
			f.each_line do |line|
	  			line_count = line_count + 1
			end
			return line_count
		
		rescue Exception => e
			e.message
			e.backtrace
		
		ensure
				f.close
		end
 	else
 		raise "File does not exists ->#{filePath}"
 	end
			
 end

end