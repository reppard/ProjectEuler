#2520 is the smallest number that can be divided by
#each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly
#divisible by all of the numbers from 1 to 20?

class Integer
  def evenly_divisible_by? collection
    !collection.collect{|i| self % i == 0}.include?(false)
  end
end
