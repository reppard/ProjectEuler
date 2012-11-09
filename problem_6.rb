#Problem Six
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
squares = 0
naturals = (1..100).to_a
  naturals.each { |i| squares += i**2 }
puts naturals.inject(:+)**2 - squares
