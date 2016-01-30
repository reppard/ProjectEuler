require 'spec_helper'

describe "problem six" do
  describe "sum_of_squares" do
    it "should return sum of squares" do
      expect(sum_of_squares(1..3)).to eq(1+4+9)
    end
  end

  describe "square_of_sums" do
    it "should return the square of sums" do
      expect(square_of_sums(1..3)).to eq(36)
    end
  end
end

time = Time.now

puts "Problem 06"
puts "Answer: #{square_of_sums((1..100)) - sum_of_squares((1..100))}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
