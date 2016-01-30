require 'spec_helper'

describe Letter do
  describe "#score" do
    it "should return correct score for a given letter" do
      expect(Letter.score("a")).to eql(1)
    end

    it "should not be case sensitive" do
      expect(Letter.score("A")).to eql(1)
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
      result = Name.score(name, @names.index(name))

      expect(result).to eql(1*(3+15+12+9+14))
    end
  end
end

describe ProblemTwentyTwo do
  before(:each) do
    @problem = ProblemTwentyTwo.new("fixtures/names.txt")
  end

  it "should have a names array" do
    expect(@problem.names).to be_kind_of Array
    expect(@problem.names[937]).to eql("COLIN")
  end

  describe "solve" do
    it "should return the correct score" do
      expect(@problem.solve).to eql(871198282)
    end
  end
end

time = Time.now

problem = ProblemTwentyTwo.new("fixtures/names.txt")
puts "Problem 22"
puts "Answer:  #{problem.solve}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
