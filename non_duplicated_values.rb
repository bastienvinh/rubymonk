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