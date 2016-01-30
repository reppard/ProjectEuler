require 'spec_helper'

describe TriangleTravel do
  before(:each) do
    @string = "3
               7 4
               2 4 6
               8 5 9 3"
  end

  it "should convert string to array within array" do
    expect(TriangleTravel[@string]).to be_kind_of(Array)

    result = TriangleTravel[@string]

    expect(result).to eq([[3],[7,4],[2,4,6],[8,5,9,3]])
  end

  it "should return the correct max total from top to bottom" do
    triangle = TriangleTravel[@string]

    expect(TriangleTravel.find_max(triangle)).to eq(23)
  end

end

time = Time.now
triangle = File.open('fixtures/triangle.txt').read  #Uncomment and comment out
# the variable below to solve Problem 67.

# triangle = "75
#             95 64
#             17 47 82
#             18 35 87 10
#             20 04 82 47 65
#             19 01 23 75 03 34
#             88 02 77 73 07 63 67
#             99 65 04 28 06 16 70 92
#             41 41 26 56 83 40 80 70 33
#             41 48 72 33 47 32 37 16 94 29
#             53 71 44 65 25 43 91 52 97 51 14
#             70 11 33 28 77 73 17 78 39 68 17 57
#             91 71 52 38 17 14 91 43 58 50 27 29 48
#             63 66 04 68 89 53 67 30 73 16 69 87 40 31
#             04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

tri = TriangleTravel[triangle]

puts "Problem 18"
puts "Answer: #{TriangleTravel.find_max(tri)}"
puts "Time: #{Time.now - time}"
puts "--------------------------"
