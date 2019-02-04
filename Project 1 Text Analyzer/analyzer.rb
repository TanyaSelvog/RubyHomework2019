
stopwords = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

#counting the characters
total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"


#counting words
word_count = text.split.length
puts "#{word_count} words"

#counting paragraphs and sentences

paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"


#calculating averages
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

# Make a list of words in the text that aren't stop words,
# count them, and work out the percentage of non-stop words
# against all words
all_words = text.scan(/\w+/)
good_words = all_words.reject{ |word| stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

#summarizing

#split text into an array of sentences
sentences = text.gsub(/\s+/,' ').strip.split(/\.|\?|\!/)

#sort sentences by length (as we want to ignore the shortest third and longest third)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }


one_third = sentences_sorted.length/ 3
ideal_sentences = sentences_sorted.slice(one_third, one_third +1)

ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }



# Give the analysis back to the user
puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"