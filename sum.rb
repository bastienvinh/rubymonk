require 'pry'
require 'pry-byebug'

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    # binding.pry
    @array.inject(initial_value) do |sum, number| 
      sum + (block_given? ? yield(number) : number)
    end
  end
end

# puts MyArray.new([1,2,3]).sum
# puts MyArray.new([1,2,3]).sum(10)
# puts MyArray.new([1,2,3]).sum(0) { |n| n ** 2 }
