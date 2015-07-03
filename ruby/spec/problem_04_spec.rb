require './problem_04'

describe "problem four" do
  describe "Integer#palindromic?" do
    it "should return true if palindrom" do
      234432.palindromic?.should be_true
    end

    it "should return false if not palindrom" do
      1234.palindromic?.should be_false
    end
  end
end
