time = Time.new

array = [1,1]
	while array.last.to_s.length < 1000
		sums = array.last(2)
		array << sums[0] + sums[1]
    end
puts "Answer : F" + array.size.to_s
puts "Elapsed : " + (Time.new - time).to_s + " secs"