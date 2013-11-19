require './lib/prime'

describe "problem seven" do
  describe "is_prime?" do
    it "should return true if prime" do
      is_prime?(3).should be_true
    end

    it "should return false if not prime" do
      is_prime?(4).should be_false
    end
  end
end
