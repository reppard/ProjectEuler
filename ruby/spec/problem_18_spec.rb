require './problem_18'

describe TriangleTravel do
  before(:each) do
    @string = "3
               7 4
               2 4 6
               8 5 9 3"
  end

  it "should convert string to array within array" do
    TriangleTravel[@string].should be_kind_of(Array)
    TriangleTravel[@string].should eq([[3],[7,4],[2,4,6],[8,5,9,3]])
  end

  it "should return the correct max total from top to bottom" do
    triangle = TriangleTravel[@string]
    TriangleTravel.find_max(triangle).should eq(23)
  end

end
