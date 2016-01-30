#In the 20x20 grid below, four numbers along a diagonal line have been marked in red.
#The product of these numbers is 26  63  78  14 = 1788696.

#What is the greatest product of four adjacent numbers in any direction
#(up, down, left, right, or diagonally) in the 20x20 grid?

class Integer
  def sqrt
    (1..self).select{|n|n*n == self}.first
  end
end

class ProblemEleven

  def setup_grid string
    nums = string.gsub(/\n/," ").split(" ").map{|i| i.to_i}
    side_size = nums.size.sqrt
    nums.each_slice(side_size).to_a
  end

  def find_rows_and_cols_max_prod grid
    prods = []
    max = grid.size - 1
    (0..max).each{ |x|
      column = grid.collect{|c| c[x] }
      row = grid[x][0..max]
      while row.length >= 4
        prods << row.first(4).inject(&:*)
        prods << column.first(4).inject(&:*)
        column.shift
        row.shift
      end
    }
    prods.max
  end

  def find_diag_max_prod grid
    prods = []
    max = grid.size - 4
    (0..max).each{ |x|
      (0..max).each{ |y|
        prods << [grid[y][x+3],grid[y+1][x+2], #left diags
                  grid[y+2][x+1],grid[y+3][x]].inject(&:*)

        prods << [grid[y][x],grid[y+1][x+1],  #right diags
                  grid[y+2][x+2],grid[y+3][x+3]].inject(&:*)
      }
    }
    prods.max
  end

end
