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
  describe "#parse_file" do
    it "should open a file of names and create an array of names" do
      names = ProblemTwentyTwo.parse_file("names.txt")

      names.should be_kind_of Array
      names[0].should be_kind_of String
    end
  end
end
