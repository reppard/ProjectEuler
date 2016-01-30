require 'spec_helper'

describe "#get_seq" do
  it "should get the fibonacci sequence upto n value" do
    expect(get_seq(8)).to eq([1,2,3,5,8])
  end

  it "should not return last sequence value larger than argument given" do
    expect(get_seq(10)).to eq([1,2,3,5,8])
  end
end

describe "#add_even" do
  it "should add all even numbers in a collection" do
    expect(add_even([2,2,3,1,4])).to eq(8)
  end
end

time = Time.now

puts "Problem 02"
puts "Answer: #{add_even(get_seq(4000000))}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
