def palindrome?(sentence)
  filtered_sentence = sentence.gsub(' ', '')
  index_second_string = filtered_sentence.length / 2
  end_string = filtered_sentence[-index_second_string, index_second_string]
  filtered_sentence.upcase.start_with?(end_string.reverse.upcase)
end

puts palindrome?('Race fast safe car').class
puts palindrome?('Live not on Evil').class
puts palindrome?('Yreka Bakey').class