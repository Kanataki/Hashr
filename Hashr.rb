require 'active_support/core_ext/hash'
require 'rspec'
STDOUT.sync = true
puts "Hashr Needs some xmls to convert"
puts "what is your filename"
file_name = STDIN.gets.chomp
puts file_name
extension = File.extname(file_name)
if extension == '.xml'
	puts "You have loaded a "+extension+" file"
else 
	puts "the extension "+extension+" is not a supported format"
end

file_data = File.open(file_name)
puts file_data
hashr = Hash.from_xml(file_data)
puts hashr

#def macbeth_counter

	#file_data = File.open(file)
	#hash = Hash.from_xml(file_data)
	#counter_hash = Hash.new{ |p, g| p[g] = 0}

	#hash['PLAY']['ACT'].each do |g, v|
		#g['SCENE'].each do |g2, v2|
			#g2['SPEECH'].each do |g3, v3|
				#counter_hash[g3['SPEAKER']] += Array(g3['LINE']).count
			#end
		#end
	#end
	#counter_hash
#end

#puts macbeth_counter


#puts "--------------------------------------------------------------------"
#
#puts "Enter name of file: "
#file = gets.chomp
#puts file



