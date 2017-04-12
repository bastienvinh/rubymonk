def number_shuffle(number)
  sample = number.to_s.split('')
  sample.permutation(sample.length).to_a.collect { |a| a.join('').to_i }.sort
end