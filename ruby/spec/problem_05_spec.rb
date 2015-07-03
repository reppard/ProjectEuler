require './problem_05'

describe "problem five" do
  describe "Integer#evenly_divisible_by?" do
    it "should return true if true for entire collection" do
      14.evenly_divisible_by?([2,7]).should be_true
    end

    it "should return false if not true for entire collection" do
      15.evenly_divisible_by?([2,7]).should be_false
    end
  end
end
