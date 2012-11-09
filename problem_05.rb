#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
 start = Time.new
 range = [11,13,14,16,17,18,19,20]
 array = []
 num = 20
 loop do
 range.each { |i|
     array << i if ((num % i) == 0)
     break if array == range }
     break if array == range
       num +=20
       array = []
   end
 finish = Time.new
 puts "Smallest positive number : " + num.to_s
 puts "Total Time : " + (finish - start).to_s + " seconds"

