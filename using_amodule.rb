# load all modules from current directory
#$LOAD_PATH << '.'

require "./amodule"

f = File.new("temp.txt","w")
f.write("hello\n")
f.write("world\n")
f.write("bye bye")
f.write("world")
f.close

begin
	count = FileUtils.line_count("temp.txt")
	puts "line count - #{count}"
ensure
	File.delete("temp.txt")
end


