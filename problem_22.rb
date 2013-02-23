#Problem 22
#Using names.txt (right click and 'Save Link/Target As...'),
#a 46K text file containing over five-thousand first names,
#begin by sorting it into alphabetical order. Then working out
#the alphabetical value for each name, multiply this value by
#its alphabetical position in the list to obtain a name score.

#For example, when the list is sorted into alphabetical order,
#COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th
#name in the list. So, COLIN would obtain a score of 938  53 = 49714.

#What is the total of all the name scores in the file?

class Letter
  ALPHABET = ("a".."z").to_a

  def self.score(letter)
    index_plus_one(letter)
  end

  def self.index_plus_one(letter)
    ALPHABET.index(letter.downcase) + 1
  end
end

class Name
  def self.score(name, index)
    letter_scores = name.each_char.collect{ |letter| Letter.score(letter) }.inject(:+)
    (index + 1) * letter_scores
  end
end

class ProblemTwentyTwo
  attr_reader :names

  def initialize file
    @names = sorted_names(file)
  end

  def sorted_names file
    File.open(file, "r").read.gsub(/\"/,'').split(",").sort
  end

  def solve
    @names.collect{ |name| Name.score(name, @names.index(name)) }.inject(:+)
  end
end

time = Time.now
problem = ProblemTwentyTwo.new("names.txt")
puts "Answer:  #{problem.solve}"
puts "Elapsed: #{Time.now - time} seconds"
