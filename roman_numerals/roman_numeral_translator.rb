class RomanNumeralTranslator
  attr_reader :roman_numerals
  ROMAN_DICTIONARY = { I: 1, 
                       V: 5, 
                       X: 10,
                       L: 50,
                       C: 100,
                       D: 500,
                       M: 1000 }     

  def self.translate(roman_numerals)
    new(roman_numerals).translate
  end

  def initialize(roman_numerals)
    @roman_numerals = roman_numerals
  end

  def translate
    #We need to find the relationship between I and V next
    #to eachother. After we know they are next to eachother,
    #we need to know the order.

    ROMAN_DICTIONARY[roman_numerals]

  end

end


