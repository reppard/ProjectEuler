#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

#Find the largest palindrome made from the product of two 3-digit numbers.


num = 100
high = 0
while num < 1000
(100..999).each { |i|
    string = (i * num).to_s
    if string == string.reverse
	  high = string.to_i if high < string.to_i
    end
  }
num += 1
end
puts high
