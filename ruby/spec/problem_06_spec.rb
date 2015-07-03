require './problem_06'

describe "problem six" do
  describe "sum_of_squares" do
    it "should return sum of squares" do
      sum_of_squares((1..3)).should eq(1+4+9)
    end
  end

  describe "square_of_sums" do
    it "should return the square of sums" do
      square_of_sums((1..3)).should eq(36)
    end
  end
end
