require './problem_11'

describe ProblemEleven do

  before(:each) do
    @foo = ProblemEleven.new
    @nums = @foo.instance_variable_get(:@nums)
  end

  it "should exist" do
    true
  end

  it "nums should be array" do
    @nums.class.should eq(Array)
  end

  it "setup_grid should return array" do
    @foo.setup_grid.should be_kind_of(Array)
  end

  describe "find max prod" do

    it "should return the max product for all rows and columns" do
      grid = @foo.setup_grid
      @foo.find_max_prod(grid).should eq(51267216)
    end

  end

end
