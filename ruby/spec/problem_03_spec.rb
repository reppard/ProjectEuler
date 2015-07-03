require './problem_03'

describe Integer do
  describe "#prime_factor_of?" do
    it "should return correct value" do
      2.prime_factor_of?(10).should be_true
      3.prime_factor_of?(10).should be_false
    end
  end
end
