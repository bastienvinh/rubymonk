def find_frequency(sentence, word)
  sentence.split(' ').inject(0) { |count, word_sentence| count + (word.downcase == word_sentence.downcase ? 1 : 0) }
end