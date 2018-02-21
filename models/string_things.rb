class StringThings

  ALPHABET = {
    "a" => 2,
    "b" => 3,
    "c" => 5,
    "d" => 7,
    "e" => 11,
    "f" => 13,
    "g" => 17,
    "h" => 19,
    "i" => 23,
    "j" => 29,
    "k" => 31,
    "l" => 37,
    "m" => 41,
    "n" => 43,
    "o" => 47,
    "p" => 53,
    "q" => 59,
    "r" => 61,
    "s" => 67,
    "t" => 71,
    "u" => 73,
    "v" => 79,
    "w" => 83,
    "x" => 89,
    "y" => 97,
    "z" => 101
  }

  def self.is_it?(condition1, condition2)
    if condition1 == condition2
      is_it = 'is'
    else is_it = 'is not'
    end
  end

  def self.same?(string1, string2)
    is_it = StringThings.is_it?(string1.downcase, string2.downcase)
    "#{string1} #{is_it} the same as #{string2}"
  end

  def self.palindrome?(string)
    is_it = StringThings.is_it?(string.downcase, string.downcase.reverse)
    "#{string} #{is_it} a palindrome"
  end

  def self.isogram?(string)
    result = string.split("").uniq
    result.join == string
    is_it = StringThings.is_it?(string.split("").uniq.join, string)
    "#{string} #{is_it} an isogram"
  end

  def self.anagram?(string1, string2)
    total1 = string1.split("").reduce(1) {|sum, letter| sum * ALPHABET[letter]}
    total2 = string2.split("").reduce(1) {|sum, letter| sum * ALPHABET[letter]}
    is_it = StringThings.is_it?(total1, total2)
    "#{string1} #{is_it} an anagram of #{string2}"
  end
end
