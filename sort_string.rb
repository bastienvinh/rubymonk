require 'pp'
require 'pry'
require 'pry-byebug'

def sort_string(string)
  string.split(' ').sort { |x, y| x.length <=> y.length }.join(" ")
end


