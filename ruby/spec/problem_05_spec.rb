require 'spec_helper'

describe "problem five" do
  describe "Integer#evenly_divisible_by?" do
    it "should return true if true for entire collection" do
      result = 14.evenly_divisible_by?([2,7])

      expect(result).to eq true
    end

    it "should return false if not true for entire collection" do
      result =15.evenly_divisible_by?([2,7])

      expect(result).to eq false
    end
  end
end

time = Time.new
n = 20

while !n.evenly_divisible_by?([11,13,14,16,17,18,19,20])
  n += 20
end

puts "Problem 05"
puts "Answer: #{n}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
