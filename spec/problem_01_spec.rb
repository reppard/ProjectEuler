require './problem_01'

describe ProblemOne do
  describe "#multiple_of_three?" do
    it "should return the correct true of false value" do
      p1 = ProblemOne.new 1

      p1.multiple_of_three?(4).should be_false
      p1.multiple_of_three?(6).should be_true
    end
  end

  describe "#multiple_of_five?" do
    it "should return the correct true of false value" do
      p1 = ProblemOne.new 1

      p1.multiple_of_five?(4).should be_false
      p1.multiple_of_five?(10).should be_true
    end
  end

  describe "#collect_multiples" do
    it "should collect all mutiples of 3 and 5 from max" do
      p1 = ProblemOne.new 10

      p1.collect_multiples.should eq([3,5,6,9,10])
    end
  end

  describe "#sum" do
    it "should add mutiples of 3 and 5 from max" do
      p1 = ProblemOne.new 10

      p1.sum.should eq(33)
    end
  end
end
