require 'spec_helper'

describe ProblemOne do
  describe "#multiple_of_three?" do
    it "should return the correct true of false value" do
      p1 = ProblemOne.new 1

      expect(p1.multiple_of_three?(4)).to eq false
      expect(p1.multiple_of_three?(6)).to eq true
    end
  end

  describe "#multiple_of_five?" do
    it "should return the correct true of false value" do
      p1 = ProblemOne.new 1

      expect(p1.multiple_of_five?(4)).to eq false
      expect(p1.multiple_of_five?(10)).to eq true
    end
  end

  describe "#collect_multiples" do
    it "should collect all mutiples of 3 and 5 from max" do
      p1 = ProblemOne.new 10

      expect(p1.collect_multiples).to eq([3,5,6,9,10])
    end
  end

  describe "#sum" do
    it "should add mutiples of 3 and 5 from max" do
      p1 = ProblemOne.new 10

      expect(p1.sum).to eq(33)
    end
  end
end
