#loading text file & counting lines

lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

#counting the characters
total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"
