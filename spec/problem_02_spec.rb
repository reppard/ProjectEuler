require './problem_02.rb'

describe "#get_seq" do
  it "should get the fibonacci sequence upto n value" do
    get_seq(8).should eq([1,2,3,5,8])
  end
end

describe "#add_even" do
  it "should add all even numbers in a collection" do
    add_even([2,2,3,1,4]).should eq(8)
  end
end
