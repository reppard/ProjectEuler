# If the numbers 1 to 5 are written out in words: one, two, three, i
# four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were
# written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and
# forty-two) contains 23 letters and 115 (one hundred and fifteen)
# contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

time = Time.now

class Fixnum

  DICTIONARY = ["","one","two","three","four","five","six","seven","eight","nine",
                "ten","eleven","twelve","thirteen","fourteen","fifteen","sixteen",
                "seventeen", "eighteen", "nineteen","twenty","thirty","forty",
                "fifty","sixty","seventy","eighty","ninety"]
  def to_word
    case self
    when 1..9 then ones(self)
    when 10..99 then tens(self)
    when 100..999 then hundreds(self)
    when 1000 then thousands
    end
  end

  def ones(args)
    DICTIONARY[args]
  end

  def teens(args)
    DICTIONARY[args]
  end

  def tens(args)
    if args < 10
      ones(args)
    else
      tenth = args / 10
      ones = args % 10
      if tenth == 1
        teens(args)
      else
      last = ones(ones)
      DICTIONARY[tenth + 18] + last
      end
    end
  end

  def hundreds(args)
    huns = args / 100
    tens = args % 100
    mod = tens == 0 ? "" : "and"
    ones(huns) + "hundred" + mod + tens(tens)
  end

  def thousands
    "onethousand"
  end

end
(1..ARGV[0].to_i).to_a.each{|i| puts i.to_word}
puts (1..ARGV[0].to_i).to_a.collect{ |i| i.to_word.length}.inject(&:+)
puts (Time.now - time).to_s + " seconds"
