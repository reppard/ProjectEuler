require './problem_19'

describe ProblemNineteen do

end

describe Years do
  before(:each) do
    @years = Years.new(1900..1904)
  end

    it "should initialize with range" do
      @years.all.should eq([1900,1901,1902,1903,1904])
    end

    it "should test for leap year" do
      @years.leap_year?(1900).should be_false
      @years.leap_year?(1904).should be_true
    end
end

describe Months do

end
