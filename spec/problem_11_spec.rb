require './problem_11'

describe ProblemEleven do

  before(:each) do
    @foo = ProblemEleven.new
    @grid = "11 01 01 01 01 01 01 01
             01 01 01 01 01 01 01 01
             01 01 01 01 01 01 01 01
             01 11 01 31 01 01 01 01
             01 01 01 01 01 01 01 01
             01 01 01 01 01 01 01 01
             01 01 01 01 01 01 01 01
             01 01 01 01 01 01 01 01"
  end

  it "setup_grid should return array" do
    @foo.setup_grid(@grid).should be_kind_of(Array)
  end

  describe "find max prod" do

    it "should return the max product for all rows and columns" do
      grid = @foo.setup_grid(@grid)
      @foo.find_rows_and_cols_max_prod(grid).should eq(11)
      @foo.find_diag_max_prod(grid).should eq(31)
    end

  end

end
