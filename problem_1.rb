##If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

##Find the sum of all the multiples of 3 or 5 below 1000.

def sum(n)
	sum = 0
	n.each { |i|
		sum += i }
	sum
end


nums = Array.new
(1..999).each { |items|
	nums << items if (items % 3) == 0 || (items % 5) == 0 }

puts sum(nums)
