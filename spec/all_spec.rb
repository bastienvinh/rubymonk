require 'rspec'
require  "#{File.dirname(__FILE__)}/../kaprekar"
require 'pry'
require 'pry-byebug'

RSpec.describe "Rubymonk" do
  describe 'kaprekar' do
    it 'Return true to all the good kaprekar functions' do
      true_values = [9, 45, 297, 4879, 17344, 538461]
      expect(kaprekar?(9)).to be true
      expect(kaprekar?(45)).to be true
      expect(kaprekar?(297)).to be true
      expect(kaprekar?(4879)).to be true
      expect(kaprekar?(17344)).to be true
      expect(kaprekar?(538461)).to be true
    end
  end
end