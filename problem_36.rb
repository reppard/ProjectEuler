time = Time.now

num = 1
sum = 0

while num < 1000000
  base10, base2 = num.to_s, num.to_s(2)
  if base10 == base10.reverse
    if base2 == base2.reverse
      sum += num
    end
  end
  num += 1
end

puts "Problem 36"
puts "Answer: #{sum}"
puts "Time:   #{Time.now - time}"
