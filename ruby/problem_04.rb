#A palindromic number reads the same both ways.
#The largest palindrome made from the product of
#two 2-digit numbers is 9009 = 91 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
time = Time.now

class Integer
  def palindromic?
    self.to_s == self.to_s.reverse
  end
end

high = 0

(100..999).each{ |num|
  (100..999).each { |i|
    product = i * num
    if product.palindromic?
	    high = product if high < product
    end
  }
}

puts "Problem 04"
puts "Answer: #{high}" # 906609
puts "Time: #{Time.now - time}"
puts "--------------------------"
