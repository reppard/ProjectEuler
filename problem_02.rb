##Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

##1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

##By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.


def sum(array)
	seq = array
	seq.pop
  seq.select{ |i| i if i.even? }.inject(&:+)
end

array = [1,2]

while array.last <= 4000000
	array << array.last(2).inject(&:+)
end

puts sum(array)  #4613732
