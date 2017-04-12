## !!!!! WTF, why rubymonk accept this algorithm when it is false : https://rosettacode.org/wiki/Kaprekar_numbers or https://cs.uwaterloo.ca/journals/JIS/VOL3/iann2a.html

# def kaprekar?(k)
#   square_k = k ** 2
#   s_square_k = square_k.to_s
#   half_index = (s_square_k.length / 2).to_i
#   (s_square_k[0, half_index].to_i + s_square_k[half_index, s_square_k.length].to_i) == k


def kaprekar?(k)
  no_of_digits = k.to_s.size
  square = (k ** 2).to_s
  
  second_half = square[-no_of_digits..-1]
  first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
  
  k == first_half.to_i + second_half.to_i
end