#Problem 8
#Find the greatest product of five consecutive digits in the 1000-digit number.

def get_max_product array, n, max=0
  return max if array.length < n
  prod = array.first(n).inject(:*) 
  max = prod if prod > max
  get_max_product(array[1..-1],n,max)
end

def string_to_ints string
  string.split('').collect{|i| i.to_i}
end
