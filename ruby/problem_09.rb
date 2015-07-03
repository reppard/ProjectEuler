#Project 9
#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.
start = Time.new
a = 1
while a < 501
  (1..501).each{|i|
    b = i
    c = 1000 - (a+b)
    if a**2 + b**2 == c**2
      puts "Answer : " + (a*b*c).to_s
      puts "Elapsed : " + (Time.new - start).to_s + " secs"
    end }
a += 1
end
