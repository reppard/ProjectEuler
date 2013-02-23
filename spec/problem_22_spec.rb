require './problem_22'

describe Letter do
  describe "#score" do
    it "should return correct score for a given letter" do
      Letter.score("a").should eql(1)
    end

    it "should not be case sensitive" do
      Letter.score("A").should eql(1)
    end
  end
end

describe Name do
  describe "#score" do
    before(:each) do
      @names = ["COLIN","RIVER","VADA","ASHLEY","REPPARD"]
    end

    it "should return correct score for given name" do
      name = @names[0]
      Name.score(name, @names.index(name)).should eql(1*(3+15+12+9+14))
    end
  end
end

describe ProblemTwentyTwo do
  before(:each) do
    @problem = ProblemTwentyTwo.new("names.txt")
  end

  it "should have a names array" do
    @problem.names.should be_kind_of Array
    @problem.names[937].should eql("COLIN")
  end

  describe "solve" do
    it "should return the correct score" do
      @problem.solve.should eql(871198282)
    end
  end
end
