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
    nums.each{ |x| collect << x.split(' ').map{ |z| z.to_i }}
    collect
  end

  def self.find_max triangle
    @triangle = triangle
    while @triangle.length > 1
      base = Hash[@triangle.pop.map.with_index{|index,key|[key,index]}]
      rbase = Hash[@triangle.pop.map.with_index{|index,key|[key,index]}]
      new_base = rbase.map{|i,k| k + base[i] > k + base[i+1] ? k + base[i] : k + base[i+1]}
      @triangle.push(new_base)
    end
    @triangle.flatten.max
  end

end
