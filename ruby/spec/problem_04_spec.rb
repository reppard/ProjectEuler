require 'spec_helper'

describe "problem four" do
  describe "Integer#palindromic?" do
    it "should return true if palindrom" do
      expect(234432.palindromic?).to eq true
    end

    it "should return false if not palindrom" do
      expect(1234.palindromic?).to eq false
    end
  end
end

time = Time.now
high = 0

(100..999).each{ |num|
  (100..999).each { |i|
    product = i * num
    if product.palindromic?
	    high = product if high < product
    end
  }
}

puts "Problem 04"
puts "Answer: #{high}" # 906609
puts "Time: #{Time.now - time}"
puts "--------------------------"
