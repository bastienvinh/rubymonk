def array_of_fixnums?(array)
  array.each { |el| return false unless el.is_a?(Fixnum) }
  true
end