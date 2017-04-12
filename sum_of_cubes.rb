def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, number|  sum + number ** 3 }
end