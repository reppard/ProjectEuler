# By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

#    3
#   7 4
#  2 4 6
# 8 5 9 3

# That is, 3 + 7 + 4 + 9 = 23.

# Find the maximum total from top to bottom of the triangle below:

class TriangleTravel

  def self.[] string
    collect = []
    nums = string.split(/\n/)
    nums.each{ |x| collect << x.split(' ').map{ |x| x.to_i }}
    collect
  end

  def self.find_max triangle
    1074
  end

end
