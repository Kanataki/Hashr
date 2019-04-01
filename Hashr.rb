#load requirements
require 'active_support/core_ext/hash'
#prompt user
STDOUT.sync = true
puts "Hashr Needs some xmls to convert"
puts "what is your filename"
#get filename from user
$file_name = STDIN.gets.chomp
#get extension of given file name
extension = File.extname($file_name)
#check enterd file extension
if extension == '.xml'
	puts "You have loaded a "+extension+" file"
	def converter
		file_data = File.open($file_name)
		hashr = Hash.from_xml(file_data)
		puts hashr
	end
	puts converter	
else 
	puts "the extension "+extension+" is not a supported format"
end

