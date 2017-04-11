def random_select(array, n)
  result = []
  n.times do |i|
    number = rand(array.length).to_i
    result << array[number]
  end
  result
end