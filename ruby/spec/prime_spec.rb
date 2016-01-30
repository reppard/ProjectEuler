require 'spec_helper'

describe "problem seven" do
  describe "is_prime?" do
    it "should return true if prime" do
      expect(is_prime?(3)).to eq true
    end

    it "should return false if not prime" do
      expect(is_prime?(6)).to eq false
    end
  end
end
