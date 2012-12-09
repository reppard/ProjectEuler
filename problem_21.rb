# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which
# divide evenly into n).

# If d(a) = b and d(b) = a, where a  b, then a and b are an amicable pair and each
# of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110;
# therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

nums = (1..10000).to_a

def sum_of_propers(arg)
  if !arg.nil?
    (1..arg).select{|i| i if arg % i == 0 && i != arg}.inject(:+)
  end
end

x = nums.select{ |i| i if i == sum_of_propers(sum_of_propers(i)) && i < 10000 }
puts x
puts x.inject(:+)
