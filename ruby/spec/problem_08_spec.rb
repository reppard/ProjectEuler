require './problem_08'

describe "Problem Eight" do
  describe "get_max_product" do
    it "should get max product for specified sub string length" do
      array = [1,2,3,4,5,6,7,8]
      get_max_product(array,2).should eq(56)
    end
  end
end
