require 'benchmark'

def non_duplicated_values(values)
  res = []
  els = values.sort
  # els[-1] = 'something' puts an unknowm value to be sure
  (0...values.length).each do |i|
    # binding.pry
    res.push(els[i]) if els[i] != els[i + 1] && els[i] != els[i -1]
  end
  res
end


def non_duplicated_values2(values)
  values.find_all { |x| values.count(x) == 1 }
end


def generate_rand_tab
  res = []
  (0..10000000).each { |i| res[i] = rand(1000).to_i }
  res
end

res = generate_rand_tab
puts Benchmark.measure { non_duplicated_values(res) }
puts Benchmark.measure { non_duplicated_values2(res) }
