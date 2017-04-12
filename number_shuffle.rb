require 'Benchmark'
require 'pp'

# finally beats the algorithm of rubymonk ><''

def number_shuffle(number)
  res = []
  sample = number.to_s
  sample.chars.combination(sample.length).each { |a| res << a.join.to_i }
  res
end

# Ruby monk solutions

def number_shuffle2(number)
  no_of_combinations = number.to_s.size == 3 ? 6 : 24
  digits = number.to_s.split(//)
  combinations = []
  combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
  combinations.uniq.sort
end


puts Benchmark.measure { number_shuffle(1234567890) }
puts Benchmark.measure { number_shuffle2(1234567890) }