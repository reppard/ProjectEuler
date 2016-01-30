require 'spec_helper'

describe Integer do
  describe "#prime_factor_of?" do
    it "should return correct value" do
      expect(2.prime_factor_of?(10)).to eq true
      expect(3.prime_factor_of?(10)).to eq false
    end
  end
end

time = Time.now

largest = 0
n = 600851475143
(1..Math.sqrt(n)).each do |i|
    if i.prime_factor_of?(n)
      n /= i
      largest = i
    end
end

puts "Problem 03"
puts "Answer: #{largest}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
