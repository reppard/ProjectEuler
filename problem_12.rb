
time = Time.new
def get_triangle_numbers(max)
    nums = 0
    array = []
		(1..max).each {|i| nums += i
		  array << nums }
	array
end

def get_even_divisors(even)
	collect = []
	range = []
	(1..Math.sqrt(even)).each {|i| range << i}
	range.each{ |i| collect << i if (even%i == 0)}
	collect.size
end

def get_odd_divisors(odd)
	collect = []
	range = []
	(1..Math.sqrt(odd)).each { |i| range << i if i.odd?}
	range.each { |i| collect << i if (odd%i == 0)}
	collect.size
end


answer = 0
tris = get_triangle_numbers(300000)
num = 0

tris.each { |i|
	divisors = (i.even? ? get_even_divisors(i) : get_odd_divisors(i))
    num,answer = i,divisors if divisors > answer
    break if answer > 250
}

puts "Factors : " + (answer * 2).to_s
puts "Triangle Number : " + num.to_s
puts "Elapsed : " + (Time.new - time).to_s + " secs"